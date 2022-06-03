<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
     <!-- <img src="<?php echo base_url(); ?>assets/images/cadmax-logo.jpeg" alt="cadmax-logo" class="brand-image " style="opacity:0.8;"> -->
      <span class="brand-text font-weight-light"><b style="color:white">Follo</b></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php echo base_url(); ?>dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">
            <?php 
              if($this->session->userdata('userdata')!="")
              {
                $userdata = $this->session->userdata('userdata'); 
              }
            ?>

          Welcome <?php if($userdata!="")
          {
            print_r($userdata['username']);            
          }
          ?>            
          </a>
        </div>
      </div>

      <?php  $page= 'http://localhost'.$_SERVER['REQUEST_URI']; ?>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

          <li class="nav-item has-treeview ">
            <a href="<?php echo base_url('Super_admin/dashboard'); ?>" class="nav-link <?php if($page==base_url('Super_admin/dashboard')){echo'active';} ?>">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>            
          </li>

          <li class="nav-item has-treeview">
              <a href="<?php echo base_url('Super_admin/view_client_req'); ?>" class="nav-link <?php if($page==base_url('Super_admin/view_client_req')){echo'active';} ?>">            
              <i class="nav-icon fas fa-rupee-sign mr-2" aria-hidden="true"></i>
              <p>Job Update</p>
              </a>   
              </li>

          <!-- <li class="nav-item has-treeview ">
            <a href="#" class="nav-link <?php if($page==base_url('Super_admin/view_country') || $page==base_url('Super_admin/view_state') || $page==base_url('Super_admin/view_currency') || $page==base_url('Super_admin/view_taxation')){echo'active';} ?>">            
               <i class="nav-icon fab fa-cc-mastercard mr-2" aria-hidden="true"></i>
              <p>
                Master Data
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
              <a href="<?php echo base_url('Super_admin/view_country');?>" class="nav-link <?php if($page==base_url('Super_admin/view_country')){echo'active';} ?>">      
              <i class="nav-icon fas fa-globe mr-2" aria-hidden="true"></i>              
              <p>Truck Master</p>
              </a>   
              </li>
              <li class="nav-item">
              <a href="<?php echo base_url('Super_admin/view_state'); ?>" class="nav-link <?php if($page==base_url('Super_admin/view_state')){echo'active';} ?>">            
              <i class="nav-icon fas fa-archway mr-2" aria-hidden="true"></i>
              <p>Driver Master</p>
              </a>   
              </li>
              
              
              <li class="nav-item">
              <a href="<?php echo base_url('Super_admin/view_client_req'); ?>" class="nav-link <?php if($page==base_url('Super_admin/view_client_req')){echo'active';} ?>">            
              <i class="nav-icon fas fa-rupee-sign mr-2" aria-hidden="true"></i>
              <p>View Client Request</p>
              </a>   
              </li>              
            </ul>         
          </li> -->
        </ul>
          
        

      </nav>
      

    </div>
    <!-- /.sidebar -->
  </aside>

