<?php 
include "connection.php";
$id = mysqli_real_escape_string($con,$_POST['id']);
$stock = mysqli_real_escape_string($con,$_POST['stock']);
$tanggalmasuk = mysqli_real_escape_string($con,$_POST['tanggalmasuk']);
$kadaluarsa = mysqli_real_escape_string($con,$_POST['kadaluarsa']);
$status = mysqli_real_escape_string($con,$_POST['status']);

$sql   = "UPDATE mou_pemakaian SET stock='$stock',
								tanggalmasuk='$tanggalmasuk',
								kadaluarsa='$kadaluarsa',
                                status='$status'
								WHERE id='$id'";
$query = mysqli_query($con,$sql);


$url   = "index.php?menu=persediaan";
$pesan = "Data berhasil diubah";

echo "<script>alert('$pesan'); location='$url'; </script>";
?>