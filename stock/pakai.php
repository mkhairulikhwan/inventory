<!doctype html>
<html class="no-js" lang="en">

<?php
include '../dbconnect.php';
include 'cek.php';

if (isset($_POST['updaterusak'])) {
    $idx = $_POST['idbrg'];
    $nama = $_POST['nama'];
    $jenis = $_POST['jenis'];
    $merk = $_POST['merk'];
    $ukuran = $_POST['ukuran'];
    $satuan = $_POST['satuan'];
    $keterangan = $_POST['keterangan'];

    $updatedatarusak = mysqli_query($conn, "update sbrg_rusak set nama='$nama', jenis='$jenis', merk='$merk', ukuran='$ukuran', satuan='$satuan', keterangan='$keterangan' where idx='$idx'");

    //cek apakah berhasil
    if ($updatedatarusak) {

        echo " <div class='alert alert-success'>
                <strong>Success!</strong> Redirecting you back in 1 seconds.
                    </div>
            <meta http-equiv='refresh' content='1; url= pakai.php'/>  ";
    } else {
        echo "<div class='alert alert-warning'>
                <strong>Failed!</strong> Redirecting you back in 1 seconds.
                    </div>
                <meta http-equiv='refresh' content='1; url= pakai.php'/> ";
    }
};

if (isset($_POST['hapus'])) {
    $idx = $_POST['idbrg'];

    $delete = mysqli_query($conn, "delete from sbrg_rusak where idx='$idx'");
    //hapus juga semua data barang ini di tabel keluar-masuk

    //cek apakah berhasil
    if ($delete) {

        echo " <div class='alert alert-success'>
                <strong>Success!</strong> Redirecting you back in 1 seconds.
                    </div>
            <meta http-equiv='refresh' content='1; url= pakai.php'/>  ";
    } else {
        echo "<div class='alert alert-warning'>
                <strong>Failed!</strong> Redirecting you back in 1 seconds.
                    </div>
                <meta http-equiv='refresh' content='1; url= pakai.php'/> ";
    }
};
?>

