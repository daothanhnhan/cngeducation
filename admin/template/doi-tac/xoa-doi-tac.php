<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM doi_tac WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=doi-tac');
?>