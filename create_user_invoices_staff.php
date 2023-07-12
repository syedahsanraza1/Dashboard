<div class="modal fade" id="userinvoicedetailsprint" tNewUserbindex="-1" role="dialog" aria-labelledby="updateexampleModalLabel" aria-hidden="true">

  <div class="modal-dialog" style="max-width: 1200px;" role="document">
    <div class="modal-content" id="userinvoicedetailsprintdata">

                                 
                             


</div></div></div>


















<div class="simple-card">
                                <ul class="nav nav-tabs" id="myTab5" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link border-left-0 active show" id="home-tab-simple" data-toggle="tab" href="#home-simple" role="tab" aria-controls="home" aria-selected="true">Find By Day</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tab-simple" data-toggle="tab" href="#profile-simple" role="tab" aria-controls="profile" aria-selected="false">Find By Month</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="contact-tab-simple" data-toggle="tab" href="#contact-simple" role="tab" aria-controls="contact" aria-selected="false">Find By Year</a>
                                    </li>
                                </ul>
                                <div class="tab-content" id="myTabContent5">
                                    <div class="tab-pane fade active show" id="home-simple" role="tabpanel" aria-labelledby="home-tab-simple">
                                       <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Search Invoice by date</h5>
                                <div class="card-body">
                                    <form class="needs-validation" novalidate="">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                
                                                <input type="text" class="form-control" id="UniqueuserID" placeholder="Unique ID" value="<?php echo $_SESSION["login_id"]; ?>" required="" hidden>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                               
                                                <input type="text" class="form-control" id="UniqueIDname" placeholder="Userame" value="<?php echo $_SESSION["login_name"]; ?>" required="" hidden>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            
                                        </div>
                                        <div class="form-row">
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="UniqueIDnameDay">Day</label>
                                                <input type="text" class="form-control" id="UniqueIDnameDay" placeholder="Day" required="">
                                                <div class="invalid-feedback">
                                                    Please provide a valid city.
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="UniqueIDnameMonth">Month</label>
                                                <input type="text" class="form-control" id="UniqueIDnameMonth" placeholder="Month" required="">
                                                <div class="invalid-feedback">
                                                    Please provide a valid state.
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="UniqueIDnameYear">Year</label>
                                                <input type="text" class="form-control" id="UniqueIDnameYear" placeholder="Year" required="">
                                                <div class="invalid-feedback">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                     
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <button type="button" data-toggle="modal" data-target="#userinvoicedetailsprint" class="btn btn-primary btn-block invo-det" onclick="getinvoicedetailsforuser('day')">Check</button>
                                            </div>
                                            
                                        </div>
                                        <div id="read1"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                                        
                                    </div>
                                    <div class="tab-pane fade" id="profile-simple" role="tabpanel" aria-labelledby="profile-tab-simple">
                                         <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Search Invoice by Month</h5>
                                <div class="card-body">
                                    <form class="needs-validation" novalidate="">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                
                                                <input type="text" class="form-control" id="UniqueuserIDmonthwise" placeholder="Unique ID" value="<?php echo $_SESSION["login_id"]; ?>" required="" hidden>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                              
                                                <input type="text" class="form-control" id="UniqueIDnamemonthwise" placeholder="Userame" value="<?php echo $_SESSION["login_name"]; ?>" required="" hidden>
                                                <div class="valid-feedback">
                                                    username
                                                </div>
                                            </div>
                                            
                                        </div>
                                        <div class="form-row">
                                           
                                            <div class="col-xl-6 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="UniqueIDnameMonth">Month</label>
                                                <input type="text" class="form-control" id="UniqueIDnameMonthmonth" placeholder="Month" required="">
                                                <div class="invalid-feedback">
                                                    Please provide a valid month.
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="UniqueIDnameYear">Year</label>
                                                <input type="text" class="form-control" id="UniqueIDnameYearmonth" placeholder="Year" required="">
                                                <div class="invalid-feedback">
                                                    Please provide a valid year.
                                                </div>
                                            </div>
                                            
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                <button type="button" data-toggle="modal" data-target="#userinvoicedetailsprint" class="btn btn-primary btn-block invo-det" onclick="getinvoicedetailsforuser('month')">Check</button>
                                            </div>
                                            
                                        </div>
                                        <div id="read2"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="contact-simple" role="tabpanel" aria-labelledby="contact-tab-simple">
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <h5 class="card-header">Search Invoice by Year</h5>
                                <div class="card-body">
                                    <form class="needs-validation" novalidate="">
                                        <div class="row">
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                
                                                <input type="text" class="form-control" id="UniqueuserIDyearwise" placeholder="Unique ID" value="<?php echo $_SESSION["login_id"]; ?>" required="" hidden>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                               
                                                <input type="text" class="form-control" id="UniqueIDnameyearwise" placeholder="Userame" value="<?php echo $_SESSION["login_name"]; ?>" required="" hidden>
                                                <div class="valid-feedback">
                                                    Looks good!
                                                </div>
                                            </div>
                                            
                                        </div>
                                        <div class="form-row">
                                           
                                            <div class="col-xl-12 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="UniqueIDnameYear">Year</label>
                                                <input type="text" class="form-control" id="UniqueIDnameYearyear" placeholder="Year" required="">
                                                <div class="invalid-feedback">
                                                    Please provide a valid zip.
                                                </div>
                                            </div>
                                           
                                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                                                
                                                <button type="button" data-toggle="modal" data-target="#userinvoicedetailsprint" class="btn btn-primary btn-block invo-det" onclick="getinvoicedetailsforuser('year')">Check</button>
                                            </div>
                                    
                                        </div>
                                         <div id="read3"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="read4"></div>
                       






                           



















