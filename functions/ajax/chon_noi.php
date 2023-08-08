<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$noi_id = $_GET['noi_id'];

	$noi = $action->getDetail('noi_su_kien', 'id', $noi_id);
?>
<p><i class="fa fa-clock-o"></i> <?= $noi['thoi_gian'] ?></p>
<p><i class="fa fa-home"></i> <?= $noi['van_phong'] ?></p>
<p><i class="fa fa-map-marker"></i> <?= $noi['dia_chi'] ?></p>