<head>
    <meta charset="utf-8">
    <link rel="icon" type="image/png" href="../favicon.png">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MTs Darul Istiqamah HST | Pakai</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-144808195-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-144808195-1');
    </script>
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">

    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <a href="https://www.instagram.com/darulistiqamahtv?igsh=MW9ocjl5a3lpMjQ1dA==">Darul Istiqamah TV</a>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                            <li class="active"><a href="index.php"><span>Home</span></a></li>
                            <li>
                                <a href="barang.php"><i class="ti-folder"></i><span>Data Barang</span></a>
                            </li>
                            <li>
                                <a href="masuk.php"><i class="ti-dashboard"></i><span>Aset Barang Masuk</span></a>
                            </li>
                            <li>
                                <a href="keluar.php"><i class="ti-dashboard"></i><span>Aset Barang Keluar</span></a>
                            </li>
                            <li>
                                <a href="pakai.php"><i class="ti-dashboard"></i><span>Aset Barang Pakai Habis</span></a>
                            </li>
                            <li>
                                <a href="tetap.php"><i class="ti-layout"></i><span>Aset Barang Tetap</span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true"><i class="ti-layout"></i><span>Laporan
                                    </span></a>
                                <ul class="collapse">
                                    <li><a href="exportbhn.php">Data Barang</a></li>
                                    <li><a href="exportbrgmsk.php">Aset Barang Masuk</a></li>
                                    <li><a href="exportbrgklr.php">Aset Barang Keluar</a></li>
                                    <li><a href="exportbrgpakai.php">Aset Barang Pakai Habis</a></li>
                                    <li><a href="exporttetap.php">Aset Barang Tetap</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="logout.php"><span>Logout</span></a>

                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>

                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-6 col-sm-4 clearfix">
                        <ul class="notification-area pull-right">
                            <li>
                                <h3>
                                    <div class="date">
                                        <script type='text/javascript'>
                                            <!--
                                            var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
                                            var myDays = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
                                            var date = new Date();
                                            var day = date.getDate();
                                            var month = date.getMonth();
                                            var thisDay = date.getDay(),
                                                thisDay = myDays[thisDay];
                                            var yy = date.getYear();
                                            var year = (yy < 1000) ? yy + 1900 : yy;
                                            document.write(thisDay + ', ' + day + ' ' + months[month] + ' ' + year);
                                            //
                                            -->
                                        </script></b>
                                    </div>
                                </h3>

                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- header area end -->




            <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <h4 class="page-title pull-left">Dashboard</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><a href="index.php">Home</a></li>
                                <li><span>Barang Pakai Habis</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 clearfix">
                        <div class="user-profile pull-right" style="color:black; padding:0px;">
                            <img src="pondok.png" width="100px" class="user-name dropdown-toggle" data-toggle="dropdown" \>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page title area end -->
            <div class="main-content-inner">

                <!-- market value area start -->
                <div class="row mt-5 mb-5">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-sm-flex justify-content-between align-items-center">
                                    <h2>Barang Pakai Habis</h2>
                                    <button style="margin-bottom:20px" data-toggle="modal" data-target="#myModal" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-plus"></span>Tambah Barang Pakai Habis</button>
                                </div>
                                <div class="data-tables datatable-dark">
                                    <table id="dataTable3" class="display" style="width:100%">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>No</th>
                                                <th>Nama Barang</th>
                                                <th>Id Barang</th>
                                                <th>Merk</th>
                                                <th>Kategori</th>
                                                <th>Jumlah</th>
                                                <th>Satuan</th>
                                                <th>Keterangan</th>
                                                <th>Opsi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $brgs = mysqli_query($conn, "SELECT * from sbrg_rusak order by nama ASC");
                                            $no = 1;
                                            while ($p = mysqli_fetch_array($brgs)) {
                                                $idb = $p['idx'];
                                            ?>

                                                <tr>
                                                    <td><?php echo $no++ ?></td>
                                                    <td><?php echo $p['nama'] ?></td>
                                                    <td><?php echo $p['jenis'] ?></td>
                                                    <td><?php echo $p['merk'] ?></td>
                                                    <td><?php echo $p['ukuran'] ?></td>
                                                    <td><?php echo $p['stock'] ?></td>
                                                    <td><?php echo $p['satuan'] ?></td>
                                                    <td><?php echo $p['keterangan'] ?></td>
                                                    <td><button data-toggle="modal" data-target="#edit<?= $idb; ?>" class="btn btn-warning">Edit</button> <button data-toggle="modal" data-target="#del<?= $idb; ?>" class="btn btn-danger">Del</button></td>
                                                </tr>


                                                <!-- The Modal -->
                                                <div class="modal fade" id="edit<?= $idb; ?>">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <form method="post">
                                                                <!-- Modal Header -->
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title">Edit Barang: <?php echo $p['nama'] ?> - <?php echo $p['jenis'] ?> - <?php echo $p['ukuran'] ?></h4>
                                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                </div>

                                                                <!-- Modal body -->
                                                                <div class="modal-body">

                                                                    <label for="nama">Nama Barang</label>
                                                                    <input type="text" id="nama" name="nama" class="form-control" value="<?php echo $p['nama'] ?>">

                                                                    <label for="jenis">Id Barang</label>
                                                                    <input type="text" id="jenis" name="jenis" class="form-control" value="<?php echo $p['jenis'] ?>">

                                                                    <label for="merk">Merk</label>
                                                                    <input type="text" id="merk" name="merk" class="form-control" value="<?php echo $p['merk'] ?>">

                                                                    <label for="ukuran">Kategori</label>
                                                                    <input type="text" id="ukuran" name="ukuran" class="form-control" value="<?php echo $p['ukuran'] ?>">

                                                                    <label for="stock">Jumlah</label>
                                                                    <input type="text" id="stock" name="stock" class="form-control" value="<?php echo $p['stock'] ?>" disabled>

                                                                    <label for="satuan">Satuan</label>
                                                                    <input type="text" id="satuan" name="satuan" class="form-control" value="<?php echo $p['satuan'] ?>">

                                                                    <label for="keterangan">Keterangan</label>
                                                                    <input type="text" id="keterangan" name="keterangan" class="form-control" value="<?php echo $p['keterangan'] ?>">
                                                                    <input type="hidden" name="idbrg" value="<?= $idb; ?>">


                                                                </div>

                                                                <!-- Modal footer -->
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn btn-success" name="update">Save</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>



                                                <!-- The Modal -->
                                                <div class="modal fade" id="del<?= $idb; ?>">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <form method="post">
                                                                <!-- Modal Header -->
                                                                <div class="modal-header">
                                                                    <h4 class="modal-title">Hapus Barang Pakai Habis <?php echo $p['nama'] ?> - <?php echo $p['jenis'] ?> - <?php echo $p['ukuran'] ?></h4>
                                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                </div>

                                                                <!-- Modal body -->
                                                                <div class="modal-body">
                                                                    Apakah Anda yakin ingin menghapus Barang ini dari daftar Pakai Habis?
                                                                    <input type="hidden" name="idbrg" value="<?= $idb; ?>">
                                                                </div>

                                                                <!-- Modal footer -->
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                                                                    <button type="submit" class="btn btn-success" name="hapus">Hapus</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>


                                            <?php
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                                <a href="exportbrgrsk.php" target="_blank" class="btn btn-info">Export Data</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- row area start-->
        </div>
    </div>
    <!-- main content area end -->
    <!-- footer area start-->
    <footer>
        <div class="footer-area">
            <p>Copyright | 2024</p>
        </div>
    </footer>
    <!-- footer area end-->
    </div>
    <!-- page container area end -->

    <!-- modal input -->
    <div id="myModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Masukkan Barang Pakai Habis manual</h4>
                </div>
                <div class="modal-body">
                    <form action="barang_rusak_act.php" method="post">
                        <div class="form-group">
                            <label>Nama Barang</label>
                            <input name="nama" type="text" class="form-control" placeholder="Nama Barang" required>
                        </div>
                        <div class="form-group">
                            <label>Id Barang</label>
                            <input name="jenis" type="text" class="form-control" placeholder="Id Barang">
                        </div>
                        <div class="form-group">
                            <label>Merk</label>
                            <input name="merk" type="text" class="form-control" placeholder="Merk">
                        </div>
                        <div class="form-group">
                            <label>Kategori</label>
                            <input name="ukuran" type="text" class="form-control" placeholder="Kategori">
                        </div>
                        <div class="form-group">
                            <label>Jumlah</label>
                            <input name="stock" type="number" min="0" class="form-control" placeholder="Qty">
                        </div>
                        <div class="form-group">
                            <label>Satuan</label>
                            <select name="satuan" class="custom-select form-control">
                                <option selected>Pilih satuan</option>
                                <option value="Buah">Buah</option>
                                <option value="Unit">Unit</option>
                                <option value="Meter">Meter</option>
                                <option value="Milimeter">Centimeter</option>
                                <option value="Milimeter">Milimeter</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Keterangan</label>
                            <input name="keterangan" type="text" class="form-control" placeholder="Keterangan">
                        </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                    <input type="submit" class="btn btn-primary" value="Simpan">
                </div>
                </form>
            </div>
        </div>
    </div>


    <script>
        $(document).ready(function() {
            $('input').on('keydown', function(event) {
                if (this.selectionStart == 0 && event.keyCode >= 65 && event.keyCode <= 90 && !(event.shiftKey) && !(event.ctrlKey) && !(event.metaKey) && !(event.altKey)) {
                    var $t = $(this);
                    event.preventDefault();
                    var char = String.fromCharCode(event.keyCode);
                    $t.val(char + $t.val().slice(this.selectionEnd));
                    this.setSelectionRange(1, 1);
                }
            });
        });

        $(document).ready(function() {
            $('#dataTable3').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    'print'
                ]
            });
        });
    </script>

    <!-- jquery latest version -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>
    <!-- Start datatable js -->
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
        zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
        ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="assets/js/pie-chart.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>


</body>

</html>