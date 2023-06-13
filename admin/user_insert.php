<?php 
include "connection.php";
$username = $_POST['username'];
$fullname = $_POST['fullname'];
$password = md5($_POST['password']);

$sql   = "INSERT INTO mou_user
			(username,fullname,password) 
		  VALUES 
		    ('$username','$fullname','$password')";
$query = mysqli_query($con,$sql);

$url   = "index.php?menu=user";
$pesan = "User berhasil disimpan";

echo "<script>alert('$pesan'); location='$url'; </script>";
?>