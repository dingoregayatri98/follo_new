<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- <link rel="icon" type="image/png" sizes="32x32" href="<?php echo base_url(); ?>dist/img/favicon.png"> -->
  <title>Follo</title>  
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/bs-stepper/css/bs-stepper.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/dropzone/min/dropzone.min.css">

  <!-- <link rel="stylesheet" href="<?php echo base_url('assets/custome.css'); ?>"> -->
  <link href="https://fonts.googleapis.com/css2?family=Fira+Sans+Extra+Condensed:ital@0;1&display=swap" rel="stylesheet">


  

  <!-- summernote -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <!-- Datatable -->


   <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
   <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <!-- <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li> -->
    </ul>

    <!-- SEARCH FORM -->
   <!--  <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form> -->
  <?php 
              if($this->session->userdata('userdata')!="")
              {
                $userdata = $this->session->userdata('userdata');
                                                   
              }
            ?>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="fas fa-cog"></i>
          <span class="badge badge-warning navbar-badge"></span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          
          <a href="#" class="dropdown-item" data-toggle="modal" data-target="#change_password">
            <i class="fas fa-unlock mr-2"></i> Change Password
            <span class="float-right text-muted text-sm"></span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="<?php echo base_url() ?>Super_admin/logout" class="dropdown-item">
           <i class="fas fa-power-off mr-2"></i> Sign Out
            <span class="float-right text-muted text-sm"></span>
          </a>
          <div class="dropdown-divider"></div>
     
        </div>
      </li>
     
    </ul>
  </nav>
  <!-- /.navbar -->

  <div class="modal fade right" id="change_password" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
   aria-hidden="true" data-backdrop="false">
   <div class="modal-dialog modal-side modal-bottom-right modal-notify" role="document">
      <!--Content-->
      <div class="modal-content">
         <!--Header-->
      
       

              <div class="modal-header" style="background-color:#00A0E3;border-radius:0px;height:70px">
          <h4 class="modal-title" style="color: white;margin-top:-10px">Password<br> <p style="color:white;font-size:12px">Change  your password or recover your current one.</p></h4>
          <button type="button" class="close white-text" data-dismiss="modal" style="outline:none"><span style="color: white">&times;</span></button>
         
        
        </div>
            <!--Body-->
            <div class="modal-body">
       <form class="form-horizontal row-border" id="change_password_form">


         <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-4 col-form-label">Old Password</label>
                    <div class="col-sm-8">
                     <input class="form-control" type="password" name="old_password" style="font-size:13px;height:40px;border-radius: 0px" placeholder="Enter your old Password" id="old_password">
                    <p id="old_password_error" style="color: red"></p>
                  <input type="hidden" name="superadmin_id" value="<?php echo $userdata['id']; ?>" id="superadmin_id">
                    </div>
                  </div>
                   <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-4 col-form-label">New Password</label>
                    <div class="col-sm-8">
                     <input class="form-control" type="password" name="new_password" style="font-size:13px;height:40px;border-radius: 0px" placeholder="Enter your new Password" id="new_password">
                    <p id="new_password_message" style="color: red"></p>
                    </div>
                  </div>
                   <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-4 col-form-label">Verify Password</label>
                    <div class="col-sm-8">
                        <input class="form-control" type="password" name="verify_password" style="font-size:13px;height:40px;border-radius: 0px" placeholder="Enter your verify  Password" id="verify_password">
                      <p id="password_message" style="color: red"></p>
                    </div>
                  </div>
              
                
                
              
            </div>
            <div class="modal-footer">
              <div class="col-md-6">
                <div class="alert alert-success" style="margin-top:10px;padding:5px;color:white;font-size:13px;display: none;text-align:justify;">
                </div>
                <div class="alert alert-danger" style="margin-top:10px;padding:5px;color:white;font-size:13px;display: none;text-align:justify;">
                 </div>
                          </div>
                          <div class="col-md-6">
                               <button type="button" class="btn btn-flat" style="background-color:#00A0E3;color: white;border-radius:0px" id="change_password_btn" >Submit</button>
               <a type="button" class="btn btn-flat" data-dismiss="modal" style="border:1px solid #00A0E3;border-radius:0px" >Cancel</a>
           </div>
            </div>
        </form>
              
      </div>
      <!--/.Content-->
   </div>
</div>

<script src="<?php echo base_url(); ?>plugins/jquery/jquery.min.js"></script>
 <script type="text/javascript">
          $(document).ready(function(){
               $("#change_password_btn").click(function()
               {

                var new_password = $("#new_password").val();
                var confirm_password = $("#verify_password").val();
                var superadmin_id = $("#superadmin_id").val();
                var old_password = $("#old_password").val();
                  $.ajax({ 
                    url:"<?php echo base_url(); ?>Super_admin/fetch_superadmin_info",  
                    method:"POST",  
                    data:{superadmin_id:superadmin_id,old_password:old_password},  
                    success:function(data)
                    {
                      var data = JSON.parse(data);
                       if(data.statusCode==200)
                       {
                        $('#old_password_error').hide();
                        $('#new_password_message').hide();
                        $('#password_message').hide();

                        if((new_password == confirm_password)&& (new_password!="") && (old_password!=""))
                              {
                                  $.ajax({ 
                          url:"<?php echo base_url(); ?>Super_admin/change_password",  
                          method:"POST",  
                          data:{superadmin_id:superadmin_id,new_password:new_password},  
                          success:function(data)
                          {
                                      var data = JSON.parse(data);
                             if(data.statusCode==200)
                             {
                               $('.alert-success').html("Password Change Successfully").fadeIn().delay(4000).fadeOut('slow');
                               $("#change_password_form").trigger("reset");
                                 
                             }
                           else if(data.statusCode==201)
                           {
                              $('.alert-danger').html("Something went wrong.").fadeIn().delay(4000).fadeOut('slow');
                                   
                            }
                          }
                      });
                              }
                              else if(new_password=="")
                              {
                                  $('#new_password_message').show();
                                   $("#new_password_message").html("This field is required");
                              }
                              else if(confirm_password=="")
                              {
                                $('#password_message').show();

                                   $("#password_message").html("This field is required");
                              }
                              else
                              {
                                $('#password_message').show();
                              $("#password_message").html("Password and Verify Password does not match!");
                              return false;
                              }

                       }
                         else if(data.statusCode==201)
                      {
                          $('#old_password_error').show();
                        $('#old_password_error').html("Password not match");
                      }
                   }
                  });
                  
              });
         $("#verify_password").keyup(function()
            {
                var new_password = $("#new_password").val();
             var confirm_password = $("#verify_password").val();
             if (new_password != confirm_password)
             {
             $("#password_message").html("Password and Verify Password does not match!");
             }
             else
            {
             $("#password_message").html("Passwords match.");
             return false;
             }

            });
           

            });
 </script>