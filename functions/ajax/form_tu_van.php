<?php
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$now = date('Y-m-d H:i:s');
// echo 'test';
	$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
	$phone = mysqli_real_escape_string($conn_vn, $_POST['phone']);
	$email = mysqli_real_escape_string($conn_vn, $_POST['email']);
	$noi_song = mysqli_real_escape_string($conn_vn, $_POST['noi_song']);
	$nam_di = mysqli_real_escape_string($conn_vn, $_POST['nam_di']);
	$noi_di = $_POST['noi_di'];
	$note = mysqli_real_escape_string($conn_vn, $_POST['note']);

	$noi_di = json_encode($noi_di);
	$noi_di = mysqli_real_escape_string($conn_vn, $noi_di);

	$sql = "INSERT INTO dang_ky_tu_van (name, phone, email, noi_song, nam_di, noi_di, note, ngay) VALUES ('$name', '$phone', '$email', '$noi_song', '$nam_di', '$noi_di', '$note', '$now')";

	$result = mysqli_query($conn_vn, $sql);

	if ($result) {
		echo 'Bạn đã đăng ký tư vấn du học thành công.';
	} else {
		echo 'Có lỗi xảy ra';
	}