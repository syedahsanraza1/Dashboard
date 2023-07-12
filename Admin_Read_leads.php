<?php 

include('db_connect.php');

extract($_POST);


if (isset($_POST['readleadsRecords'])) {

$data = '





<style>
        .header {
            position: sticky;
            top:0;
        }
        .container {
            width: 1100px;
            height: 800px;
            overflow: auto;
        }
        h1{
            color: green;
        }
    </style>
</head>
  

    <div class="container"><div class="card">
        
    <table class="table table-striped table-bordered">
    <thead style="position: sticky;top: 000" class="">

            <tr><th class="header" scope="col" colspan="8" >
            <button type="button" data-toggle="modal" data-target="#Newleads" class="btn btn-primary btn-block"   >
                                                Ceate a lead
                                            </button></th>
                
            </tr>
        </thead>
        <thead style="position: sticky;top: 50" class="thead-dark">

            <tr><th class="header" scope="col">
           #</th>
                
                <th class="header" scope="col">Contact Person</th>
                <th class="header" scope="col">Contact Number</th>
                <th class="header" scope="col">Service</th>
                <th class="header" scope="col">Service date</th>
                <th class="header" scope="col">Lead Title</th>
                <th class="header" scope="col">Taken On</th>
                <th class="header" scope="col">Pirority</th>
            </tr>
        </thead>


   








';



$displayquery = "SELECT * FROM `leads`";

$results = mysqli_query($conn,$displayquery);

if(mysqli_num_rows($results) > 0){
$number = 1;
    while ($row = mysqli_fetch_array($results) ) {
        
       $userdisplay=$row['Userid'];
        
        $userdisplayquery = "SELECT * FROM `users` WHERE id='$userdisplay'";

$userdisplayqueryresult = mysqli_query($conn,$userdisplayquery);
$userdisplayqueryresultrow = mysqli_fetch_array($userdisplayqueryresult);



$servicedisplay=$row['leadsid'];
        
        $servicedisplayquery = "SELECT * FROM `services` WHERE leadid='$servicedisplay'";

$servicedisplayqueryresult = mysqli_query($conn,$servicedisplayquery);
$servicedisplayqueryresultrow = mysqli_fetch_array($servicedisplayqueryresult);

$servicedisplayquerys = "SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN client_contact_details ccd ON cln.Clientcontactid = ccd.client_contact_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.leadsid = '$servicedisplay'";

$servicedisplayqueryresults = mysqli_query($conn,$servicedisplayquerys);
$servicedisplayqueryresultrows = mysqli_fetch_array($servicedisplayqueryresults);



$alertdisplayquery = "SELECT * FROM `leadsalert` WHERE alertleadid = '$servicedisplay' AND alertstatus = 1";

$alertdisplayqueryresults = mysqli_query($conn,$alertdisplayquery);
$alertdisplayqueryresultsrows = mysqli_fetch_array($alertdisplayqueryresults);
if(mysqli_num_rows($alertdisplayqueryresults) > 0){$alertdisplayalertTime = $alertdisplayqueryresultsrows['alertTime'];
$alertdisplayalertTimeid = $alertdisplayqueryresultsrows['alertid'];
  echo                                  
     '<script type="text/javascript">

  

var timer = "10000020230606";
var dest = new Date("Jun 24, 2022 00:00:00").getTime();
var dests = new Date("Jun 24, 2022 00:01:00").getTime();
var x = setInterval(function(){



var differ = dests - dest ;

var now = new Date().getTime();

var diff = '.$alertdisplayalertTime.' - now ;

console.log();

var days = Math.floor(diff/(1000*60*60*24));

var hours = Math.floor((diff % (1000*60*60*24))/(1000*60*60));


var minutes = Math.floor((diff % (1000*60*60))/(1000*60));


var seconds = Math.floor((diff % (1000*60))/(1000));







var xalert = '.$alertdisplayalertTime.';
console.log(days);

if ( xalert > 0){
if ( diff > 0){



 document.getElementById("'.$number.'").innerHTML = days + "d, " + hours + "hrs: " + minutes + "m: " + seconds + "s"
 document.getElementById("'.$number.'2").innerHTML = "Waiting"


} 
else if (diff < 0) {

 
 document.getElementById("'.$number.'2").innerHTML = "Get Back to the client" 

 document.getElementById("'.$number.'1").className = "fas fa-fw fa-bell";
document.getElementById("'.$number.'4").className = "btn btn-rounded btn-danger";

}
else {
   
 
 document.getElementById("'.$number.'2").innerHTML = "error"


}
}else {
 document.getElementById("'.$number.'").innerHTML = ""


}



}, 1000);  </script>'; 


}else{ $alertdisplayalertTime = 0;   $alertdisplayalertTimeid = "1";}



        $leadsds = $servicedisplayqueryresultrows['Status'];

if ($leadsds == "Sucess") {
  $leadsdss ="<i class='fa fa-plane fa-fw fa-sm text-info'></i>";
  
}
else{
$leadsdss ="<i class='fa fa-plus-circle fa-fw fa-sm text-info'></i>";
   
}


        $data.= '


        <tbody>
            <tr>
                <td>'.$number.'</td>
                <td  ><a href="" data-toggle="modal" data-target="#leadleader" onclick="Getledgerdetails('.$servicedisplayqueryresultrows['clientid'].')"  >'.$servicedisplayqueryresultrows['First_name'].'</a></td>
                <td>'.$servicedisplayqueryresultrows['primaryphone'].'</td>
                <td>
'.$leadsdss.'
                </td>

                <td>'.$servicedisplayqueryresultrows['Departure_Date'].'</td>
                
                <td>'.$row['leadtitle'].'</td>
                <td>'.$row['Taken_On'].'</td>
                <td>'.$servicedisplayqueryresultrows['Pirority'].'</td>
            </tr>
<tr>
<td></td>
                                                <td>Remarks</td>
                                                <td>Remarks</td>
                                                <td><p id="'.$number.'"></p></td>
                                                
                                                <td><a href="#" id="'.$number.'4" class=""  onclick="stopalertsRecords('.$alertdisplayalertTimeid.')"><i id="'.$number.'1" class="" ></i></a><p id="'.$number.'2"></p>

                                                

                                                
                                            


                                                </td>
                <td><a href="" data-toggle="modal" data-target="#updateNewUser"   class="btn btn-primary active" onclick="GetclientDetails('.$row['leadsid'].')" >View</a></td>
                <td><a href="" data-toggle="modal" data-target="#updateNewleadss" onclick="readalertsRecords('.$row['leadsid'].')" class="btn btn btn-light active">Work Space</a>
<input type="hidden" name="" id="alert_hidden_client_id">
<input type="hidden" value="'.$alertdisplayalertTimeid.'" name=""  id="alert_hidden_id_stop">
<input type="hidden" value="0" name=""  id="alert_hidden_id_stop_status">

                </td>

  </tr>






        

                                            
                                        </tbody>';


                              
    
                                        # code...
                                                                
 

$number++;
        
    }






}

$data.='</tbody></div>
                       </div>             
                            ';
                                    
                                    echo $data;
                           
 





    
}







