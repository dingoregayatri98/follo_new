<style type="text/css">
    th
    {
      text-align:center;      
    }
    td
    {
      text-align:center;
    }
    .DataTables_sort_icon { display:none;}

    table{
 
    font-family: 'Fira Sans Extra Condensed', sans-serif;
    font-size: 12px;
}

.border_bt
{
  border-bottom:2px solid black;
}
.pd
{
  padding: 10px 10px;
}

  </style> 
  
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h5>Job Update</h5>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Job Update</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
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
                  <h3 class="card-title">Job Update List</h3>
                </div>

                <div class="col-sm-4">
                  <div style="text-align:right;">
                    <a href="<?php echo base_url('Super_admin/add_client_req'); ?>" class="btn btn-primary btn-sm"> <i class="fa fa-plus"></i>Add New</a>
                  </div>
                </div>
               
              </div> 
            </div>
                     


            <!-- /.card-header -->
            <div class="card-body">
            <div class="container-fluid table-responsive ">
            <table id="members_list" class="display table table-bordered " >
            <thead>
                <tr class="info text-white" style="background-color:#187bcd">
                <th data-orderable="false">Sr.No</th>               
                  <th>Date</th>                  
                  <th>Job No</th>
                  <th>Bill To</th>
                  <th>Mode</th>                  
                  <th>From</th>
                  <th>To</th>  
                  <th>Truck Qty</th>  
                  <th>Truck Type</th>  
                  <th>Truck No</th> 
                  <th>Driver</th>   
                  <th>Note</th>    
                  <th>Comm..(RM)</th>                      
                  <th>TA</th>   
                  <th>Created by</th>   
                  <th style="width: 160px;">Action</th>                
                </tr>
                </thead>
        <tbody>
                <?php 

               
                  $row_count = 1; 
                  foreach ($truck_data as $row)  
                  {  
                    if($row_count % 2 == 0)
                      {
                         $tr_color  = 'table-primary';
                      }
                      else
                      {
                        $tr_color  = ' ';
                       }

                      $rtf_id = $row['rtf_id'];
                    $details = $this->Super_admin_model->get_truck_details($rtf_id); 
                    
                    $detail_cnt = count($details) + 1;
                  ?>
                <tr class="parent <?php echo $tr_color; ?>" id="<?php echo $row['rtf_id']."-".$detail_cnt?>" title="Click to expand/collapse" style="cursor: pointer;">
                  <td><?php echo $row['rtf_id']; ?></td>                
                  <td><?php echo $row['rtf_date']; ?></td>
                  <td id="job<?php echo $row['rtf_id']."-".$detail_cnt; ?>"><?php echo strtoupper($row['rtf_jobno']); ?></td>
                  <td id="billto<?php echo $row['rtf_id']."-".$detail_cnt; ?>"><?php echo $row['rtf_billto_text']; ?></td>
                  <?php 
                  $mode = $this->Super_admin_model->get_mode_name($row['rtf_mode']);
                  ?>
                  <td><?php echo $mode['transportname']; ?></td> 
                  <td><?php echo strtoupper($row['rtf_from']) ."<br>". strtoupper($row['rtf_datepickup']);?> </td> 
                  <td ><?php echo strtoupper($row['rtf_to']) ."<br>". strtoupper($row['rtf_datedropoff']);?> </td>   
                  <td colspan="7"><?php echo strtoupper($row['rtf_job_scope']); ?></td>  
                  <td style="display: none;"></td>
                  <td style="display: none;"></td>
                  <td style="display: none;"></td>
                  <td style="display: none;"></td>
                  <td style="display: none;"></td>
                  <td style="display: none;"></td>
                  <td><?php echo strtoupper($row['rtf_created_by']); ?></td> 
                   
                          
                  <td>
                    <h3>  
                                                   
                                                    <a href="<?php echo base_url('Super_admin/edit_client_req/').$row['rtf_id']; ?>"  title="Edit Job">   
                                                    <span class="btn btn-primary btn-sm"><i class="far fa-edit" aria-hidden="true"></i></span>
                                                    </a> 
                                                    
                                                    <a href="#report_Modal<?php echo $row_count;?>" data-target="#report_Modal<?php echo $row_count;?>" data-placement="top" data-toggle="modal" title="View Report">   
                                                   <span class="btn btn-warning btn-sm"><i class="fa fa-file" aria-hidden="true"></i></span> 
                                                   </a> 

                                                    <!-- <a href="<?php echo base_url('Super_admin/report/').$row['rtf_id']; ?>"  title="Report">   
                                                    <span class="btn btn-warning btn-sm"><i class="fa fa-file" aria-hidden="true"></i></span> 
                                                    </a>  -->
                                                   
                                                    
                                                    
                  </h3>
                </td>
                </tr> 

                <?php 
                
              
                if(!empty($details))
                {
                 $count  = count($details);
                  $cnt = 1;
                  foreach($details as $detail)
                  { ?>
                  <tr class="child-<?php echo $row['rtf_id']."-".$detail_cnt; ?> <?php echo $tr_color; ?>" style="display: none;">  
                  <td><?php echo $row_count.".".$cnt ?></td>                
                  <td><?php echo $row['rtf_date']; ?></td>
                
                  <?php 
                  $mode = $this->Super_admin_model->get_mode_name($row['rtf_mode']);
                  ?>
                  <td><?php echo $mode['transportname']; ?></td>
                  <!-- <td><?php echo $detail['rtf_mode']; ?></td>  -->
                  <td><?php echo strtoupper($detail['rtf_from']) ."<br>". strtoupper($row['rtf_datepickup']);?> </td> 
                  <td ><?php echo strtoupper($detail['rtf_to']) ."<br>". strtoupper($row['rtf_datedropoff']);?> </td>  
                  <td><?php echo $detail['rtf_qty']; ?></td>  
                  <td><?php echo chunk_split($detail['rtf_truck_type_text'], 17, "<br>"); ?></td>  
                  <td><?php echo chunk_split($detail['rtf_truck_no_text'], 17, "<br>"); ?></td>   
                  <td><?php echo chunk_split($detail['rtf_driver_name_text'], 15, "<br>"); ?></td>  
                  <td><?php echo chunk_split($detail['rtf_rate'], 35, "<br>"); ?></td>  
                  <td class="td_empty"></td>
                  <td class="td_empty"></td>
                  <td><?php echo $detail['rtf_commision']; ?></td>  
                  <td><i class="fa fa-upload" aria-hidden="true"></i></td>  
                  <td><?php echo strtoupper($row['rtf_updated_by']); ?></td> 
                   
                          
                  <td>
                  <h3>  
                                                   
                                                  <!-- <a href="#delete_banking_Modal<?php echo $row_count;?>" data-target="#delete_banking_Modal<?php echo $row_count;?>" data-placement="top" data-toggle="modal" title="Delete Details">   
                                                   <span class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i></span> 
                                                   </a> 
                                                   <a href="#change_status_Modal<?php echo $row_count;?>" data-target="#change_status_Modal<?php echo $row_count;?>"data-placement="top" data-toggle="modal" title="Change Status Active/Deactive"> 
                                                   <span class="btn btn-warning btn-sm"><i class="fas fa-check"></i></span>
                                                   </a>-->
                                                   
                                                   
                 </h3>
                </td> 
                  </tr>  


                  <!-- Modal delete details -->   

                   <?php 
                   $rtf_id = $row['rtf_id'];
                   $truck_data = $this->Super_admin_model->get_truck_report_data($rtf_id);
                   $truck_details = $this->Super_admin_model->get_truck_report_details($rtf_id); 
                   $journey_details = $this->Super_admin_model->get_truck_journy_details($rtf_id);
                   ?>


                                          
                                          <div class="modal fade" id="report_Modal<?php echo $row_count;?>">
                                    <div class="modal-dialog modal-xl">
                                      <div class="modal-content">
                                      
                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                          <h5 class="modal-title">Report Management</h5>
                                          
                                          <button type="button" class="close" data-dismiss="modal">&times;</button>

                                        </div>
                                        
                                        <!-- Modal body -->
                                        <div class="modal-body">
                                        <div class="container border-dark" style=" font-family: 'Fira Sans Extra Condensed', sans-serif;">
                                        <div class="row">
                                      
                                        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" style="float:right">
                                          <a href="<?php echo base_url("Super_admin/download_pdf_report/$rtf_id") ?>" class="btn btn-danger"><i style="color:white;" class="fas fa-file-pdf"></i></a>

                                          <a style="cursor: pointer;" onclick="print_data('print_area<?php echo $rtf_id; ?>')" class="btn btn-success"><i style="color:white;" class="fas fa-print"></i></a>
                                          </div>                              
                                                                            
                                        </div>
                                        <br>
  <div id="print_area<?php echo $rtf_id; ?>" >

        <div class="row border-dark">
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark" style="text-align:center;padding:10p" >
              <img src="<?php echo base_url('assets/image/logo.jpg'); ?>" height="60" >
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 border border-dark" style="padding:0px">
            <div class="short-div border_bt pd pd1" ><b>CLIENT : <?= $truck_data['rtf_billto_text'];  ?></b></div>
            <div class="short-div pd pd1" ><b>JOB No :   <?= strtoupper($truck_data['rtf_jobno']);  ?></b></div>
            </div>
            
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 border border-dark" style="padding:0px">
            <div class="short-div border_bt pd pd1" ><b>DATE : <?= $truck_data['rtf_created_on'];  ?></b></div>
            <div class="short-div pd pd1"  ><b>PO NO : <?= strtoupper($truck_data['rtf_po_no']);  ?></b></div>
            </div> 
        </div>

        <div class="row text-center border-dark" style="background:#eeeeee">
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark">
            <b> DRIVER NAME</b>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 border border-dark">
            <b> I/C NO</b>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark">
            <b> MOBILE NO</b>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 border border-dark">
            <b>  TRUCK NO</b>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark">
            <b> NOTE</b>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 border border-dark">
           

            <b> SCOPE (<?php echo $mode['transportname']; ?> ONLY)</b>
            </div>

        </div>

        <?php

           $jobscope_rowspan = sizeof($truck_details);   
           $m=0;
            foreach($truck_details as $details)
            {    
              ?>
                  <div class="row text-center border-dark">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark pd">
                  <?= $details['rtf_driver_name_text'];  ?>
                  </div>
                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 border border-dark pd">
                  <?= $details['ic_no'];  ?>
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark pd">
                  <?= $details['driver_mobile_no'];  ?>
                  </div>
                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 border border-dark pd">
                  <?= $details['rtf_truck_no_text'];  ?>
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark pd">
                  <?= $details['rtf_rate'];  ?>
                  </div>
                 <?php 
                  if($m==0)
                  {
                    $border = "border-top:1px solid #343a40;";
                   
                  }
                  else
                  {
                    $border = '';
                   
                  }

                  $cnt_detail = count($truck_details)-1;
                  if($m==$cnt_detail)
                  {
                    
                   
                    $border_bt = "border-bottom:1px solid #343a40;";
                  }
                  else
                  {
                   
                    $border_bt ='';
                  }

                 ?>
                 
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 pd" style="<?php echo $border;?><?php echo $border_bt;?>border-left:1px solid #343a40;border-right:1px solid #343a40">
                    <?php
                    if($m==0)
                    {
                      ?>
                    <?= strtoupper($details['rtf_job_scope']);  ?>
                    <?php
                    }
                  ?>
                    </div>
                   
                
              </div>



            <?php  
             $m++; 
              } 
              ?>

            <div class="row  border-dark text-center" style="background:#eeeeee">
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark">
            <b> DATE</b>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 border border-dark">
            <b> TIME</b>
            </div>
            <b> <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark">
            CURRENT POSITION</b>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7 border border-dark" >
            <b>  REMARK</b>
            </div>
            </div>

            <?php

                  $n=0;
                  foreach($journey_details as $row_journey)
                  {  ?>
                  
                  <div class="row border-dark text-center">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark pd">
                  <?= $row_journey['tmr_notes_date']; ?>
                  </div>

                  <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 border border-dark pd">
                  <?= $row_journey['tmr_notes_time'];  ?>
                  </div>

                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 border border-dark pd">
                  <?= $row_journey['tmr_notes_position']; ?>
                  </div>
                  

                  <?php 
                  if($n==0)
                  {
                    $border = "border-top:1px solid #343a40;";
                    $border_bt = "border-bottom:1px solid #343a40;";
                  }
                  else
                  {
                    $border = '';
                    $border_bt ='';
                  }

                 ?>
                 
                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7 pd" style="<?php echo $border;?>border-bottom:1px solid #343a40;border-left:1px solid #343a40;border-right:1px solid #343a40">
                    <?php
                    if($n==0)
                    {
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
                      echo $remark; 

                    }
                  ?>
                    </div>


                  
              </div>



            <?php  
              $n++;
            } 
          ?>
                    
  
          </div>
    </div>
                                        </div>
                                        
                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                          <!-- <button type="button" class="btn btn-secondary" onclick="modal_close('report_Modal<?php echo $row_count;?>')">Close</button> -->
                                      </div>
                                    </div>
                                  </div>



                                           <!-- <div id="report_Modal<?php echo $row_count;?>" class="modal fade">
                                                <div class="modal-dialog modal-confirm">
                                                <div class="modal-content">                                                        
                                                        <div class="modal-header">               
                                                            
                                                        </div>
                                                        <div class="modal-body">
                                                          <?php print_r($truck_data); ?>
                                                        </div>
                                                        <div class="modal-footer">
                                                                                                                      
                                                        </div>
                                                             
                                                    </div>
                                                </div>
                                            </div>   -->
                                            <!-- Modal delete details -->



                 <?php  
                   $cnt++;
                   }
                 
                }
              
                  $row_count++; 
                  } 
                ?>               
                </tbody>                
    </table>
            </div>
            </div>
            <!-- /.card-body -->
          </div>
        </div>
      </div>
    </section>
  </div>

 
  <script>