<script type="text/javascript">
    


function getinvoicedetailsforuser(hidden_invoice_user_id){



//alert("Hello\nHow are you?");
                                    
                                  
                                
                                   var loginid = '<?php echo $_SESSION["login_id"]; ?>';
                                  var UniqueuserID = $('#UniqueuserID').val();
                                  var UniqueIDname = $('#UniqueIDname').val();
                                  var UniqueuserIDmonthwise = $('#UniqueuserIDmonthwise').val();
                                  var UniqueIDnamemonthwise = $('#UniqueIDnamemonthwise').val();
                                  var UniqueuserIDyearwise = $('#UniqueuserIDyearwise').val();
                                  var UniqueIDnameyearwise = $('#UniqueIDnameyearwise').val();
                                  var UniqueIDnameDay = $('#UniqueIDnameDay').val();
                                  var UniqueIDnameMonth = $('#UniqueIDnameMonth').val();
                                  var UniqueIDnameYear = $('#UniqueIDnameYear').val();
                                  var UniqueIDnameMonthmonth = $('#UniqueIDnameMonthmonth').val();
                                  var UniqueIDnameYearmonth = $('#UniqueIDnameYearmonth').val();
                                  var UniqueIDnameYearyear = $('#UniqueIDnameYearyear').val();
                                 
                                  
                                   var today = new Date();
                              
                                
                                 
                                   //alert(hidden_invoice_user_id);
            
                                    
                                    $.ajax({
                                          url: 'create_user_invoices_ajax_staff.php',
                                          type: 'post',
                                         
                                          data: {

                                            UniqueuserID : UniqueuserID,
                                            UniqueIDname : UniqueIDname,
                                            UniqueuserIDmonthwise : UniqueuserIDmonthwise,
                                            UniqueIDnamemonthwise : UniqueIDnamemonthwise,
                                            UniqueuserIDyearwise : UniqueuserIDyearwise,
                                            UniqueIDnameyearwise : UniqueIDnameyearwise,
                                            UniqueIDnameDay : UniqueIDnameDay,
                                            UniqueIDnameMonth : UniqueIDnameMonth,
                                            UniqueIDnameYear : UniqueIDnameYear,
                                            UniqueIDnameMonthmonth : UniqueIDnameMonthmonth,
                                             UniqueIDnameYearmonth : UniqueIDnameYearmonth,
                                             UniqueIDnameYearyear : UniqueIDnameYearyear,
                                            hidden_invoice_user_id : hidden_invoice_user_id,
                                            today : today
                                           
                                            

                                    

                     

                                               
                                          },

                                          success:function(data1,data2,data3,data4,status){
                                              $('#userinvoicedetailsprintdata').html(data1);
                                              $('#read3').html(data2);
                                            
                                            
                                                // readleadsRecords();

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



 function Getinvoicedetails(paravalue){

var backup = document.body.innerHTML;
var divcontent = document.getElementById("invoceusercomplete").innerHTML;
document.body.innerHTML = divcontent;
window.print();
document.body.innerHTML = backup;
location.reload();






















///var leadsinvoiceid   =  $('.invo-det').attr('data-id');
///alert();
        

      }                       



</script>