if (isset($_POST['readalertsRecords'])) {

$data = '





        
    <table class="table table-striped table-bordered">
    
        <thead style="position: sticky;top: 50" class="thead-dark">

            <tr><th class="header" scope="col">
           #</th>
                
                <th class="header" scope="col">Alert Name</th>
                <th class="header" scope="col">Alert Details</th>
                <th class="header" scope="col">Alert Type</th>
                <th class="header" scope="col">Alert status</th>
                <th class="header" scope="col">Creation date</th>
                <th class="header" scope="col">End date</th>
                
            </tr>
        </thead>


   








';



$displayquery = "SELECT * FROM `leadsalert` WHERE alertleadid = '$alertid';";

$results = mysqli_query($conn,$displayquery);

if(mysqli_num_rows($results) > 0){
$number = 1;
    while ($row = mysqli_fetch_array($results) ) {
        
       


        $data.= '


 
                                





        <tbody>
            <tr>
                <td>'.$number.'</td>
                  <td>'.$row['alertname'].'</td>
                <td  ><a href="" data-toggle="modal" data-target="#leadleader" onclick="Getledgerdetails('.$row['alertleadid'].')"  >'.$row['alerttext'].'</a></td>
                <td>'.$row['Alerttype'].'</td>
             

                <td>'.$row['alertstatus'].'</td>
                
                <td>'.$row['alertcreatedon'].'</td>
                <td>'.$row['alertcompletedon'].'</td>
              
            </tr>







        

                                            
                                        </tbody>';




$number++;
        
    }






}

$data.='</tbody></div>
                       </div>             
                            ';
                                    
                                    echo $data;
                           
 





    
}





























