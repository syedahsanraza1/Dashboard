 <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Staff Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Staff Dashboard
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link active" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fa fa-fw fa-user-circle"></i>Staff Dashboard <span class="badge badge-success">6</span></a>
                                <div id="submenu-1" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                       
                                       <li class="nav-item">
                                            <a class="nav-link" href="index.php">Dashboard</a>
                                        </li>
                                         <li class="nav-item">
                                            <a class="nav-link" href="index.php?page=Staff_leads">Creat Leads Staff</a>
                                        </li>
                                        
                                       
                                         <li class="nav-item">
                                            <a class="nav-link" href="index.php?page=create_user_invoices_staff">Creat Staff invoices</a>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a class="nav-link" href="index.php?page=Search_leads_data_staff">Search Staff lead(Lead title/PNR/Lead id)</a>
                                        </li>
                                         <li class="nav-item">
                                            <a class="nav-link" href="index.php?page=Search_leads_data_staff_by_progress">Search Staff leads by progress</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                           
                           
                            <?php if($_SESSION['login_type'] == 1): ?>
                           
                            <li class="nav-divider">
                                Admin Dashboard
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="collapse" aria-expanded="false" data-target="#submenu-6" aria-controls="submenu-6"><i class="fas fa-fw fa-file"></i>Admin Bar</a>
                                <div id="submenu-6" class="collapse submenu" style="">
                                    <ul class="nav flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link" href="index.php?page=Admin_leads">Creat Leads</a>
                                        </li>
                                        <li class="nav-item">
                                             <a class="nav-link" href="index.php?page=Users">Users</a>
                                        </li>
                                        <li class="nav-item">
                                             <a class="nav-link" href="index.php?page=create_user_invoices">Creat User invoices</a>
                                        </li>
                                        <li class="nav-item">
                                             <a class="nav-link" href="index.php?page=Search_leads_data">Search leads by (Lead title/PNR/Lead id)</a>
                                        </li>
                                         <li class="nav-item">
                                             <a class="nav-link" href="index.php?page=Search_leads_by_progress_data">Search by Lead Progress</a>
                                        </li>
                                      
                                    </ul>
                                </div>
                            </li>
                           
                                <?php endif; ?>
                           
                            
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
    