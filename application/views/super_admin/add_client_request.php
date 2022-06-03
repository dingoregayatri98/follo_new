 <style type="text/css">
 
/*td {
  float: left;
  width: 16%;
 
}*/
  /*.mark {
    background-color: #d7ffe7 !important
  }

  .mark .gsearch{
    font-size: 20px
  }

  .unmark {
    background-color: #e8e8e8 !important
  }

  .unmark .gsearch{
    font-size: 10px
  }
  
  .marktext
  {
   font-weight:bold;
   background-color: antiquewhite;
  }*/

  .table td, .table th
  {
    padding: 0.15rem;
  }

 </style>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h5>Client Request Management</h5>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Client Request</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <label class="control-label col-md-0"></label>
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card">
            <?php
                  $error = $this->session->flashdata('error_msg');
                  if($error)
                  {
                    ?>
               <div class="alert alert-danger" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  <?php echo $this->session->flashdata('error_msg'); ?>                    
               </div>
               <?php } ?>
               <?php  
                  $success = $this->session->flashdata('success_msg');
                  if($success)
                  {
                    ?>
               <div class="alert alert-success" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                  <?php echo $this->session->flashdata('success_msg'); ?>
               </div>
               <?php } ?>
              <div class="card-header">                  
                  <div class="row">
                     <div class="col-sm-8">
                        <h3 class="card-title">Add Client Request Data</h3>
                     </div>                     
                  </div>
               </div>   
              <!-- /.card-header -->
              <!-- form start --> 
              <form role="form" name="add_biling_data_form" action="<?php echo base_url('Super_admin/add_client_req'); ?>" enctype="multipart/form-data" method="POST" onsubmit="return validateForm()" novalidate>
                <div class="card-body">
                    <div class="row col-md-12">
                        <div class="col-md-2">
                             <div class="form-group">
                              <label>Date<span style="color: red">*</span></label>
                              <div class="input-group">
                                 <!-- <div class="input-group-prepend">
                                   <span class="input-group-text"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                                 </div> -->
                                    <input type="date" class="form-control" name="rtf_date" placeholder="Supply date" id="curr_date" required="">
                               </div>                         
                            </div>
                         </div>
                        <div class="col-md-2">
                         <div class="form-group">
                          <label>Mode<span style="color: red">*</span></label>
                          <div class="input-group">
                            <!-- <div class="input-group-prepend">
                               <span class="input-group-text"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                            </div> -->
                            <select title="Select Currency Type" name="rtf_mode" class="form-control" required="" >
                                <option selected disabled hidden>Select Mode</option>
                                <?php 
                                  $mode = $this->Super_admin_model->get_subscriber_mode();
                                  foreach($mode as $op)
                                  { ?>
                                     <option value="<?= $op['transport_id'] ?>" ><?= $op['transportname'] ?></option> 
                                 <?php }

                                  ?> 
                                </select> 
                            </div>                         
                            </div>
                        </div>
                        <div class="col-md-2">
                         <div class="form-group">
                          <label>Job No<span style="color: red">*</span></label>
                          <div class="input-group">
                             <!-- <div class="input-group-prepend">
                               <span class="input-group-text"><span class="fas fa-film"></span></span>
                             </div> -->
                               <input type="text" class="form-control" name="rtf_jobno" placeholder="job no" id="job_no" oninput="this.value = this.value.toUpperCase()" required="">
                            </div>                         
                            </div>
                        </div>

                        <div class="col-md-2">
                         <div class="form-group">
                          <label>PO No<span style="color: red">*</span></label>
                          <div class="input-group">
                             <!-- <div class="input-group-prepend">
                               <span class="input-group-text"><span class="fas fa-film"></span></span>
                             </div> -->
                               <input type="text" class="form-control" name="rtf_po_no" placeholder="Po no" required="" oninput="this.value = this.value.toUpperCase()">
                           </div>                         
                          </div>
                        </div>

                        <div class="col-md-4">
                        <div class="form-group">
                          <label>Bill To<span style="color: red">*</span></label>
                          <div class="input-group">
                            <!-- <div class="input-group-prepend">
                               <span class="input-group-text"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                            </div> -->
                            <select  name="rtf_billto" class="form-control" y>
                                <option selected disabled hidden>Select Client</option>
                                  <?php

                                  foreach($option_val as $op1)
                                  { ?>
                                     <option 
                                        value="<?= $op1['rtf_billto'] ?>"  < > <?= $op1['rtf_billto_text']; ?> </option> 
                                 <?php
                                  }

                                  ?>
                                                   
                                </select> 
                            </div>                         
                        </div>
                    </div>
                </div>

                <div class="row col-md-12 job_no_availability" style="display:none">
                    <div class="col-md-3">
                        <label></label>
                    </div>
                  </div>

                <div class="row col-md-12">
                    <div class="col-md-2">
                         <div class="form-group">
                          <label>From<span style="color: red">*</span></label>
                          <div class="input-group">
                             <!-- <div class="input-group-prepend">
                               <span class="input-group-text"><span class="fas fa-film"></span></span>
                             </div> -->
                               <input type="text" class="form-control" name="rtf_from" placeholder="From" required="" oninput="this.value = this.value.toUpperCase()">
                           </div>
                         
                        </div>
                     </div>
                     <div class="col-md-2">
                             <div class="form-group">
                              <label>Date of pickup<span style="color: red">*</span></label>
                              <div class="input-group">
                                 <!-- <div class="input-group-prepend">
                                   <span class="input-group-text"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                                 </div> -->
                                    <input type="date" class="form-control" name="rtf_datepickup" placeholder="Date of pickup" required="">
                               </div>                         
                            </div>
                     </div>
                     <div class="col-md-2">
                         <div class="form-group">
                          <label>To<span style="color: red">*</span></label>
                          <div class="input-group">
                             <!-- <div class="input-group-prepend">
                               <span class="input-group-text"><span class="fas fa-film"></span></span>
                             </div> -->
                               <input type="text" class="form-control" name="rtf_to" placeholder="to" required="" oninput="this.value = this.value.toUpperCase()">
                           </div>                         
                        </div>
                     </div>

                     <div class="col-md-2">
                        <div class="form-group">
                          <label>Date of dropoff<span style="color: red">*</span></label>
                          <div class="input-group">
                            <!-- <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                            </div> -->
                            <input type="date" class="form-control" name="rtf_datedropoff" placeholder="Date of dropoff" required="">
                            </div>                        
                        </div>
                    </div>

                    <div class="col-md-4">
                         <div class="form-group">
                          <label>Quantity<span style="color: red">*</span></label>
                          <div class="input-group">
                             <!-- <div class="input-group-prepend">
                               <span class="input-group-text"><span class="fas fa-film"></span></span>
                             </div> -->
                               <input type="text" class="form-control" name="rtf_qty" placeholder="Quantity" required="">
                           </div>
                         
                        </div>
                     </div>
                </div>

                <div class="row col-md-12">              
                    <div class="col-md-6">
                         <div class="form-group">
                          <label>Job Scope<span style="color: red">*</span></label>
                          <div class="input-group">
                             <!-- <div class="input-group-prepend">
                               <span class="input-group-text"><span class="fas fa-film"></span></span>
                             </div> -->
                               <input type="text" class="form-control" name="rtf_job_scope" placeholder="Job Scope" required="" oninput="this.value = this.value.toUpperCase()">
                           </div>
                         
                        </div>
                     </div>
                </div>


                <div class="row col-md-12">                      
                      <div class="table-responsive "> 
                        <label>Drivers Information</label>
                        <table class="table" id="dynamic_field_driver" style="margin-top:10px"> 
                          <thead>
                            <tr>
                                <th>Truck Type</th>
                                <th>Truck No</th>
                                <th>Driver Name</th>
                                <th>Notes</th>
                                <th>Charge Type</th>
                                <th>Commission</th>
                            </tr>
                          </thead> 

                                <tr style="border:0px;">
                                
                                <td style="border:0px;">
                                <select title="Select Truck Type" name="truck_type[]" class="form-control" >
                                  
                                <option selected disabled hidden>Truck Type</option>T
                                  <?php

                                  foreach($truck_type1 as $truck_type)
                                  { ?>
                                     <option 
                                        value="<?= $truck_type['truck_type_id'] ?>"    > <?= $truck_type['truck_type_name']; ?> </option> 
                                 <?php
                                  }

                                  ?>     
                                       
                                </select>
                              </td> 

                                 <td style="border:0px;">
                                 <select title="Select Truck No" name="rtf_truck_no[]" class="form-control" required="" >
                                 <option selected disabled hidden>Truck No</option>T
                                  <?php

                                  foreach($truck_no1 as $truck_no)
                                  { 
                                    // echo $truck_no['truck_details_id']; ?>
                                     <option 
                                        value="<?= $truck_no['truck_details_id'] ?>"  > <?=$truck_no['prime_mover_no'].$truck_no['truck_no']; ?> </option> 
                                 <?php
                                  }

                                  ?>              
                                </select>
                              </td> 

                                 <td style="border:0px;">
                                 <select title="Driver Name" name="driver_name[]" class="form-control" required="" >
                                    <option selected disabled hidden>Driver Name</option>
                                    <?php

                                  foreach($driver_name1 as $driver_name)
                                  { ?>
                                     <option 
                                        value="<?= $driver_name['driver_details_id'] ?>"   > <?= $driver_name['driver_name']; ?> </option> 
                                 <?php
                                  }

                                  ?>                       
                                </select>
                              </td>

                                <td style="border:0px;"><input type="text" name="rtf_rate[]" placeholder="Notes" class="form-control name_list" value="" required=""></td> 
                                <td style="border:0px;">
                                <select title="Select Charge Type" name="charge_type_text[]" class="form-control" >
                                  
                                <option selected disabled hidden>Charge Type</option>T
                                  <?php

                                  foreach($truck_type1 as $truck_type)
                                  { ?>
                                     <option 
                                        value="<?= $truck_type['truck_type_id'] ?>"    > <?= $truck_type['truck_type_name']; ?> </option> 
                                 <?php
                                  }

                                  ?>     
                                       
                                </select>
                              </td> 

                                <td style="border:0px;"><input type="number" name="commission[]" placeholder="Commission" class="form-control name_list" value="" required=""></td>

                                <td style="width: 4%;border:0px;"><button type="button" name="add" id="add_driver" class="btn btn-sm btn-success">+</button></td>
                              </tr>  
                          </table>   
                                                   
                        </div>
                      </div>
                     

                      <br/>
                      <br/>
                  
                      <div class="row col-md-12">                      
                      <div class="table-responsive "> 
                        <label>Truck Statuses</label>
                        <table class="table" id="dynamic_field" style="margin-top:10px"> 
                          <thead>
                            <tr>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Current Position</th>
                                <th>Remark</th>                          
                            </tr>
                          </thead> 

                                <tr style="border:0px;">
                                
                                <td style="border:0px;"><p><input type="date" name="tmr_notes_date[]" placeholder="date" class="form-control name_list" required=""></p></td> 

                                 <td style="border:0px;"><input type="time" name="tmr_notes_time[]" placeholder="Time" class="form-control name_list" required=""></td> 

                                 <td style="border:0px;"><input type="text" name="tmr_notes_position[]" placeholder="current_position" class="form-control name_list" required=""></td>

                                <td style="border:0px;">
                                <input type="text" name="tmr_notes_remark_input[]" placeholder="Remark" style="display:none" id="txt_remark1" class="form-control name_list" required  >
                                  <select title="Remark" id="select_remark1" name="tmr_notes_remark_select[]" class="form-control" required >
                                 <option selected>Select Remark</option>
                                 <?php 

                                foreach($activity1 as $act)
                                { 
                                 
                                  ?>
                                  <option 
                                      value="<?= $act['id'] ?>"   > <?= $act['activityname']; ?> </option> 
                                 <?php
                               }
                             
                                ?>                       
                              </select>

                             

                              </td>
                                <td style="width:2%"><input type="checkbox" name="status_checkbox[]" id="status_checkbox" class="form-control "  value="1"  onclick='checkBoxclick(this);' title="free text" required="" ></td> 


                                <td style="width: 4%;border:0px;"><button type="button" name="add" id="add" class="btn btn-sm btn-success">+</button></td>
                              </tr>  
                          </table>   
                                                   
                        </div>
                      </div>                 
                
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary" id="submit_btn">Submit</button>

                
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
      </section>
    </div>