if (isset($_POST['firstname']) && isset($_POST['lastname']) && isset($_POST['primaryphone'])  ) {


//$queryleads = "INSERT INTO `leads`(`leadno`,`leadsid`, `clientid`, `leadsector`, `leadtitle`, `Userid`, `Status`, `Taken_On`, `Action`, `Serviceid`, `Pirority`, `Repeatid`) VALUES ('Null','$date','$date','$leadsector','$leadtitle','$loginid','$status','$takendate','$action','$date','$action','$firstname$primaryphone$date')" ;

$queryleads = "INSERT INTO `leads`(`leadno`, `leadsid`, `clientid`, `leadsector`, `leadtitle`, `Userid`, `Status`, `Taken_On`, `Action`, `Serviceid`, `Pirority`, `Repeatid`, `salesidleads`, `PNRnumber`, `alertid`,`leadssearchid`) VALUES ('Null','$date','$date','$leadsector','$leadtitle','$loginid','$status','$takendate','$action','$date','$action','$firstname$primaryphone$date','$date','','$date','')";

mysqli_query($conn,$queryleads);

$querysales = "INSERT INTO `sucesssales`(`salesleadid`, `salesid`, `potentialsales`, `salesamount`, `PNRnumbers`, `salesdoneby`, `leaddoneby`, `salesdate`,`leadssalesProfit`,`refundleadssalescheck`,`refundleadssalesamount`) VALUES ('$date','','$Potentialsales','','','','$loginid','','','','')";

mysqli_query($conn,$querysales);

$queryclient = "INSERT INTO `clients`(`clientid`, `First_name`, `Last_name`, `Clientcontactid`, `Location`, `WebUser`, `Repeatid`,`clienttype`) VALUES ('$date','$firstname','$lastname','$firstname$primaryphone','$location','$webuser','$firstname$primaryphone$date','$customertype')" ;

mysqli_query($conn,$queryclient);

$queryclientcontact = "INSERT INTO `client_contact_details`(`client_contact_id`, `primaryphone`, `secoundryphone`, `primaryemail`, `secoundryemail`,`client_contact_details_leads_id`) VALUES ('$firstname$primaryphone','$primaryphone','$secoundaryphone','$emailaddress','','$date')" ;

mysqli_query($conn,$queryclientcontact);


$queryclientcontactrepeat = "INSERT INTO `repeatclient`(`Repeatid`, `Clientid`, `Leadids`, `Salesids`, `Refundids`) VALUES ('$firstname$primaryphone$date','$firstname$primaryphone','$date','$date','$date')" ;


mysqli_query($conn,$queryclientcontactrepeat);


$queryclientservice = "INSERT INTO `services`(`Serviceid`, `leadid`, `Service_Type`, `Trip_Type`, `Departure_Date`, `Return_Date`, `Airlineid`, `PAx_Details`, `Free_Text`, `Class_of_travel`, `desciptionfreetext`) VALUES ('$date','$date','$servicetype','$triptype','$departuredate','$returndate','$airline','$paxdetails','$freetext','$classoftravel','$freetext')" ;

mysqli_query($conn,$queryclientservice);

$queryleadsdate = "INSERT INTO `leadssearcdates`(`leadssearchidtable`, `leaddaydate`, `leadmonthdate`, `leadyeardate`, `leadsucessdaydate`, `leadsucessmonthdate`, `leadsucessyeardate`) VALUES ('$date','$dateleadsday','$dateleadsmonth','$dateleadsyear','','','')" ;

mysqli_query($conn,$queryleadsdate );





}

