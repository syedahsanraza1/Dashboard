<?php if($_SESSION['login_type'] == 1): ?>

<!-- Modal -->
<div class="modal fade" id="NewUser" tNewUserbindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="NewUserheader">New User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <form action="" id="manage-user">
            <input type="hidden" name="id" value="">
            <div class="form-group">
                  <label for="name">Name</label>
                  <input type="text" name="userfirstname" id="userfirstname" class="form-control" value="" required="">
            </div>
            <div class="form-group">
                  <label for="username">Username</label>
                  <input type="text" name="userusername" id="userusername" class="form-control" value="" required="">
            </div>
            <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" name="password" id="userpassword" class="form-control" value="" required="">
            </div>
            <div class="form-group">
                  <label for="type">User Type</label>
                  <select name="usertype" id="usertype" class="custom-select">
                        <option value="1">Admin</option>
                        <option value="2">Staff</option>
                  </select>
            </div>


             <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"  >Close</button>
        <button type="button" class="btn btn-primary"  data-dismiss="modal"  id="submit"  onclick="addRecord()">Save changes</button>
      </div>
      </form>

     
        
       
      </div>
       </div>
     
    </div>
  </div>





<!--   update model-->



<!-- Modal -->
<div class="modal fade" id="updateNewUser" tNewUserbindex="-1" role="dialog" aria-labelledby="updateexampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="updateUserheader">Update User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <form action="" id="manage-user">
            <input type="hidden" name="id" value="">
            <div class="form-group">
                  <label for="updateuserfirstname">Name</label>
                  <input type="text" name="updateuserfirstname" id="updateuserfirstname" class="form-control" value="" required="">
            </div>
            <div class="form-group">
                  <label for="updateuserusername">Username</label>
                  <input type="text" name="updateuserusername" id="updateuserusername" class="form-control" value="" required="">
            </div>
            <div class="form-group">
                  <label for="updateuserpassword">Password</label>
                  <input type="password" name="updateuserpassword" id="updateuserpassword" class="form-control" value="" required="">
            </div>
            <div class="form-group">
                  <label for="updateusertype">User Type</label>
                  <select name="updateusertype" id="updateusertype" class="custom-select">
                        <option value="1">Admin</option>
                        <option value="2">Staff</option>
                  </select>
            </div>


             <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"  >Close</button>
        <button type="button" class="btn btn-primary"   id="submit"  onclick="updateuserdetails()">Save changes</button>
        <input type="hidden" name="" id="hidden_user_id">
      </div>
      </form>

     
        
       
      </div>
       </div>
     
    </div>
  </div>














 
</br>

                                                                       <div id="record_contant" >
                                                                         

                                                                         

                                                                       </div>  








                                                                       <script type="text/javascript">
                                                                       
                                                     $(document).ready(function() {

                            readuserRecords();
                            
                          });                                      
                                                                       
                                             function readuserRecords(){
                            var readuserRecords = "readuserRecords";
                            $.ajax({
                              url: 'Read_users.php',
                              type: 'post',
                              
                              data: {
                                readuserRecords : readuserRecords


                                

                            },
                            success:function(data,status){
                                $('#record_contant').html(data);

                              }






                            })
                            .done(function() {
                              console.log("success");
                            })
                            .fail(function() {
                              console.log("error");
                            })
                            .always(function() {
                              console.log("complete");
                              
                            });
                            




                          } 















/////////user add



function addRecord(){


                                    var userfirstname = $('#userfirstname').val();
                                    var userusername = $('#userusername').val();
                                    var userpassword = $('#userpassword').val();
                                    var usertype = $('#usertype').val();
                                   
                                    
                                    $.ajax({
                                          url: 'Read_users.php',
                                          type: 'post',
                                         
                                          data: {userfirstname : userfirstname,
                                                userusername : userusername,
                                                userpassword : userpassword,
                                                usertype : usertype
                                               
                                          },

                                          success:function(data,status){
                                                 readuserRecords();

                                          }
                                    })
                                    .done(function() {
                                          console.log("success");
                                    })
                                    .fail(function() {
                                          console.log("error");
                                    })
                                    .always(function() {
                                          console.log("complete");
                                    });
                                    

                              }   


////////DeleteUser
function DeleteUser(deleteid){

var conf = confirm("Are you sure");

if (conf==true) {

$.ajax({
      url: "Read_users.php",
      type: "post",
     
      data: {DeleteUser:deleteid},
success:function(data,status){
                                                 readuserRecords();

                                          }


})
.done(function() {
      console.log("success");
})
.fail(function() {
      console.log("error");
})
.always(function() {
      console.log("complete");
});



}



}











/////update model




function GetclientDetails(id){
                                    $('#hidden_clien_id').val(id);


                                    $.post('Read_users.php', 

                                          {

                                                id : id
                                        },

                                    function(data,Status)
                                  {
                                          /*optional stuff to do after success */
                                         
                                          var clients = JSON.parse(data);


                                          $('#updateuserfirstname').val(clients.name);
                                          $('#updateuserusername').val(clients.username);
                                          $('#updateuserpassword').val(clients.password);
                                          $('#updateusertype').val(clients.type);
                                          $('#hidden_user_id').val(clients.id);
                                         

                                    


                                    }
                                    );


                                 $('#updateNewUser').modal("show");





                              }

///////update model

//////update model

/*update submit start */

function updateuserdetails(){

   
                                
                                var updatefirstname = $('#updateuserfirstname').val();
                                    var updateusername = $('#updateuserusername').val();
                                    var updatepassword = $('#updateuserpassword').val();
                                    var updateusertype = $('#updateusertype').val();
                                    var hidden_user_id = $('#hidden_user_id').val(); 
                                  

                                    $.post('Read_users.php', {





                                          
                                                 hidden_user_id : hidden_user_id,
                                                updatefirstname : updatefirstname,
                                                updateusername : updateusername,
                                                updatepassword : updatepassword,
                                                updateusertype : updateusertype
                                               

                                          }, 



                                          function(data,Status) {
                                          /*optional stuff to do after success */

                                          $('#updateNewUser').modal("hide");
                                          readuserRecords();
                                    });








}


/*update submit end */

                             

</script>




 <?php endif; ?>

























                    