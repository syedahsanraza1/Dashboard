<?php 

include('db_connect.php');

extract($_POST);

if (isset($_POST['UniqueuserID']) && isset($_POST['UniqueuserID']) !="") {



                                            
                                           
                                            
                                           
                                            
                                            
                                          
                                          







//day
	$UniqueuserID = $_POST['UniqueuserID'];
    $UniqueIDname = $_POST['UniqueIDname'];
//month
    $UniqueuserIDmonthwise = $_POST['UniqueuserIDmonthwise'];
    $UniqueIDnamemonthwise = $_POST['UniqueIDnamemonthwise'];
//year
        $UniqueuserIDyearwise = $_POST['UniqueuserIDyearwise'];
    $UniqueIDnameyearwise = $_POST['UniqueIDnameyearwise'];
//day
    $UniqueIDnameDay = $_POST['UniqueIDnameDay'];
    $UniqueIDnameMonth = $_POST['UniqueIDnameMonth'];
        $UniqueIDnameYear = $_POST['UniqueIDnameYear'];
//month
    $UniqueIDnameMonthmonth = $_POST['UniqueIDnameMonthmonth'];
    $UniqueIDnameYearmonth = $_POST['UniqueIDnameYearmonth'];
//year
    $UniqueIDnameYearyear = $_POST['UniqueIDnameYearyear'];

	$hidden_invoice_user_id = $_POST['hidden_invoice_user_id'];
	$today = $_POST['today'];
   


if ($hidden_invoice_user_id =="day" &&  $UniqueuserID !="") {

$displayquery = "SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN sucesssales sus ON lds.leadsid = sus.salesleadid INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON lds.leadsid = ccd.client_contact_details_leads_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = '$UniqueuserID' AND ldd.leaddaydate = '$UniqueIDnameDay' AND ldd.leadmonthdate = '$UniqueIDnameMonth' AND ldd.leadyeardate = '$UniqueIDnameYear' AND lds.Status = 'Sucess' ";
$displayqueryforusersdisplay = "SELECT * FROM leads lds INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = '$UniqueuserID'";
$displayqueryforusersdisplayresults = mysqli_query($conn,$displayqueryforusersdisplay );
$displayqueryforusersdisplayrows = mysqli_fetch_array($displayqueryforusersdisplayresults);
//total
$displayqueryforsucesstotaldisplay = "SELECT SUM(`potentialsales`),SUM(`leadssalesProfit`),SUM(`salesamount`),SUM(`refundleadssalesamount`) FROM sucesssales sus INNER JOIN leads lds ON sus.salesleadid = lds.leadsid INNER JOIN clients cln ON lds.leadsid = cln.clientid  INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON lds.leadsid = ccd.client_contact_details_leads_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id  WHERE lds.Userid = '$UniqueuserID' AND ldd.leaddaydate = '$UniqueIDnameDay' AND ldd.leadmonthdate = '$UniqueIDnameMonth' AND ldd.leadyeardate = '$UniqueIDnameYear' AND lds.Status = 'Sucess'";
$displayqueryforsucesstotaldisplayresults = mysqli_query($conn,$displayqueryforsucesstotaldisplay);
$displayqueryforsucesstotaldisplayrows = mysqli_fetch_array($displayqueryforsucesstotaldisplayresults);



$results = mysqli_query($conn,$displayquery);

if(mysqli_num_rows($results) > 0){
$data1 = '





<button type="button" class="btn btn-primary btn-block" onclick="Getinvoicedetails(invoceusercomplete)">
                                                Print
                                            </button> <button type="button" class="close" data-dismiss="modal">×</button>

<div class="row">
                        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">

                            <div class="card" id="invoceusercomplete">
                                <div class="card-header p-4">
                                     
                                   <div class="float-right" id="invoiceclienttodaydate">Date:'.$today.'</div><br><h3 class="mb-0 float-right">Invoice Of '.$UniqueIDnameDay.'/'.$UniqueIDnameMonth.'/'.$UniqueIDnameYear.'</h3>
                                    <div class="float-center"> <a class="navbar-brand" href="index.php">Web XPress</a>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-4">
                                        <div class="col-sm-6">
                                            <h5 class="mb-3">From:</h5>                                            
                                            <h3 class="text-dark mb-1" id="invoicestaffname">Administrator</h3>
                                         
                                            <div>Sialkot</div>
                                            <div>Street no</div>
                                            <div>Email: webxpress.pk@gaiml.com</div>
                                            <div>Phone: +923167658324</div>
                                        </div>


   








';
//SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN sucesssales sus ON lds.leadsid = sus.salesleadid INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON cln.Clientcontactid = ccd.client_contact_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = 1 AND ldd.leaddaydate = 11 AND ldd.leadmonthdate = 7 AND ldd.leadyeardate = 2022;

if ($displayqueryforusersdisplayrows['type']==1) {
	$rank ="admin";
}else{$rank ="staff";}


$data1.='<div class="col-sm-6">
                                            <h5 class="mb-3">To:</h5>
                                            <h3 class="text-dark mb-1" id="invoiceclientname">'.$displayqueryforusersdisplayrows['name'].'</h3> 
                                            <h3 class="text-dark mb-1" id="invoiceclientname">'.$displayqueryforusersdisplayrows['username'].'</h3>                                            
                                            <div id="invoiceclientlocation">Unique User ID'.$displayqueryforusersdisplayrows['id'].'</div>
                                            <div id="invoiceclienttype">Customer type: '.$rank.' </div>
                                           
                                        </div>
                                    </div>
                                    <div class="table-responsive-sm">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th class="center">#</th>
                                               
                                                    <th>Description</th>
                                                    <th>PNR Number</th>
                                                    <th class="right">Fare</th>
                                                    <th class="right">Orignal Price</th>
                                                    <th class="right">Refund Amount</th>
                                                    <th class="right">Profit</th>
                                                
                                                    <th class="right">Departure Date</th>
                                                    <th class="right">Return Date</th>
                                                </tr>
                                            </thead>';












$number = 1;
    while ($row = mysqli_fetch_array($results) ) {

$data1.= '       
                                            <tbody>
                                                <tr>
                                                    <td class="center">'.$number.'</td>
                                                   
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['desciptionfreetext'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['PNRnumbers'].'</td>
                                                     <td class="left strong" id="invoiceleadtitle">'.$row['potentialsales'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['salesamount'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['refundleadssalesamount'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['leadssalesProfit'].'</td>
                                                  
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['Departure_Date'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['Return_Date'].'</td>
                                                    
                                                </tr>
                                           ';



                                    $number++;

    }







$data1.=' </tbody>
                                        </table>
                                    </div><div class="row">
                                        <div class="col-lg-4 col-sm-5">
                                        </div>
                                        <div class="col-lg-4 col-sm-5 ml-auto">
                                            <table class="table table-clear">
                                                <tbody>
                                                 <tr>
                                                        <td class="left">
                                                            <strong class="text-dark">Total Refund of this Day</strong>
                                                        </td>
                                                        <td class="right" id="invoiceclientsubtotal">'.$displayqueryforsucesstotaldisplayrows[3].'</td>
                                                    </tr>
                                                  
                                                
                                                        <tr><td class="left">
                                                            <strong class="text-dark">Total Cost This Day</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[2].'</strong>
                                                        </td>
                                                    </tr>
                                                    <tr><td class="left">
                                                            <strong class="text-dark">Total Sales This Day</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[1].'</strong>
                                                        </td>
                                                    </tr>
                                                    <tr><td class="left">
                                                            <strong class="text-dark">Total Profit This Day</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[0].'</strong>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer bg-white">
                                    <p class="mb-0">Sialkot Company complete adrees and phone no</p>
                                </div>
                            </div>
                        </div>
                    </div>


';




















}else{

$data1="No Data exsit of this user from this Day";

}












echo $data1;



	
}elseif ($hidden_invoice_user_id =="month" &&  $UniqueuserIDmonthwise !="") {

$displayquery = "SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN sucesssales sus ON lds.leadsid = sus.salesleadid INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON lds.leadsid = ccd.client_contact_details_leads_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = '$UniqueuserIDmonthwise' AND ldd.leadmonthdate = '$UniqueIDnameMonthmonth' AND ldd.leadyeardate = '$UniqueIDnameYearmonth' AND lds.Status = 'Sucess'";
$displayqueryforusersdisplay = "SELECT * FROM leads lds INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = '$UniqueuserIDmonthwise'";
$displayqueryforusersdisplayresults = mysqli_query($conn,$displayqueryforusersdisplay);
$displayqueryforusersdisplayrows = mysqli_fetch_array($displayqueryforusersdisplayresults);
//total
$displayqueryforsucesstotaldisplay = "SELECT SUM(`potentialsales`),SUM(`leadssalesProfit`),SUM(`salesamount`),SUM(`refundleadssalesamount`) FROM sucesssales sus INNER JOIN leads lds ON sus.salesleadid = lds.leadsid INNER JOIN clients cln ON lds.leadsid = cln.clientid  INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON lds.leadsid = ccd.client_contact_details_leads_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id  WHERE lds.Userid = '$UniqueuserIDmonthwise' AND ldd.leadmonthdate = '$UniqueIDnameMonthmonth' AND ldd.leadyeardate = '$UniqueIDnameYearmonth' AND lds.Status = 'Sucess'";
$displayqueryforsucesstotaldisplayresults = mysqli_query($conn,$displayqueryforsucesstotaldisplay);
$displayqueryforsucesstotaldisplayrows = mysqli_fetch_array($displayqueryforsucesstotaldisplayresults);


$results = mysqli_query($conn,$displayquery);

if(mysqli_num_rows($results) > 0){
$data1 = '





<button type="button" class="btn btn-primary btn-block" onclick="Getinvoicedetails(invoceusercomplete)">
                                                Print
                                            </button> <button type="button" class="close" data-dismiss="modal">×</button>

<div class="row">
                        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">

                            <div class="card" id="invoceusercomplete">
                                <div class="card-header p-4">
                                     
                                   <div class="float-right" id="invoiceclienttodaydate">Date:'.$today.'</div><br><h3 class="mb-0 float-right">Invoice Of '.$UniqueIDnameMonthmonth.'/'.$UniqueIDnameYearmonth.'</h3>
                                    <div class="float-center"> <a class="navbar-brand" href="index.php">Web XPress</a>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-4">
                                        <div class="col-sm-6">
                                            <h5 class="mb-3">From:</h5>                                            
                                            <h3 class="text-dark mb-1" id="invoicestaffname">Administrator</h3>
                                         
                                            <div>Sialkot</div>
                                            <div>Street no</div>
                                            <div>Email: webxpress.pk@gaiml.com</div>
                                            <div>Phone: +923167658324</div>
                                        </div>


   








';
//SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN sucesssales sus ON lds.leadsid = sus.salesleadid INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON cln.Clientcontactid = ccd.client_contact_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = 1 AND ldd.leadmonthdate = 7 AND ldd.leadyeardate = 2022;

if ($displayqueryforusersdisplayrows['type']==1) {
	$rank ="admin";
}else{$rank ="staff";}


$data1.='<div class="col-sm-6">
                                            <h5 class="mb-3">To:</h5>
                                            <h3 class="text-dark mb-1" id="invoiceclientname">'.$displayqueryforusersdisplayrows['name'].'</h3> 
                                            <h3 class="text-dark mb-1" id="invoiceclientname">'.$displayqueryforusersdisplayrows['username'].'</h3>                                            
                                            <div id="invoiceclientlocation">Unique User ID : '.$displayqueryforusersdisplayrows['id'].'</div>
                                            <div id="invoiceclienttype">Customer type: '.$rank.' </div>
                                           
                                        </div>
                                    </div>
                                    <div class="table-responsive-sm">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th class="center">#</th>
                                              
                                                    <th>Description</th>
                                                    <th>PNR Number</th>
                                                    <th class="right">Fare</th>
                                                    <th class="right">Orignal Price</th>
                                                    <th class="right">Refund Amount</th>
                                                    <th class="right">Profit</th>
                                                  
                                                    <th class="right">Departure Date</th>
                                                    <th class="right">Return Date</th>
                                                </tr>
                                            </thead>';












$number = 1;
    while ($row = mysqli_fetch_array($results) ) {

$data1.= '       
                                            <tbody>
                                                <tr>
                                                    <td class="center">'.$number.'</td>
                                                    
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['desciptionfreetext'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['PNRnumbers'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['potentialsales'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['salesamount'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['refundleadssalesamount'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['leadssalesProfit'].'</td>
                                                   
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['Departure_Date'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['Return_Date'].'</td>
                                                    
                                                </tr>
                                           ';



                                    $number++;

    }







$data1.=' </tbody>
                                        </table>
                                    </div><div class="row">
                                        <div class="col-lg-4 col-sm-5">
                                        </div>
                                        <div class="col-lg-4 col-sm-5 ml-auto">
                                            <table class="table table-clear">
                                                <tbody>
                                                    <tr>
                                                        <td class="left">
                                                            <strong class="text-dark">Total Refund of this Month</strong>
                                                        </td>
                                                        <td class="right" id="invoiceclientsubtotal">'.$displayqueryforsucesstotaldisplayrows[3].'</td>
                                                    </tr>
                                                  
                                                
                                                        <tr><td class="left">
                                                            <strong class="text-dark">Total Cost This Month</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[2].'</strong>
                                                        </td>
                                                    </tr>
                                                    <tr><td class="left">
                                                            <strong class="text-dark">Total Sales This Month</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[0].'</strong>
                                                        </td>
                                                    </tr>
                                                    <tr><td class="left">
                                                            <strong class="text-dark">Total Profit This Month</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[1].'</strong>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer bg-white">
                                    <p class="mb-0">Sialkot Company complete adrees and phone no</p>
                                </div>
                            </div>
                        </div>
                    </div>


';
















}else{

$data1="No Data exsit of this user from this month";

}
















echo $data1;


	
}elseif ($hidden_invoice_user_id =="year" &&  $UniqueuserIDyearwise !="") {

$displayquery = "SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN sucesssales sus ON lds.leadsid = sus.salesleadid INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON lds.leadsid = ccd.client_contact_details_leads_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = '$UniqueuserIDyearwise' AND ldd.leadyeardate = '$UniqueIDnameYearyear' AND lds.Status = 'Sucess'";

$displayqueryforusersdisplay = "SELECT * FROM leads lds INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = '$UniqueuserIDyearwise'";
$displayqueryforusersdisplayresults = mysqli_query($conn,$displayqueryforusersdisplay);
$displayqueryforusersdisplayrows = mysqli_fetch_array($displayqueryforusersdisplayresults);
//total fare
$displayqueryforsucesstotaldisplay = "SELECT SUM(`potentialsales`),SUM(`leadssalesProfit`),SUM(`salesamount`),SUM(`refundleadssalesamount`) FROM sucesssales sus INNER JOIN leads lds ON sus.salesleadid = lds.leadsid INNER JOIN clients cln ON lds.leadsid = cln.clientid  INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON lds.leadsid = ccd.client_contact_details_leads_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = '$UniqueuserIDyearwise' AND ldd.leadyeardate = '$UniqueIDnameYearyear' AND lds.Status = 'Sucess'";
$displayqueryforsucesstotaldisplayresults = mysqli_query($conn,$displayqueryforsucesstotaldisplay);
$displayqueryforsucesstotaldisplayrows = mysqli_fetch_array($displayqueryforsucesstotaldisplayresults);


$results = mysqli_query($conn,$displayquery);

if(mysqli_num_rows($results) > 0){
$data1 = '





<button type="button" class="btn btn-primary btn-block" onclick="Getinvoicedetails(invoceusercomplete)">
                                                Print
                                            </button> <button type="button" class="close" data-dismiss="modal">×</button>

<div class="row">
                        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">

                            <div class="card" id="invoceusercomplete">
                                <div class="card-header p-4">
                                     
                                   <div class="float-right" id="invoiceclienttodaydate">Date:'.$today.'</div><br><h3 class="mb-0 float-right">Invoice Of '.$UniqueIDnameYearyear.'</h3>
                                    <div class="float-center"> <a class="navbar-brand" href="index.php">Web XPress</a>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-4">
                                        <div class="col-sm-6">
                                            <h5 class="mb-3">From:</h5>                                            
                                            <h3 class="text-dark mb-1" id="invoicestaffname">Administrator</h3>
                                         
                                            <div>Sialkot</div>
                                            <div>Street no</div>
                                            <div>Email: webxpress.pk@gaiml.com</div>
                                            <div>Phone: +923167658324</div>
                                        </div>


   








';
//SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN sucesssales sus ON lds.leadsid = sus.salesleadid INNER JOIN leadssearcdates ldd ON lds.leadsid = ldd.leadssearchidtable INNER JOIN client_contact_details ccd ON cln.Clientcontactid = ccd.client_contact_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid = 1 AND ldd.leadmonthdate = 7 AND ldd.leadyeardate = 2022;

if ($displayqueryforusersdisplayrows['type']==1) {
    $rank ="admin";
}else{$rank ="staff";}


$data1.='<div class="col-sm-6">
                                            <h5 class="mb-3">To:</h5>
                                            <h3 class="text-dark mb-1" id="invoiceclientname">'.$displayqueryforusersdisplayrows['name'].'</h3> 
                                            <h3 class="text-dark mb-1" id="invoiceclientname">'.$displayqueryforusersdisplayrows['username'].'</h3>                                            
                                            <div id="invoiceclientlocation">Unique User ID : '.$displayqueryforusersdisplayrows['id'].'</div>
                                            <div id="invoiceclienttype">Staff type: '.$rank.' </div>
                                           
                                        </div>
                                    </div>
                                    <div class="table-responsive-sm">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th class="center">#</th>
                                                    
                                                    <th>Description</th>
                                                    <th>PNR Number</th>
                                                    <th class="right">Fare</th>
                                                    <th class="right">Orignal Price</th>
                                                    <th class="right">Refund Amount</th>
                                                    <th class="right">Profit</th>
                                                 
                                                    <th class="right">Departure Date</th>
                                                    <th class="right">Return Date</th>
                                                </tr>
                                            </thead>';












$number = 1;
    while ($row = mysqli_fetch_array($results) ) {

$data1.= '       
                                            <tbody>
                                                <tr>
                                                    <td class="center">'.$number.'</td>
                                                    
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['desciptionfreetext'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['PNRnumbers'].'</td>
                                                     <td class="left strong" id="invoiceleadtitle">'.$row['potentialsales'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['salesamount'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['refundleadssalesamount'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['leadssalesProfit'].'</td>
                                                    
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['Departure_Date'].'</td>
                                                    <td class="left strong" id="invoiceleadtitle">'.$row['Return_Date'].'</td>
                                                    
                                                </tr>
                                           ';



                                    $number++;

    }







$data1.=' </tbody>
                                        </table>
                                    </div><div class="row">
                                        <div class="col-lg-4 col-sm-5">
                                        </div>
                                        <div class="col-lg-4 col-sm-5 ml-auto">
                                            <table class="table table-clear">
                                                <tbody>
                                                    <tr>
                                                        <td class="left">
                                                            <strong class="text-dark">Total Refund of this year</strong>
                                                        </td>
                                                        <td class="right" id="invoiceclientsubtotal">'.$displayqueryforsucesstotaldisplayrows[3].'</td>
                                                    </tr>
                                                  
                                                
                                                        <tr><td class="left">
                                                            <strong class="text-dark">Total Cost This year</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[2].'</strong>
                                                        </td>
                                                    </tr>
                                                    <tr><td class="left">
                                                            <strong class="text-dark">Total Sales This Year</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[0].'</strong>
                                                        </td>
                                                    </tr>
                                                    <tr><td class="left">
                                                            <strong class="text-dark">Total Profit This Year</strong>
                                                        </td>
                                                        <td class="right">
                                                            <strong class="text-dark" id="invoiceclienttotal">'.$displayqueryforsucesstotaldisplayrows[1].'</strong>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer bg-white">
                                    <p class="mb-0">Sialkot Company complete adrees and phone no</p>
                                </div>
                            </div>
                        </div>
                    </div>


';



}else{

$data1="No Data exsit of this user from this year";

}





























echo $data1;

	
}else{
	$data1='Unique User id is empty';

echo $data1;

}



























	

}