if (isset($_POST['alertstopid']) && isset($_POST['alertcompleedon']) && isset($_POST['alerthiddenidstopstatus'])  ) {


//$queryleads = "INSERT INTO `leads`(`leadno`,`leadsid`, `clientid`, `leadsector`, `leadtitle`, `Userid`, `Status`, `Taken_On`, `Action`, `Serviceid`, `Pirority`, `Repeatid`) VALUES ('Null','$date','$date','$leadsector','$leadtitle','$loginid','$status','$takendate','$action','$date','$action','$firstname$primaryphone$date')" ;

$queryalertstop = "UPDATE `leadsalert` SET `alertstatus`= '$alerthiddenidstopstatus',`alertcompletedon`= '$alertcompleedon' WHERE `alertid` = '$alertstopmainid'";


mysqli_query($conn,$queryalertstop);



}


if (isset($_POST['DeleteUser'])) {

$deleteUserid= $_POST['DeleteUser'];
$deleteUserquery = "DELETE FROM `users` WHERE id='$deleteUserid'";
mysqli_query($conn,$deleteUserquery);

    
}




////////
////update

////update

if (isset($_POST['idledger']) && isset($_POST['idledger']) !="") {

$updateclientid = $_POST['idledger'];
///$updateclientquery = "SELECT * FROM `leads` WHERE   leadsid = '$updateclientid'";
$updateclientquery = "SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN client_contact_details ccd ON lds.leadsid = ccd.client_contact_details_leads_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id INNER JOIN sucesssales susa ON lds.leadsid = susa.salesleadid WHERE lds.leadsid = '$updateclientid'";
//$updateclientquery = "SELECT srv.name AS invoivedes FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN client_contact_details ccd ON cln.Clientcontactid = ccd.client_contact_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id INNER JOIN sucesssales susa ON lds.leadsid = susa.salesleadid WHERE lds.leadsid = '$updateclientid'";
//"SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN client_contact_details ccd ON cln.Clientcontactid = ccd.client_contact_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN users usr ON lds.Userid = usr.id INNER JOIN sucesssales susa ON lds.leadsid = susa.salesleadid WHERE lds.leadsid = '$updateclientid'";


if (!$updateclientresult = mysqli_query($conn,$updateclientquery)) {
    exit(mysqli_error());
}


$updateclientresponse = array();

if (mysqli_num_rows($updateclientresult) > 0) {


while ($updateclientrow = mysqli_fetch_assoc($updateclientresult)) {
    $updateclientresponse = $updateclientrow;
}


    
}else{
   $updateclientresponse['status'] = 200;
   $updateclientresponse['message'] = "Data not found";


}


echo json_encode($updateclientresponse);




    
}
else{

$updateclientresponse['status'] = 200;
$updateclientresponse['message'] = "Invalid Request!";
}

///////update end

if (isset($_POST['id']) && isset($_POST['id']) !="") {

$updateclientid = $_POST['id'];
///$updateclientquery = "SELECT * FROM `leads` WHERE   leadsid = '$updateclientid'";
//SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN client_contact_details ccd ON cln.Clientcontactid = ccd.client_contact_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN sucesssales dns ON lds.leadsid = dns.salesleadid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.Userid =1 AND lds.Status="Sucess"
//SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN client_contact_details ccd ON cln.Clientcontactid = ccd.client_contact_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN sucesssales dns ON lds.leadsid = dns.salesleadid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.leadsid = '$updateclientid'

$updateclientquery = "SELECT * FROM leads lds INNER JOIN clients cln ON lds.leadsid = cln.clientid INNER JOIN client_contact_details ccd ON lds.leadsid = ccd.client_contact_details_leads_id INNER JOIN services srv ON lds.Serviceid = srv.Serviceid INNER JOIN sucesssales dns ON lds.leadsid = dns.salesleadid INNER JOIN users usr ON lds.Userid = usr.id WHERE lds.leadsid = '$updateclientid'";

if (!$updateclientresult = mysqli_query($conn,$updateclientquery)) {
    exit(mysqli_error());
}


$updateclientresponse = array();

if (mysqli_num_rows($updateclientresult) > 0) {


while ($updateclientrow = mysqli_fetch_assoc($updateclientresult)) {
    $updateclientresponse = $updateclientrow;
}


    
}else{
   $updateclientresponse['status'] = 200;
   $updateclientresponse['message'] = "Data not found";


}


echo json_encode($updateclientresponse);




    
}
else{

$updateclientresponse['status'] = 200;
$updateclientresponse['message'] = "Invalid Request!";
}


///////update end