/*function print_data()
{
var prtContent = document.getElementById("print_area");
var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
WinPrint.document.write('<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" media="screen,print">');
WinPrint.document.write(prtContent.innerHTML);
//WinPrint.document.write('</html>');
WinPrint.document.close();
WinPrint.focus();
WinPrint.print();
WinPrint.close();
}*/

function print_data(prnt_area)
{


  var printContents = document.getElementById(prnt_area).innerHTML;

  var css = '@page { size: landscape;} .row{border-left:6px solid red}img{padding:3px}.pd1{ padding-left:6px}',
    head = document.head || document.getElementById(prnt_area),
    style = document.createElement('style');

style.type = 'text/css';
style.media = 'print';

if (style.styleSheet){
  style.styleSheet.cssText = css;
} else {
  style.appendChild(document.createTextNode(css));
}

head.appendChild(style);


     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents
    //  location.reload(true);
    
}


  /* Initialization of datatable */
  $(document).ready(function() {


 


    $('tr.parent')  
    
                .css("cursor", "pointer")  
                .attr("title", "Click to expand/collapse")  
                .click(function () {  
                 
                  var id= this.id;
                  var rowspan = id.split('-').pop();
               
               
                  if ($('.child-' + this.id).is(":visible"))
                    {
                        $('#job'+id).attr('rowspan',' ');
                        $('#billto'+id).attr('rowspan','');
                    }
                    else
                    {
                      $('#job'+id).attr('rowspan',rowspan);
                      $('#billto'+id).attr('rowspan',rowspan);
                      $('.td_empty').hide();
                    }
                    $(this).siblings('.child-' + this.id).toggle();  
                });  
            $('tr[@class^=child-]').hide().children('td');  
          
        
      

  });
</script>

<script>
  
  /* Initialization of datatable */
  $(document).ready(function() {
      var table = $('#members_list').DataTable({
        ordering: false,
        bFilter: false,
       lengthMenu: [ [50, 100, 200, -1], [50, 100, 200, "All"] ],
       pageLength: 50
    });

  });
  
</script>