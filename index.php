
<?php

include 'db_connect.php';
include 'Header.php';

include 'topbar.php';
include 'navigation.php';



?>
<body>
    
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->

        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
         <main id="view-panel" >
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content "><div class="container-fluid">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                                    <?php $page = isset($_GET['page']) ? $_GET['page'] :'home'; ?>
                <?php include $page.'.php' ?>
                   </div>
                    </div>
                </div>
           
</main>

             
            <!-- ============================================================== -->
  <?php
include 'fotter.php';


  ?>