if (isset($_POST['hidden_user_id'])) {
    $hidden_user_id = $_POST['hidden_user_id'];
    $updatefirstname = $_POST['updatefirstname'];
    $updateusername = $_POST['updateusername'];
    $updatepassword = $_POST['updatepassword'];
     $updateusertype = $_POST['updateusertype'];
    
     



   //                  $queryuserupdate ="UPDATE `users` SET `name`='$updatefirstname',`clientid`='$firstname$primaryphone',`leadsector`='$leadsector',`leadtitle`='$leadtitle',`Status`='$status',`Action`='$action' WHERE leadsid = '$hidden_clien_id'";
                        $queryuserupdate ="UPDATE `users` SET `name`='$updatefirstname',`username`='$updateusername',`password`='$updatepassword',`type`='$updateusertype' WHERE id = '$hidden_user_id'";


                      mysqli_query($conn,$queryuserupdate);



    # code...
}





///////update submmit start
if (isset($_POST['update_hidden_user_id'])) {
    $update_hidden_user_id = $_POST['update_hidden_user_id'];
    $updateclientfirstname = $_POST['updateclientfirstname'];
    $updateclientlastname = $_POST['updateclientlastname'];
    $updateclientprimaryphone = $_POST['updateclientprimaryphone'];
    $updateclientsecoundaryphone = $_POST['updateclientsecoundaryphone'];
    $updateclientsalesamount = $_POST['updateclientsalesamount'];
    $updateclientemailadress = $_POST['updateclientemailadress'];
    $updateclientcustomertype = $_POST['updateclientcustomertype'];
    $updateclientservicetype = $_POST['updateclientservicetype'];
    $updateclienttriptype = $_POST['updateclienttriptype'];
    $updateclientdeparturedate = $_POST['updateclientdeparturedate'];
    $updateclientreturndate = $_POST['updateclientreturndate'];
    $updateclientleadsector = $_POST['updateclientleadsector'];
    $updateclientleadtitle = $_POST['updateclientleadtitle'];
    $updateclientcareof = $_POST['updateclientcareof'];
    $updateclientlocation = $_POST['updateclientlocation'];
    $updateclientPNRnumber = $_POST['updateclientPNRnumber'];
    $updateclientcreatedby = $_POST['updateclientcreatedby'];
    $updateclienttakenoverby = $_POST['updateclienttakenoverby'];
    $updateclientstatus = $_POST['updateclientstatus'];
    $updateclientclassoftravel = $_POST['updateclientclassoftravel'];
    $updateclientaction = $_POST['updateclientaction'];
     $updateclientwebuser = $_POST['updateclientwebuser'];
      $updateclientairline = $_POST['updateclientairline'];
       $updateclientpaxdetails = $_POST['updateclientpaxdetails'];
        $updateclientfreetext = $_POST['updateclientfreetext'];
        $updateclientsalesid = $_POST['salesid'];
        $updateclientsalesdate = $_POST['salesdate'];
        $updateclientsalesdoneby = $_POST['update_hidden_lead_user_id'];
        $updateclientsalescheck = $_POST['update_salesrefund'];
        $leadsucessdaydate = $_POST['leadsucessdaydate'];
        $leadsucessmonthdate = $_POST['leadsucessmonthdate'];
        $leadsucessyeardate = $_POST['leadsucessyeardate'];
        if($updateclientsalescheck == "Refund"){
$updateclientsalesamountrefund = $updateclientsalesamount-$updateclientaction;
$updateclientsalesprofit = $updateclientsalesamountrefund-$updateclientlastname;

        }else{ $updateclientsalesprofit = $updateclientsalesamount-$updateclientlastname;}
        

     



                      $queryupdateleads ="UPDATE `leads` SET `Status`='$updateclientstatus',`Action`='$updateclientaction' WHERE leadsid = '$update_hidden_user_id'";

                      mysqli_query($conn,$queryupdateleads);


                      $querysucessleadsdates ="UPDATE `leadssearcdates` SET `leadsucessdaydate`='$leadsucessdaydate',`leadsucessmonthdate`='$leadsucessmonthdate',`leadsucessyeardate`='$leadsucessyeardate' WHERE leadssearchidtable = '$update_hidden_user_id'";

                      mysqli_query($conn,$querysucessleadsdates);


                       $queryupdatesucessleads ="UPDATE `sucesssales` SET `salesid`='$updateclientsalesid',`potentialsales`='$updateclientsalesamount',`salesamount`='$updateclientlastname',`PNRnumbers`='$updateclientpaxdetails',`salesdoneby`='$updateclientsalesdoneby',`salesdate`='$updateclientsalesdate',`leadssalesProfit`='$updateclientsalesprofit',`refundleadssalescheck`='$updateclientsalescheck',`refundleadssalesamount`='$updateclientaction' WHERE salesleadid = '$update_hidden_user_id'";

                      mysqli_query($conn,$queryupdatesucessleads);
        }
       

     //                  $queryupdateleads ="UPDATE `leads` SET `leadsector`='$updateclientleadsector',`leadtitle`='$updateclientleadtitle',`Status`='$updateclientstatus',`Action`='$updateclientlastname' WHERE leadsid = '$update_hidden_user_id'";

       //               mysqli_query($conn,$queryupdateleads);









