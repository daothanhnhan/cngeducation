<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function noi_su_kien ($product_id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			// var_dump($product_id);

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$thoi_gian = mysqli_real_escape_string($conn_vn, $_POST['thoi_gian']);
			$van_phong = mysqli_real_escape_string($conn_vn, $_POST['van_phong']);
			$dia_chi = mysqli_real_escape_string($conn_vn, $_POST['dia_chi']);

			$sql = "INSERT INTO noi_su_kien (name, thoi_gian, van_phong, dia_chi, product_id) VALUES ('$name', '$thoi_gian', '$van_phong', '$dia_chi', '$product_id')";//echo $sql;
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một địa điểm.\');window.location.href="index.php?page=noi-su-kien&product_id='.$product_id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	noi_su_kien($_GET['product_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin thương hiệu<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=noi-su-kien&product_id=<?= $_GET['product_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Nơi</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP">Thời gian</p>
            <input type="text" class="txtNCP1" name="thoi_gian" />
            <p class="titleRightNCP">Văn phòng</p>
            <input type="text" class="txtNCP1" name="van_phong" />
            <p class="titleRightNCP">Địa điểm</p>
            <input type="text" class="txtNCP1" name="dia_chi" />
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Phát Triển Thương Hiệu Cafe Link Việt Nam</p>