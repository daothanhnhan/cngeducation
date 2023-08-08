<?php
    $rows = $acc->getList("dang_ky_tu_van","","","id","desc",$trang, 20, "dang-ky-tu-van");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ và tên</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Nơi sống</th>
                    <th>Năm đi</th>
                    <th>Nơi đi</th>
                    <th>Ý kiến</th>
                    <!-- <th>Ảnh</th> -->
                    <!-- <th>Hoạt động</th> -->
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $noi_di = json_decode($row['noi_di']);
                        $noi_di = implode(", ", $noi_di);
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td><?= $row['phone']?></td>
                            <td><?= $row['email']?></td>
                            <td><?= $row['noi_song']?></td>
                            <td><?= $row['nam_di']?></td>
                            <td><?= $noi_di ?></td>
                            <td><?= $row['note']?></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <!-- <td style="float: none;"><a href="index.php?page=xoa-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td> -->
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
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>             