///////update submmit start
if (isset($_POST['update_hidden_user_id'])) {
    $update_hidden_user_id = $_POST['update_hidden_user_id'];
    $updateclientfirstname = $_POST['updateclientfirstname'];
    $updateclientlastname = $_POST['updateclientlastname'];
    $updateclientprimaryphone = $_POST['updateclientprimaryphone'];
    $updateclientsecoundaryphone = $_POST['updateclientsecoundaryphone'];
    $updateclientsalesamount = $_POST['updateclientsalesamount'];
    $updateclientemailadress = $_POST['updateclientemailadress'];
    $updateclientcustomertype = $_POST['updateclientcustomertype'];
    $updateclientservicetype = $_POST['updateclientservicetype'];
    $updateclienttriptype = $_POST['updateclienttriptype'];
    $updateclientdeparturedate = $_POST['updateclientdeparturedate'];
    $updateclientreturndate = $_POST['updateclientreturndate'];
    $updateclientleadsector = $_POST['updateclientleadsector'];
    $updateclientleadtitle = $_POST['updateclientleadtitle'];
    $updateclientcareof = $_POST['updateclientcareof'];
    $updateclientlocation = $_POST['updateclientlocation'];
    $updateclientPNRnumber = $_POST['updateclientPNRnumber'];
    $updateclientcreatedby = $_POST['updateclientcreatedby'];
    $updateclienttakenoverby = $_POST['updateclienttakenoverby'];
    $updateclientstatus = $_POST['updateclientstatus'];
    $updateclientclassoftravel = $_POST['updateclientclassoftravel'];
    $updateclientaction = $_POST['updateclientaction'];
     $updateclientwebuser = $_POST['updateclientwebuser'];
      $updateclientairline = $_POST['updateclientairline'];
       $updateclientpaxdetails = $_POST['updateclientpaxdetails'];
        $updateclientfreetext = $_POST['updateclientfreetext'];
        $updateclientsalesid = $_POST['salesid'];
        $updateclientsalesdate = $_POST['salesdate'];
        $updateclientsalesdoneby = $_POST['update_hidden_lead_user_id'];
        $updateclientsalescheck = $_POST['update_salesrefund'];
        $leadsucessdaydate = $_POST['leadsucessdaydate'];
        $leadsucessmonthdate = $_POST['leadsucessmonthdate'];
        $leadsucessyeardate = $_POST['leadsucessyeardate'];
        if($updateclientsalescheck == "Refund"){
$updateclientsalesamountrefund = $updateclientsalesamount-$updateclientaction;
$updateclientsalesprofit = $updateclientsalesamountrefund-$updateclientlastname;

        }else{ $updateclientsalesprofit = $updateclientsalesamount-$updateclientlastname;}
        

     



                      $queryupdateleads ="UPDATE `leads` SET `leadsector`='$updateclientleadsector',`leadtitle`='$updateclientleadtitle',`Status`='$updateclientstatus',`Action`='$updateclientlastname' WHERE leadsid = '$update_hidden_user_id'";

                      mysqli_query($conn,$queryupdateleads);
                      ////new
                      
                      $queryupdateleadsclientsinfo ="UPDATE `clients` SET `First_name`='$updateclientfirstname',`Last_name`='$updateclientsecoundaryphone',`Location`='$updateclientlocation',`WebUser`='$updateclientwebuser',`clienttype`='$updateclientcustomertype' WHERE clientid = '$update_hidden_user_id'";

                      mysqli_query($conn,$queryupdateleadsclientsinfo);
                      
                      
                       $queryupdateleadsclientscontactinfo ="UPDATE `client_contact_details` SET `primaryphone`='$updateclientprimaryphone',`primaryemail`='$updateclientemailadress' WHERE client_contact_details_leads_id = '$update_hidden_user_id'";

                      mysqli_query($conn,$queryupdateleadsclientscontactinfo);
                      
                      
                      $queryupdateleadsclientsservices ="UPDATE `services` SET `Departure_Date`='$updateclientdeparturedate',`Return_Date`='$updateclientreturndate',`Trip_Type`='$updateclienttriptype',`Class_of_travel`='$updateclientclassoftravel',`Free_Text`='$updateclientfreetext',`desciptionfreetext`='$updateclientfreetext',`PAx_Details`='$updateclientPNRnumber',`Airlineid`='$updateclientairline' WHERE leadid = '$update_hidden_user_id'";

                      mysqli_query($conn,$queryupdateleadsclientsservices);
                      
                   
                      
                
/////new end

                      $querysucessleadsdates ="UPDATE `leadssearcdates` SET `leadsucessdaydate`='$leadsucessdaydate',`leadsucessmonthdate`='$leadsucessmonthdate',`leadsucessyeardate`='$leadsucessyeardate' WHERE leadssearchidtable = '$update_hidden_user_id'";

                      mysqli_query($conn,$querysucessleadsdates);


                       $queryupdatesucessleads ="UPDATE `sucesssales` SET `salesid`='$updateclientsalesid',`potentialsales`='$updateclientsalesamount',`salesamount`='$updateclientlastname',`PNRnumbers`='$updateclientpaxdetails',`salesdoneby`='$updateclientsalesdoneby',`salesdate`='$updateclientsalesdate',`leadssalesProfit`='$updateclientsalesprofit',`refundleadssalescheck`='$updateclientsalescheck',`refundleadssalesamount`='$updateclientaction' WHERE salesleadid = '$update_hidden_user_id'";

                      mysqli_query($conn,$queryupdatesucessleads);
        }
       

     //                  $queryupdateleads ="UPDATE `leads` SET `leadsector`='$updateclientleadsector',`leadtitle`='$updateclientleadtitle',`Status`='$updateclientstatus',`Action`='$updateclientlastname' WHERE leadsid = '$update_hidden_user_id'";

       //               mysqli_query($conn,$queryupdateleads);




