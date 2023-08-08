<?php 
	$su_kien = $action->getList('product', '', '', 'product_id', 'desc', $trang, '10', $_GET['page'], $_GET['page']);
?>
<style>

</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>

<div class="container page-su-kien">
	<?php 
	foreach ($su_kien['data'] as $item) { 
		$noi = $action->getList('noi_su_kien', 'product_id', $item['product_id'], 'id', 'asc', '', '', '');
		$noi_count = count($noi);
		$su_kien_lang = $action->getDetail_New('product_languages', array('product_id', 'languages_code'), array($item['product_id'], $lang), 'is' );
	?>
	<div class="row box">
		<div class="col-md-2">
			<div class="date-event">
	             <div class="event-time">
	                <span class="event-time-date">
	                    <?= date('d', strtotime($item['product_created_date'])) ?>                        
	                </span>
	                <span class="event-time-month">
	                    Th<?= date('m, Y', strtotime($item['product_created_date'])) ?>                        
	                </span>
	            </div>
	        </div>
		</div>
		<div class="col-md-10">
			<div class="title-event">
                <a href="/<?= $su_kien_lang['friendly_url'] ?>"><?= $su_kien_lang['lang_product_name'] ?></a> 
            </div>
			<div class="row">
				<div class="col-md-8">
					<?= $su_kien_lang['lang_product_des'] ?>
				</div>
				<div class="col-md-4">
					<div>
						<?php foreach ($noi as $item_noi) { ?>
							<button type="button" onclick="chon_noi(<?= $item['product_id'] ?>, <?= $item_noi['id'] ?>)"><?= $item_noi['name'] ?></button>
						<?php } ?>
					</div>
					<div id="dia-diem-<?= $item['product_id'] ?>" class="hp_fix04">
						<?php if ($noi_count != 0) { ?>
						<p><i class="fa fa-clock-o"></i> <?= $noi[0]['thoi_gian'] ?></p>
						<p><i class="fa fa-home"></i> <?= $noi[0]['van_phong'] ?></p>
						<p><i class="fa fa-map-marker"></i> <?= $noi[0]['dia_chi'] ?></p>
						<?php } ?>
					</div>
					<a href="/<?= $su_kien_lang['friendly_url'] ?>" title="" class="event-more">Xem chi tiết</a>
				</div>
			</div>
		</div>
	</div>
	<?php } ?>

	<div class="text-center">
		<?= $su_kien['paging'] ?>
	</div>
</div>

<script>
	function chon_noi (product_id, noi_id) {
		const xhttp = new XMLHttpRequest();
		  xhttp.onload = function() {
		    document.getElementById("dia-diem-"+product_id).innerHTML = this.responseText;
		    }
		  xhttp.open("GET", "/functions/ajax/chon_noi.php?noi_id="+noi_id, true);
		  xhttp.send();
	}
</script>