<div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title"><?php echo "Welcome back ".($_SESSION['login_type'] == 3 ? "Dr. ".$_SESSION['login_name'].','.$_SESSION['login_name_pref'] : $_SESSION['login_name'])."!"  ?></h2>
                                <p class="pageheader-text">Home</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Home</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>

                   <div class="row">
                        <!-- ============================================================== -->
                        <!-- four widgets   -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- total views   -->
                        <!-- ============================================================== -->
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <a href="index.php">
                                <div class="card-body" >
                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
                                        <i class="fa fa-home fa-fw fa-sm text-info"></i>
                                    </div>
                                    <div class="d-inline-block">
                                        <h2 class="text-muted" > Dashboard</h2>
                                        <h6 class="mb-0">My Work Place (Blue Screen)</h6>
                                    </div>
                                    
                                </div>
                            </div>
                            </a>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <a href="index.php?page=Staff_leads">
                                <div class="card-body" >
                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
                                        <i class="fa fa-plus-circle fa-fw fa-sm text-info"></i>
                                    </div>
                                    <div class="d-inline-block">
                                        <h2 class="text-muted">Creat lead</h2>
                                        <h6 class="mb-0"> Creat a new lead</h6>
                                    </div>
                                    
                                </div>
                            </div>
                            </a>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <a href="index.php?page=Search_leads_data_staff">
                                <div class="card-body">
                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
                                        <i class="fa fa-tasks  fa-fw fa-sm text-info"></i>
                                    </div>
                                    <div class="d-inline-block">
                                       
                                        
                                         <h2 class="text-muted" >My Leads</h2>
                                         <h6 class="mb-0"> Lead that is created and is availabe to SPO's</h6>
                                    </div>
                                    
                                </div>
                            </div>
                            </a>
                        </div>




                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <a href="index.php?page=create_user_invoices_staff">
                                <div class="card-body">
                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
                                        <i class="fa fa-address-card  fa-fw fa-sm text-info "></i>

                                    </div>
                                    <div class="d-inline-block">
                                        <h2 class="text-muted">My Account invoices</h2>
                                        <h6 class="mb-0">  Account</h6>
                                    </div>
                                    
                                </div>
                            </div>
                            </a>
                        </div>
                       <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <a href="index.php?page=Staff_leads">
                                <div class="card-body">
                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
                                        <i class="fa fa-plane fa-fw fa-sm text-info"></i>
                                    </div>
                                    <div class="d-inline-block">
                                        <h2 class="text-muted">NDC Search Flights</h2>
                                        <h6 class="mb-0"> New Distribution Capabilities(Searches)</h6>
                                    </div>
                                    
                                </div>
                            </div>
                            </a>
                        </div>
                   <!--       <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="card">
                                <a href="index.php">
                                <div class="card-body">
                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
                                        <i class="fa fa-credit-card fa-fw fa-sm text-info"></i>
                                    </div>
                                    <div class="d-inline-block">
                                        <h2 class="text-muted">Refunds</h2>
                                        <h6 class="mb-0">Refunds that is created and is available to SPO's</h6>
                                    </div>
                                    
                                </div>
                            </div>
                            </a>
                        </div>
                       
                        ============================================================== -->
                        <!-- end total earned   -->
                        <!-- ============================================================== -->
                    </div>