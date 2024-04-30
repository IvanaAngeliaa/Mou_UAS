<?php 
include "connection.php";

$kategori = mysqli_real_escape_string($con,$_POST['kategori']);
$namabarang = mysqli_real_escape_string($con,$_POST['namabarang']);
$stock = mysqli_real_escape_string($con,$_POST['stock']);
$satuan = mysqli_real_escape_string($con,$_POST['satuan']);
// $tanggalmasuk = mysqli_real_escape_string($con,$_POST['tanggalmasuk']);
// $kadaluarsa = mysqli_real_escape_string($con,$_POST['kadaluarsa']);
// $status = mysqli_real_escape_string($con,$_POST['status']);



$sql   = "INSERT INTO mou_persediaan
			(kategori,namabarang,stock,satuan) 
		  VALUES 
		    ('$kategori','$namabarang','$stock','$satuan')";
$query = mysqli_query($con,$sql);


$url   = "index.php?menu=persediaan";
$pesan = "Data berhasil disimpan";

echo "<script>alert('$pesan'); location='$url'; </script>";
?>