<?php 
	$id = $_GET['id'];
	$sql = "SELECT * FROM noi_su_kien WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$product_id = $row['product_id'];

	$sql = "DELETE FROM noi_su_kien WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=noi-su-kien&product_id='.$product_id);
?>