<?php 

include('db_connect.php');

extract($_POST);

if (isset($_POST['readuserRecords'])) {

$data = '



    
  
 
   

<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card"><center>  
                            <h3 class="card-header">Admin panael Users</h7>  
                            <a  type="button" class="btn btn-primary active" data-toggle="modal" data-target="#NewUser">
                                                            New User
                                                        </a>  
                           
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered first">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>Unique User ID</th>
                                                <th>User name</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                              
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                      
                                      














































';



$displayuserquery = "SELECT * FROM `users`";

$userresults = mysqli_query($conn,$displayuserquery);

if(mysqli_num_rows($userresults) > 0){
$number = 1;
	while ($rowuser = mysqli_fetch_array($userresults) ) {
	    
	  


	    

		$data.= '

<tr>
                                                <td>'.$number.'</td>
                                                <td>'.$rowuser ['username'].' </td>
                                                <td>'.$rowuser ['id'].' </td>
                                                <td>  '.$rowuser ['name'].' </td>
                                                <td> <center>
                                <div class="btn-group show">
                                <a data-toggle="modal" data-target="#update_client_id"   onclick="GetclientDetails('.$rowuser['id'].')" class="btn btn-primary active">Edit</a>
                                



                                 
                                </div>
                                </center></td>
                                                <td> <center>
                                <div class="btn-group show">
                                <a data-toggle="modal" data-target="#update_client_id"  onclick="DeleteUser('.$rowuser['id'].')" class="btn btn-danger active">Delete</a>

                                 </div>
                                </center></td>
                                               
                                            </tr>















       ';

$number++;

		
	}






}

$data.='        
        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>User name</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                               
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                           















                            ';
                                    
                                    echo $data;
                                    
                                    
                                    
                                    




	
}


if (isset($_POST['userfirstname']) && isset($_POST['userusername']) && isset($_POST['userpassword']) && isset($_POST['usertype'])) {
    # code...

$addusers = "INSERT INTO `users`(`id`, `doctor_id`, `name`, `address`, `contact`, `username`, `password`, `type`) VALUES ('Null','Null','$userfirstname','Null','Null','$userusername','$userpassword','$usertype')";

mysqli_query($conn,$addusers);


}




if (isset($_POST['firstname']) ) {


$queryleads = "INSERT INTO `leads`(`leadno`,`leadsid`, `clientid`, `leadsector`, `leadtitle`, `Userid`, `Status`, `Taken On`, `Action`, `Serviceid`, `Pirority`, `Repeatid`) VALUES ('Null','$date','$date','$leadsector','$leadtitle','$loginid','$status','$takendate','$action','$date','$action','$firstname$primaryphone$date')" ;

mysqli_query($conn,$queryleads);

$queryclient = "INSERT INTO `clients`(`clientid`, `First name`, `Last name`, `Clientcontactid`, `Location`, `WebUser`, `Repeatid`) VALUES ('$date','$firstname','$lastname','$firstname$primaryphone','$location','$webuser','$firstname$primaryphone$date')" ;

mysqli_query($conn,$queryclient);

$queryclientcontact = "INSERT INTO `client_contact_details`(`client_contact_id`, `primaryphone`, `secoundryphone`, `primaryemail`, `secoundryemail`) VALUES ('$firstname$primaryphone','$primaryphone','$secoundaryphone','$emailaddress','')" ;

mysqli_query($conn,$queryclientcontact);


$queryclientcontactrepeat = "INSERT INTO `repeatclient`(`Repeatid`, `Clientid`, `Leadids`, `Salesids`, `Refundids`) VALUES ('$firstname$primaryphone$date','$firstname$primaryphone','$date','$date','$date')" ;


mysqli_query($conn,$queryclientcontactrepeat);


$queryclientservice = "INSERT INTO `services`(`Serviceid`, `leadid`, `Service Type`, `Trip Type`, `Departure Date`, `Return Date`, `Airlineid`, `PAx Details`, `Free Text`, `Class of travel`, `name`) VALUES ('$date','$date','$servicetype','$triptype','$departuredate','$returndate','$airline','$paxdetails','$freetext','$classoftravel','$freetext')" ;

mysqli_query($conn,$queryclientservice);





}




if (isset($_POST['DeleteUser'])) {

$deleteUserid= $_POST['DeleteUser'];
$deleteUserquery = "DELETE FROM `users` WHERE id='$deleteUserid'";
mysqli_query($conn,$deleteUserquery);

    
}




////////
////update

if (isset($_POST['id']) && isset($_POST['id']) !="") {

$updateclientid = $_POST['id'];
$updateclientquery = "SELECT * FROM `users` WHERE id = '$updateclientid'";

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






///////update submmit end