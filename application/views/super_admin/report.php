<style>
td
{
    text-align:center;
}

body{
    /*margin-top: 50px;*/
    font-family: 'Fira Sans Extra Condensed', sans-serif;
    /*font-size: 12px;*/
}
.text-center
{
    text-align: center;
}
.table_tr  td {
 
        background-color:#eeeeee;
        padding:0px;
        text-align: center;
}
table, td, th,tr {
    border: 1.1px solid;
  }
.tr_data > td
{
 height: 30px;
}

</style>

  
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
   <!-- Content Header (Page header) -->
   <section class="content-header">
      <div class="container-fluid">
         <div class="row mb-2">
            <div class="col-sm-6">
               <h5> Report Management</h5>
            </div>
            <div class="col-sm-6">
               <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active"> Report Data</li>
               </ol>
            </div>
         </div>
      </div>
      <!-- /.container-fluid -->
   </section>
   <!-- Main content -->
   <section class="content">
      <div class="row">
         <div class="col-12">
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
                  <!-- <h3 class="card-title">All Categories Data</h3> -->
                  <div class="row">
                     <div class="col-sm-8">
                        <h3 class="card-title">All  Report Data</h3>
                     </div>
                     <div class="col-sm-4">
                        <?php  $uriSegments = explode("/", parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));                         
                        $lastIndex = array_key_last($uriSegments);
                       echo $rtf_id = $uriSegments[$lastIndex] ;
                      
                        ?>
                        <div style="text-align:right;">
                           <a href="<?php echo base_url("Super_admin/download_pdf_report/$rtf_id") ?>" style="cursor: pointer;" ><i style="margin-right: 20px;color: red;" class="fas fa-file-pdf"></i></a>

                           <!-- <a style="cursor: pointer;" onclick="javascript:print_pdf(<?php echo $rtf_id ?>);"><i style="margin-right: 20px;color: red;" class="fas fa-file-pdf"></i></a> -->

                           <a style="cursor: pointer;" onclick="javascript:print_data();"><i style="color: green;margin-right: 10px;" class="fas fa-print"></i></a>
                           <a onclick="window.history.back()"  class="btn btn-primary btn-sm"> Back</a>
                        </div>
                     </div>
                     
                  </div>
               </div>
                           
               <!-- /.card-header -->
               <div class="card-body" id="print_area">
               <table class="table">
              
              <tr>
                 <th rowspan="2" class="text-center">
                    <img src="<?php echo base_url('assets/image/logo.jpg'); ?>" height="60" >
                 </th>
                 <th colspan="4">CLIENT : <?= $truck_data['rtf_billto_text'];  ?></th>
                 <th >DATE : <?= $truck_data['rtf_created_on'];  ?></th>
              </tr>
              <tr>
                 <th colspan="4">JOB No :   <?= strtoupper($truck_data['rtf_jobno']);  ?></th>
                 <th > PO NO :<?= strtoupper($truck_data['rtf_po_no']);  ?></th>
              </tr>
          
        
              <tr class="table_tr">
                 <td>DRIVER NAME</td>
                 <td width="12%">I/C NO</td>
                 <td>MOBILE NO</td>
                 <td>TRUCK NO</td>
                 <td width="12%">NOTE</td>
                 <?php 
                 if($truck_data['rtf_mode'] == '4')
                 {
                  $mode="SEA";
                 }
                 else if($truck_data['rtf_mode'] == '1')
                 {
                  $mode="TRUCKING";
                 }
                 else if($truck_data['rtf_mode'] == '6')
                 {
                  $mode="HAULAGE";
                 }
                 else if($truck_data['rtf_mode'] == '20')
                 {
                  $mode="DOCUMENT";
                 }
                 else if($truck_data['rtf_mode'] == '2')
                 {
                  $mode="AIR";
                 }
                 else if($truck_data['rtf_mode'] == '5')
                 {
                  $mode="COURIER";
                 }
                 else 
                 {
                  $mode="HANDCARRY";
                 }
                 ?>
                 <td >SCOPE (<?php echo $mode; ?> ONLY)</td>
              </tr>
              <?php

           $jobscope_rowspan = sizeof($truck_details);   
           $m=0;
      foreach($truck_details as $details)
      {    
         ?>
              <tr class="tr_data">
                 <td><?= $details['rtf_driver_name_text'];  ?></td>
                 <td><?= $details['ic_no'];  ?></td>
                 <td><?= $details['driver_mobile_no'];  ?></td>
                 <td><?= $details['rtf_truck_no_text'];  ?></td>
                 <td><?= $details['rtf_rate'];  ?></td>
                 <?php
                 if($m==0)
                 {
                  ?>
                  <td rowspan="<?php echo $jobscope_rowspan ?>"><?= strtoupper($details['rtf_job_scope']);  ?></td>
                 <?php 
                     }
                 ?>
                 
              </tr>

      <?php
      $m++;
      }

      ?>
              
              <tr class="table_tr">
                 <td>DATE</td>
                 <td>TIME</td>
                 <td>CURRENT POSITION</td>
                 <td colspan="3" >REMARK</td>
              </tr>
             
              <?php

                  foreach($journey_details as $row_journey)
                  {                       
                        
                     ?>
                        <tr>
                            <td><?= $row_journey['tmr_notes_date']; ?></td>
                            <td><?= $row_journey['tmr_notes_time'];  ?></td>
                            <td><?= $row_journey['tmr_notes_position']; ?></td>

                           <?php
                            $tmr_notes_remark = $row_journey['tmr_notes_remark'];

                             $activity_name = $this->Super_admin_model->get_remark($tmr_notes_remark); 
                            if(empty($activity_name))
                            {
                              $remark = $tmr_notes_remark;
                            }
                            else
                            {
                              $remark = $activity_name['activityname'];
                            }
                            ?>

                            <td colspan="3" ><?= $remark; ?></td>
                        </tr>

                   <?php
                    }
             ?>
          
        </table>

        </div>
               <!-- /.card-body -->
            </div>
         </div>
      </div>
   </section>
</div>

<script>

/*function print_pdf(rtf_id)
{
   //alert(rtf_id);
   $.ajax({
            url:"<?php echo base_url(); ?>Super_admin/download_pdf_report",
            method:"POST",
            data:{rtf_id:rtf_id},
            success:function(data)
            {   
              if(data.length>0)
              {
                alert("PDF Report Downloaded")
              }
              else
              {
                alert("Sorry Currently We Cant Serve You...!")
              }                      
            }
         });
   
}*/

function print_data()
{
var prtContent = document.getElementById("print_area");
var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
WinPrint.document.write(
   '<style>td{text-align:center;}body{/*margin-top: 50px;*/font-family: Fira Sans Extra Condensed, sans-serif;}.text-center{text-align: center;}.table_tr  td {  background-color:#eeeeee;padding:0px;text-align: center;}table, td, th,tr {border: 1.1px solid;}.tr_data > td{height: 30px;}</style>');
WinPrint.document.write(prtContent.innerHTML);
WinPrint.document.close();
WinPrint.focus();
WinPrint.print();
WinPrint.close();
}

</script>   

