<?php 
$aksi = isset($_GET['aksi'])?$_GET['aksi']:"";
if($aksi == "tambah") { include "persediaan_tambah.php"; }
else if($aksi == "edit") { include "persediaan_edit.php"; }
else if($aksi == "pakai") { include "pemakaian_tambah.php"; }
else if($aksi == "ubah") { include "pemakaian_edit.php"; }
else {
?>
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-primaryx" style="color:#e0ba75";>Manajemen Persediaan Barang</h1>

                    <!-- Info tabel -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold" style="color:#e0ba75";>
                               Informasi Persediaan Barang
                            </h6>

                            <div class="card-body">
                        <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th width="75">Id Barang</th>
                                            <th>Nama Barang</th>
                                            <th>Kategori</th>
                                            <th>Stock</th>
                                            <th>Satuan</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no =1;
                                        $sql="SELECT * FROM mou_persediaan";
                                        $query=mysqli_query($con,$sql);
                                        while($row=mysqli_fetch_array($query))
                                        {
                                            $link_hapus= "persediaan_delete.php?id=$row[idbarang]";
                                            $link_edit = "index.php?menu=persediaan&aksi=edit&id=$row[idbarang]";
                                        ?>
                                        <tr>
                                            <td><?=$row['idbarang'];?></td>
                                            <td><?=$row['namabarang'];?></td>
                                            <td><?=$row['kategori'];?></td>
                                            <td><?=$row['minimalstock'];?></td>
                                            <td><?=$row['satuan'];?></td>
                                        </tr>
                                        <?php 
                                        $no++;
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        </div>
                    </div>

                    <!-- tabel edit -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold" style="color:#e0ba75";>
                                Persediaan Barang
                            </h6>

                        <div class="card-body">
                            <a href="index.php?menu=persediaan&aksi=tambah" class="btn btn-custom">
                                <i class="fas fa-plus"></i> Tambah
                            </a>

                            <a href="index.php?menu=persediaan&aksi=pakai" class="btn btn-custom">
                                <i class="fas fa-edit"></i> Pemakaian
                            </a>

                        </div>
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th width="100">Id Barang</th>
                                            <th>Stock</th>
                                            <th>Status</th>
                                            <th>Tanggal</th>
                                            <!-- <th>Tanggal Keluar</th> -->
                                            <th>Kadaluarsa</th>
                                            <th width="100">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no =1;
                                        $sql="SELECT * FROM mou_pemakaian";
                                        $query=mysqli_query($con,$sql);
                                        while($row=mysqli_fetch_array($query))
                                        {
                                            $link_hapus= "persediaan_delete.php?id=$row[id]";
                                            $link_edit = "index.php?menu=persediaan&aksi=ubah&id=$row[id]";
                                        ?>
                                        <tr>
                                            <td><?=$row['id'];?></td>
                                            <td><?=$row['stock'];?></td>
                                            <td><?=$row['status'];?></td>
                                            <td><?=$row['tanggalmasuk'];?></td>
                                            <!-- <td><?=$row['tanggalkeluar'];?></td> -->
                                            <td><?=$row['kadaluarsa'];?></td>

                                            <td>
                                                <a href="<?=$link_edit;?>" class="btn btn-custom">
                                                <i class="fas fa-edit"></i> Edit
                                                </a>
                                            </td>
                                            
                                        </tr>
                                        <?php 
                                        $no++;
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

<?php 
}
?>