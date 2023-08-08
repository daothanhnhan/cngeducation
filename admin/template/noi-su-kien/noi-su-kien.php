<?php
    $rows = $acc->getList("noi_su_kien","product_id",$_GET['product_id'],"id","asc",$trang, 20, "noi-su-kien");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-noi-su-kien&product_id=<?= $_GET['product_id'] ?>">Thêm địa điểm sự kiện</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Nơi</th>
                    <th>Thời điểm</th>
                    <th>Văn phòng</th>
                    <th>Địa chỉ</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td><?= $row['thoi_gian']?></td>
                            <td><?= $row['van_phong']?></td>
                            <td><?= $row['dia_chi']?></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-noi-su-kien&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-noi-su-kien&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>             