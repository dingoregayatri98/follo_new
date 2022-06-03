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
 
        background-color:#f2f2f2;
        padding:0px;
        text-align: center;
}
table, td, th,tr {
    border: 0.1px solid;
  }
.tr_data > td
{
 height: 30px;
}

</style>

  
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
   
   <!-- Main content -->
   <section class="content">
      <div class="row">
         <div class="col-12">
            <div class="card">
                  
               
               <div class="card-header">                  
               </div>
                           
               <!-- /.card-header -->
               <div class="card-body">
               <table class="table">
              
              <tr>
                 <th rowspan="2" class="text-center">
                    <img src="<?php echo base_url('assets/image/logo.jpg'); ?>" height="60" >
                 </th>
                 <th colspan="3" style="text-align: left;">CLIENT : <?= $truck_data['rtf_billto_text'];  ?></th>
                 <th colspan="2" style="text-align: left;">DATE : <?= $truck_data['rtf_created_on'];  ?></th>
              </tr>
              <tr>
                 <th colspan="3" style="text-align: left;">JOB No :   <?= strtoupper($truck_data['rtf_jobno']);  ?></th>
                 <th colspan="2" style="text-align: left;"> PO NO :<?= strtoupper($truck_data['rtf_po_no']);  ?></th>
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

</script>   