///////update submmit end



////alert submit 

///////update submmit start
if (isset($_POST['updatealertidinput'])) {
    $updatealertidinput = $_POST['updatealertidinput'];
    $updatealertidtype = $_POST['updatealertidtype'];
    $updateAlertduration = $_POST['updateAlertduration'];
    $updatealertiddateid = $_POST['updatealertiddate'];
    $creationdate = $_POST['creationdate'];
    $updatealertidtext = $_POST['updatealertidtext'];
    $updatealertidnowtime = $_POST['nowtime'];
    $updatealerttotaltime = $updatealertidnowtime+$updateAlertduration ;

    
   

     
 $queryucancelallalerts ="UPDATE `leadsalert` SET `alertstatus`=0 WHERE alertleadid = '$updatealertidinput'";


                   //   $queryupdateleadsd ="UPDATE `leads` SET `leadsector`='$updateclientleadsector',`leadtitle`='$updateclientleadtitle',`Status`='$updateclientfirstname',`Action`='$updateclientlastname' WHERE leadsid = '$update_hidden_user_id'";

                      mysqli_query($conn,$queryucancelallalerts);

                     $querycreatnewalert ="INSERT INTO `leadsalert`(`alertleadid`, `alertid`, `alertstatus`, `alertTime`, `allalertstatus`, `Alerttype`, `Paxidalert`, `alertname`, `alerttext`, `alertcreatedon`, `alertcompletedon`) VALUES ('$updatealertidinput','$updatealertiddateid','1','$updatealerttotaltime','1','$updatealertidtype','$updatealertidtext','$updatealertidtext','$updatealertidtext','$creationdate','')";
                     mysqli_query($conn,$querycreatnewalert);




}