<!-- Content Wrapper. Contains page content -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript">
function checkBoxclick(checkbox) 
{

  var value = checkbox.value;
  if(checkbox.checked){
   

    
       $('#select_remark'+value).val("");
        $('#select_remark'+value).hide();
        $('#txt_remark'+value).show();
       
    }
    else{
      $('#txt_remark'+value).val("");
      $('#txt_remark'+value).hide();
     $('#select_remark'+value).show();   
    } 
} 

$('#job_no').keyup(function(){
        var job_no = $('#job_no').val();        
        $('.job_no_availability').css('display', '');
        if(job_no.length > 0)
        {                    
            $.ajax({
            url:"<?php echo base_url(); ?>Super_admin/check_job_no",
            method:"POST",
            data:{job_no:job_no},
            success:function(data)
            {   
              if(data.length>0)
              {
                $('.job_no_availability').html(data);    
                $("#submit_btn").prop( "disabled", true );
              }
              else
              {
                $('.job_no_availability').css('display', 'none');
                $("#submit_btn").prop( "disabled", false );
              }                      
            }
           })
        }
        if(job_no.length == 0)
        {
           $('.job_no_availability').css('display', 'none');
           $("#submit_btn").prop( "disabled", false ); 
        }  
           
    });

$(document).ready(function(){

var today = new Date();
var dd = ("0" + (today.getDate())).slice(-2);
var mm = ("0" + (today.getMonth() +　1)).slice(-2);
var yyyy = today.getFullYear();
today = yyyy + '-' + mm + '-' + dd ;
$("#curr_date").attr("value", today);


var i=1;

var i=500;

$('#add').click(function(){
  

i++;


$('#dynamic_field').append('<tr id="row'+i+'" class="dynamic-added"></td><td><input type="date" name="tmr_notes_date[]" placeholder="Date" class="form-control name_list" required /></td><td><input type="time" name="tmr_notes_time[]" placeholder="Time" class="form-control name_list" required /></td><td><input type="text" name="tmr_notes_position[]" placeholder="Current Position" class="form-control name_list" required /></td><td><input type="text" style="display:none" name="tmr_notes_remark_input[]" id="txt_remark'+i+'" placeholder="Remark" class="form-control name_list" required /><select title="Select Remark" name="tmr_notes_remark_select[]" class="form-control" required="" id="select_remark'+i+'" ><option value=""  selected disabled hidden>Select Remark</option></select></td><td style="width:2%"><input type="checkbox" name="status_checkbox[]" value="'+i+'"  onclick="checkBoxclick(this);"  class="form-control "  title="free text"></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-sm btn-danger btn btn_remove">X </button></td></tr>');

var activity = <?php echo json_encode($activity1) ?>;

for (let m = 0; m < activity.length; m++) 
{

  $("#select_remark"+i).append("<option value='"+activity[m].id+"'>"+activity[m].activityname+"</option>");  
}

});

$(document).on('click', '.btn_remove', function(){
var button_id = $(this).attr("id");
$('#row'+button_id+'').remove();
});





 var j=1;
// $('#add_driver').click(function(){ 
//   alert("hjj");exit;
//  var truck_type  = <?php echo json_encode($truck_type); ?>;
//  var len = truck_type.length;
//  alert(len);exit;
//  $('#dynamic_field_driver').append('<tr id="row_dr'+row_cnt+'" class="dynamic-added"></td><td style="border:0px;"><select title="Select Truck Type" name="truck_type[]" class="form-control" required="" id="truck_type'+j+'"><option value="">Truck Type</option></select></td><td style="border:0px;"><select title="Select Truck No" name="rtf_truck_no[]" class="form-control" required="" id="truck_no'+j+'"><option value="">Truck No</option></select></td><td style="border:0px;"><select title="Select Truck No" name="driver_name[]" class="form-control" required="" id="driver_name'+j+'"><option value="">Driver Name</option></select></td><td style="border:0px;"><input type="text" name="notes[]" placeholder="Notes" class="form-control name_list" value="" required=""></td><td style="border:0px;"><input type="text" name="commission[]" placeholder="Commission" class="form-control name_list" value="" required=""></td><td><button type="button" name="remove" id="'+row_cnt+'" class="btn btn-sm btn-danger btn btn_remove_driver">X </button></td></tr>');


// var truck_type = <?php echo json_encode($truck_type1) ?>;
// var truck_no = <?php echo json_encode($truck_no1) ?>;
// var driver_name = <?php echo json_encode($driver_name1) ?>;

// for (let m = 0; m < truck_type.length; m++) 
// {

//   $("#truck_type"+j).append("<option value='"+truck_type[m].truck_type_id+"'>"+truck_type[m].truck_type_name+"</option>");  
// }
// for (let n = 0; n < truck_no.length; n++) 
// {
//    $("#truck_no"+j).append("<option value='"+truck_no[n].truck_details_id+"'>"+truck_no[n].truck_no+"</option>");
// }

// for (let o = 0; o < driver_name.length; o++) 
// {
//   $("#driver_name"+j).append("<option value='"+driver_name[o].driver_details_id+"'>"+driver_name[o].driver_name + ' '+driver_name[o].  driver_last_name+"</option>");
// }
// j++;
// });*/

/*$(document).on('click', '.btn_remove_driver', function(){
var button_id = $(this).attr("id");
$('#row_dr'+button_id+'').remove();
});*/


j=1;
$('#add_driver').click(function(){
  var truck_type  = <?php echo json_encode($truck_type); ?>;
   $('#dynamic_field_driver').append('<tr id="row_dr'+j+'" class="dynamic-added"></td><td style="border:0px;"><select title="Select Truck Type" name="truck_type[]" class="form-control" required="" id="truck_type'+j+'"><option value="">Truck Type</option></select></td><td style="border:0px;"><select title="Select Truck No" name="rtf_truck_no[]" class="form-control" required="" id="truck_no'+j+'"><option value="">Truck No</option></select></td><td style="border:0px;"><select title="Select Truck No" name="driver_name[]" class="form-control" required="" id="driver_name'+j+'"><option value="">Driver Name</option></select></td><td style="border:0px;"><input type="text" name="rtf_rate[]" placeholder="Notes" class="form-control name_list" value="" required=""></td><td style="border:0px;"><select title="Select Truck Type" name="charge_type_text[]" class="form-control" required="" id="charge_type_text'+j+'"><option value="">Charge Type</option></select></td><td><input type="text" name="commission[]" placeholder="Commission" class="form-control name_list" value="" required=""></td><td><button type="button" name="remove" id="'+j+'" class="btn btn-sm btn-danger btn btn_remove_driver">X </button></td></tr>');
var truck_type = <?php echo json_encode($truck_type1) ?>;
var truck_no = <?php echo json_encode($truck_no1) ?>;
var driver_name = <?php echo json_encode($driver_name1) ?>;

for (let m = 0; m < truck_type.length; m++) 
{

  $("#truck_type"+j).append("<option value='"+truck_type[m].truck_type_id+"'>"+truck_type[m].truck_type_name+"</option>");
  $("#charge_type_text"+j).append("<option value='"+truck_type[m].truck_type_id+"'>"+truck_type[m].truck_type_name+"</option>");  
  
}


for (let n = 0; n < truck_no.length; n++) 
{
   $("#truck_no"+j).append("<option value='"+truck_no[n].truck_details_id+"'>"+truck_no[n].prime_mover_no+truck_no[n].truck_no+"</option>");
}

for (let o = 0; o < driver_name.length; o++) 
{
  $("#driver_name"+j).append("<option value='"+driver_name[o].driver_details_id+"'>"+driver_name[o].driver_name + ' '+driver_name[o].  driver_last_name+"</option>");
}
   j++;
});

$(document).on('click', '.btn_remove_driver', function(){
var button_id = $(this).attr("id");
$('#row_dr'+button_id+'').remove();
});

/*var max_fields_limit      = 2; //set limit for maximum input fields
    var x = 1; //initialize counter for text box
    $('.add_more_button').click(function(e){ //click event on add more fields button having class add_more_button
        e.preventDefault();
        if(x < max_fields_limit){ //check conditions
            x++; //counter increment
            $('.input_fields_container').append('<div><input type="text" name="product_name[]"/><a href="#" class="remove_field" style="margin-left:10px;">Remove</a></div>'); //add input field
        }
    });  
    $('.input_fields_container').on("click",".remove_field", function(e){ //user click on remove text links
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })*/


});
</script>



