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
                        <h3 class="card-title">Update Client Request Data</h3>
                     </div>                     
                  </div>
               </div>                
              <!-- /.card-header -->
              <!-- form start --> 
              <form  action="<?php echo base_url('Super_admin/edit_client_req'); ?>" method="POST" novalidate>
                <div class="card-body">
                    <div class="row col-md-12">
                        <div class="col-md-2">
                             <div class="form-group">
                              <label>Date<span style="color: red">*</span></label>
                              <div class="input-group">
                                 <!-- <div class="input-group-prepend">
                                   <span class="input-group-text"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                                 </div> -->

                             <?php  
                             
                           
                              $array1 = explode(' ', date('Y-m-d h:i', strtotime($truck_data['rtf_date'])));
                              $date_temp = $array1[0];

                              $array2 = explode(' ', date('Y-m-d h:i', strtotime($truck_data['rtf_datepickup'])));
                              $rtf_datepickup = $array2[0];

                              $array3 = explode(' ', date('Y-m-d h:i', strtotime($truck_data['rtf_datedropoff'])));
                              $rtf_datedropoff = $array3[0];



                         ?>
                                    <input type="date" class="form-control" name="rtf_date" placeholder="Supply date" required="" value='<?= $date_temp; ?>' readonly>
                                    <input type="hidden" class="form-control" name="rtf_id" placeholder="Supply date" required="" value='<?=  $truck_data['rtf_id']; ?>'>

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
                                <select title="Select Currency Type" name="rtf_mode" class="form-control" required="" readonly>
                                <option selected disabled hidden>Select Mode</option>
                                  <?php

                                  foreach($option_val as $op)
                                  { ?>
                                     <option value="<?= $op['rtf_mode'] ?>" <?php if($op['rtf_mode'] ==  $truck_data['rtf_mode']) echo 'selected="selected"'; ?>><?= $op['rtf_mode'] ?></option> 
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
                               <input type="text" class="form-control" name="rtf_jobno" placeholder="job no" required="" value="<?= $truck_data['rtf_jobno']; ?>" readonly>
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
                               <input type="text" class="form-control" name="rtf_po_no" placeholder="Po no" required="" value="<?= $truck_data['rtf_po_no']; ?>" readonly>
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
                                <select  name="rtf_billto" class="form-control" required="" readonly>
                                <option selected disabled hidden>Select Bill No</option>
                                  <?php

                                  foreach($option_val as $op1)
                                  { ?>
                                     <option 
                                        value="<?= $op1['rtf_billto'] ?>"  <?php if($op1['rtf_billto_text'] ==  $truck_data['rtf_billto_text']) echo 'selected="selected"'; ?>  > <?= $op1['rtf_billto_text']; ?> </option> 
                                 <?php
                                  }

                                  ?>
                                                   
                                </select> 
                            </div>                         
                        </div>
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
                               <input type="text" class="form-control" name="rtf_from" placeholder="From" required value="<?= $truck_data['rtf_from']; ?>" readonly>
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
                                    <input type="date" class="form-control" name="rtf_datepickup" placeholder="Date of pickup" required="" value="<?= $rtf_datepickup; ?>" readonly>
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
                               <input type="text" class="form-control" name="rtf_to" placeholder="to" required value="<?= $truck_data['rtf_to']; ?>" readonly>
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
                            <input type="date" class="form-control" name="rtf_datedropoff" placeholder="Date of dropoff" required="" value="<?= $rtf_datedropoff; ?>" readonly>
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
                               <input type="text" class="form-control" name="rtf_qty" placeholder="Quantity" required value="<?= $truck_data['rtf_qty']; ?>" id="rtf_qty" readonly>
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
                               <input type="text" class="form-control" name="rtf_job_scope" placeholder="Job Scope" required value="<?= $truck_data['rtf_job_scope']; ?>" readonly>
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
                                  <input type="hidden" id="driver_cnt" value="<?php echo count($truck_details);  ?>">
                            <?php  
                       
                          
                            if(count($truck_details) >0)
                            {
                            $row_cnt = 1;
                            foreach($truck_details as $truck_details)
                            { 

                            
                              
                            ?>

                            
                                <tr id="row_dr<?php echo $row_cnt; ?>" style="border:0px;">
                                
                                <td style="border:0px;">
                                <select title="Select Truck Type" name="truck_type[]" class="form-control" required="" >
                                  
                                <option selected disabled hidden>Truck Type</option>T
                                  <?php

                                  foreach($truck_type1 as $truck_type)
                                  { ?>
                                     <option 
                                        value="<?= $truck_type['truck_type_id'] ?>"  <?php if($truck_type['truck_type_id'] == $truck_details['rtf_truck_type']) echo 'selected="selected"'; ?>  > <?= $truck_type['truck_type_name']; ?> </option> 
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
                                        value="<?= $truck_no['truck_details_id'] ?>"  <?php if($truck_details['rtf_truck_no'] == $truck_no['truck_details_id']) echo 'selected="selected"'; ?>  > <?= $truck_no['prime_mover_no'].$truck_no['truck_no']; ?> </option> 
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
                                        value="<?= $driver_name['driver_details_id'] ?>"  <?php if($driver_name['driver_details_id'] ==$truck_details['rtf_driver_name'] ) echo 'selected="selected"'; ?>  > <?= $driver_name['driver_name']; ?> </option> 
                                 <?php
                                  }

                                  ?>                       
                                </select>
                              </td>

                                <td style="border:0px;">
                                <input type="text" name="rtf_rate[]" placeholder="Notes" class="form-control name_list" value="<?= $truck_details['rtf_rate']; ?>" required="" ></td> 


                                <td style="border:0px;">
                                <select title="Select Charge Type" name="charge_type_text[]" class="form-control" required="" >
                                  
                                <option selected disabled hidden>Charge Type</option>T
                                  <?php
                                  

                                  foreach($truck_type1 as $truck_type)
                                  { ?>
                                     <option 
                                        value="<?= $truck_type['truck_type_id'] ?>"  <?php if($truck_type['truck_type_id'] == $truck_details['rtf_truck_type']) echo 'selected="selected"'; ?>  > <?= $truck_type['truck_type_name']; ?> </option> 
                                 <?php
                                  }

                                  ?>     
                                       
                                </select>
                              </td> 
                                <td style="border:0px;"><input type="text" name="commission[]" placeholder="Commission" class="form-control name_list" value="<?= $truck_details['rtf_commision']; ?>" required=""></td>
                                <td style="width: 4%;">
                                   <?php
                                    if($row_cnt==1)
                                    { ?>
                                        <button type="button" name="add" id="add_driver" class="btn btn-sm btn-success">+</button>
                                  <?php  }
                                    else
                                    { ?>
                                      <button type="button" name="remove" id="<?php echo $row_cnt; ?>" class="btn btn-sm btn-danger btn btn_remove_driver">X </button>
                                    <?php }
                                    ?>
                                 
                                </td>  
                          
                             
                              </tr>  

                              <?php
                               $row_cnt ++;
                            }
                          }
                          ?>
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

                                <?php

                                  if(count($tmr_notes) > 0)
                                  {

                                  
                                   $status_cnt = 1;
                                   foreach($tmr_notes as $tmr_notes)
                                   {
                                    $activity = $this->Super_admin_model->get_activity_name();

                                     
                                     ?>
                                      <tr style="border:0px;" id="row<?php echo $status_cnt; ?>">
                                
                                      <td style="border:0px;"><p><input type="date" name="tmr_notes_date[]" placeholder="date" class="form-control name_list" required="" value="<?php echo $tmr_notes['tmr_notes_date'] ;?>"></p></td> 

                                      <td style="border:0px;"><input type="time" name="tmr_notes_time[]" placeholder="Time" class="form-control name_list" required="" value="<?php echo $tmr_notes['tmr_notes_time']; ?>"></td> 

                                      <td style="border:0px;"><input type="text" name="tmr_notes_position[]" placeholder="Current position" class="form-control name_list" required="" value="<?php echo $tmr_notes['tmr_notes_position']; ?>"></td>

                                      <td style="border:0px;">
                                     
                                        <?php
                                        $tmr_notes_remark = $tmr_notes['tmr_notes_remark'];
 
                                        $activity_name = $this->Super_admin_model->get_remark($tmr_notes_remark); 
                                       

                                        if(empty($activity_name))
                                        {
                                          $style = "inline";
                                          $drop = "none";
                                          $value = $tmr_notes['tmr_notes_remark'];
                                        }
                                        else
                                        {
                                          $style = "none";
                                          $drop = "inline";
                                          $value = "";
                                        }
    
                                        ?>
                                        <input type="text" name="tmr_notes_remark_input[]" placeholder="Remark" id="txt_remark<?php echo $status_cnt; ?>" class="form-control name_list" required="" value="<?php echo $value; ?>" style="display:<?php echo $style;  ?>">
                                        <select title="Remark" id="select_remark<?php echo $status_cnt; ?>" name="tmr_notes_remark_select[]" class="form-control" required="" style="display:<?php echo $drop;  ?>">
                                       <option selected disabled hidden>Select Remark</option>
                                     
                                       <?php 
                                      foreach($activity as $activity)
                                      { 
                                       
                                        ?>
                                        <option 
                                            value="<?= $activity['id'] ?>"  <?php if($activity['id'] == $tmr_notes['tmr_notes_remark']  ) echo 'selected="selected"'; ?>  > <?= $activity['activityname']; ?> </option> 
                                       <?php
                                     }
                                   
                                      ?>                       
                                    </select>

                                    <input type="hidden" name="tmr_notes_id" value="<?php echo $tmr_notes['tmr_notes_id']; ?>">

                                    </td>
                                      <td style="width:2%"><input type="checkbox" name="status_checkbox[]" id="status_checkbox" class="form-control "  value="<?php echo $status_cnt; ?>"  onclick='checkBoxclick(this);' title="free text" <?php if(!empty($value)){ echo 'checked="checked"'; } ?>></td> 

                                      <td style="width: 4%;">
                                   <?php
                                    if($status_cnt==1)
                                    { ?>
                                        <button type="button" name="add" id="add" class="btn btn-sm btn-success">+</button>
                                  <?php  }
                                    else
                                    { ?>
                                      <button type="button" name="remove" id="<?php echo $status_cnt; ?>" class="btn btn-sm btn-danger btn btn_remove">X </button>
                                    <?php }
                                    ?>
                                 
                                </td>  

                                    </tr>  
                                  <?php
                                  $status_cnt++;
                                 }
                                }
                                else
                                {
                                  ?>
                                       <tr style="border:0px;" id="row1">
                                
                                <td style="border:0px;"><p><input type="date" name="tmr_notes_date[]" placeholder="date" class="form-control name_list" required value=""></p></td> 

                                <td style="border:0px;"><input type="time" name="tmr_notes_time[]" placeholder="Time" class="form-control name_list" required value=""></td> 

                                <td style="border:0px;"><input type="text" name="tmr_notes_position[]" placeholder="current_position" class="form-control name_list" required="" value=""></td>

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

                                <td style="width: 4%;">
                           
                                  <button type="button" name="add" id="add" class="btn btn-sm btn-success">+</button>
                           
                           
                          </td>  

                              </tr>  
                               <?php }
                                ?>
                               
                          </table>   
                                                   
                        </div>
                      </div>                 
                
                </div>
                <div class="card-footer">

                <input type="submit" value="Submit"  class="btn btn-primary">
                <?php $rtf_id = $this->uri->segment(3); ?>
                <a href="<?php echo base_url('Super_admin/report/').$rtf_id; ?>"  title="Report"><input type="button" class="btn btn-warning btn-sm" style="height:38px" value="Preview Report"></a>


                 
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

$(document).ready(function(){    

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

var j=1
$('#add_driver').click(function(){
  j++;
  var rowCount = $("#dynamic_field_driver tr").length;
 $('#rtf_qty').val(rowCount);
   var truck_type  = <?php echo json_encode($truck_type); ?>;
   $('#dynamic_field_driver').append('<tr id="row_dr'+j+'" class="dynamic-added driver-added"></td><td style="border:0px;"><select title="Select Truck Type" name="truck_type[]" class="form-control" required="" id="truck_type'+j+'"><option value="">Truck Type</option></select></td><td style="border:0px;"><select title="Select Truck No" name="rtf_truck_no[]" class="form-control" required="" id="truck_no'+j+'"><option value="">Truck No</option></select></td><td style="border:0px;"><select title="Select Truck No" name="driver_name[]" class="form-control" required="" id="driver_name'+j+'"><option value="">Driver Name</option></select></td><td style="border:0px;"><input type="text" name="rtf_rate[]" placeholder="Notes" class="form-control name_list" value="" required=""></td><td style="border:0px;"><select title="Select Truck Type" name="charge_type_text[]" class="form-control" required="" id="charge_type_text'+j+'"><option value="">Charge Type</option></select></td><td><input type="text" name="commission[]" placeholder="Commission" class="form-control name_list" value="" required=""></td><td><button type="button" name="remove" id="'+j+'" class="btn btn-sm btn-danger btn btn_remove_driver">X </button></td></tr>');
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
  
});




// $('#rtf_qty').keyup(function()
// {

  
//   $('.driver-added').remove();
//    let driver_cnt = $("#driver_cnt").val();
//    var rtf_qty = $('#rtf_qty').val();
 
//    if(driver_cnt == 0)
//    {
    
//     var diff = Math.abs((driver_cnt) - (rtf_qty))-1;
//    }
//    else
//    {
   
//     var diff = Math.abs((driver_cnt) - (rtf_qty) );

//    }
 
 
//  for (let j=1; j<= diff; j++) 
//  {
  
//   var truck_type  = <?php echo json_encode($truck_type); ?>;
//    $('#dynamic_field_driver').append('<tr id="row_dr'+j+'" class="dynamic-added driver-added"></td><td style="border:0px;"><select title="Select Truck Type" name="truck_type[]" class="form-control" required="" id="truck_type'+j+'"><option value="">Truck Type</option></select></td><td style="border:0px;"><select title="Select Truck No" name="rtf_truck_no[]" class="form-control" required="" id="truck_no'+j+'"><option value="">Truck No</option></select></td><td style="border:0px;"><select title="Select Truck No" name="driver_name[]" class="form-control" required="" id="driver_name'+j+'"><option value="">Driver Name</option></select></td><td style="border:0px;"><input type="text" name="rtf_rate[]" placeholder="Notes" class="form-control name_list" value="" required=""></td><td style="border:0px;"><select title="Select Truck Type" name="charge_type_text[]" class="form-control" required="" id="charge_type_text'+j+'"><option value="">Charge Type</option></select></td><td><input type="text" name="commission[]" placeholder="Commission" class="form-control name_list" value="" required=""></td><td><button type="button" name="remove" id="'+j+'" class="btn btn-sm btn-danger btn btn_remove_driver">X </button></td></tr>');
// var truck_type = <?php echo json_encode($truck_type1) ?>;
// var truck_no = <?php echo json_encode($truck_no1) ?>;
// var driver_name = <?php echo json_encode($driver_name1) ?>;

//     for (let m = 0; m < truck_type.length; m++) 
//     {

//       $("#truck_type"+j).append("<option value='"+truck_type[m].truck_type_id+"'>"+truck_type[m].truck_type_name+"</option>");
//       $("#charge_type_text"+j).append("<option value='"+truck_type[m].truck_type_id+"'>"+truck_type[m].truck_type_name+"</option>");  
      
//     }


//     for (let n = 0; n < truck_no.length; n++) 
//     {
//       $("#truck_no"+j).append("<option value='"+truck_no[n].truck_details_id+"'>"+truck_no[n].truck_no+"</option>");
//     }

//     for (let o = 0; o < driver_name.length; o++) 
//     {
//       $("#driver_name"+j).append("<option value='"+driver_name[o].driver_details_id+"'>"+driver_name[o].driver_name + ' '+driver_name[o].  driver_last_name+"</option>");
//     }
  
//   }

// });


$(document).on('click', '.btn_remove_driver', function(){
var button_id = $(this).attr("id");
$('#row_dr'+button_id+'').remove();
var rowCount = $("#dynamic_field_driver tr").length;
 $('#rtf_qty').val(rowCount-1);


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
