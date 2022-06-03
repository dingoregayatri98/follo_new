<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Super_admin extends CI_Controller {

	function __construct()
	{
        parent::__construct();
        $this->load->model('Super_admin_model');   
        $this->load->library('pdf'); 
    }
 	
 	public function is_logged_in()
	{
	    $user = $this->session->userdata('userdata');
	    return isset($user);
	} 

	public function index()
	{
	   $this->load->view('super_admin/superadmin_login');  		
	}


	public function super_admin_login()
	{
		
		$userdata = $this->session->userdata('userdata');
			if($userdata =='' ){
			if($this->input->post())
			{
				$email_id = $this->input->post('sa_email_id');
				$password = md5($this->input->post('sa_password'));

				$where_array = array(			
				'email'=>$this->input->post('sa_email_id'),			
				'password'=>md5($this->input->post('sa_password'))					    
				);
				$result = $this->Super_admin_model->super_admin_login($where_array);
				if(count($result) > 0)
				{	
						$this->session->set_userdata('userdata', $result);						
						redirect(base_url('Super_admin/dashboard'));					
				}
				else
				{
						$this->session->set_flashdata('error', '<div class="" style="color:black;">Invalid Credentials..</div>');
						redirect(base_url('super_admin/index'));
				}				
			}		
			$this->load->view('super_admin/index');
			}
			else
			{
				redirect(base_url('Super_admin/dashboard'));
			}  
	}

	public function dashboard()
	{	
		if ($this->is_logged_in())
    	{   
	
			$this->load->view('super_admin/header');
		   	$this->load->view('super_admin/sidebar');	
		   	$this->load->view('super_admin/dashboard');
		   	$this->load->view('super_admin/footer');
		  }
		  else
		  {
		   		redirect(base_url('Super_admin/index'));
		  }		
	}
	public function logout()
	{
		$userdata = $this->session->userdata('userdata');
		
		if($userdata !='')
		{
			$this->session->sess_destroy($userdata);
			redirect(base_url('Super_admin'));
		}
		else
		{
			redirect(base_url('Super_admin'));
		}
	}
	public function view_client_req()
	{
		if ($this->is_logged_in())
		{   
				$data['truck_data'] = $this->Super_admin_model->get_truck_data();
				
				$this->load->view('super_admin/header');
				$this->load->view('super_admin/sidebar');	
				$this->load->view('super_admin/view_client_req',$data);
				$this->load->view('super_admin/footer');
		}
		else
		{
				redirect(base_url('Super_admin/index'));
		}	
	}
	public function report($rtf_id)
	{
		if ($this->is_logged_in())
		{   
				$data['truck_data'] = $this->Super_admin_model->get_truck_report_data($rtf_id);
				$data['truck_details'] = $this->Super_admin_model->get_truck_report_details($rtf_id);

				$data['journey_details'] = $this->Super_admin_model->get_truck_journy_details($rtf_id);


				$this->load->view('super_admin/header');
				$this->load->view('super_admin/sidebar');	
				$this->load->view('super_admin/report',$data);
				$this->load->view('super_admin/footer');
		}
		else
		{
				redirect(base_url('Super_admin/index'));
		}	
	}

	public function download_pdf_report()
	{
		if ($this->is_logged_in())
		{   
				//$rtf_id = $this->input->post('job_no');
				echo $rtf_id = $this->uri->segment(3);

				$data['truck_data'] = $this->Super_admin_model->get_truck_report_data($rtf_id);
				$data['truck_details'] = $this->Super_admin_model->get_truck_report_details($rtf_id);
				$data['journey_details'] = $this->Super_admin_model->get_truck_journy_details($rtf_id);

				$html = $this->load->view('super_admin/pdf_report',$data, true);
				$fileName = "jobReport".time();

		    	$html .= $this->output->get_output();					 
				// Load pdf library
				$this->pdf->loadHtml($html);
				$this->pdf->set_option('isRemoteEnabled', true);
				$this->pdf->setPaper('A4', 'portrait');
				$this->pdf->render();
				// Output the generated PDF (1 = download and 0 = preview)   
				$this->pdf->stream($fileName, array("Attachment"=>1));


				/*$this->load->view('super_admin/header');
				$this->load->view('super_admin/sidebar');	
				$this->load->view('super_admin/report',$data);
				$this->load->view('super_admin/footer');*/
		}
		else
		{
				redirect(base_url('Super_admin/index'));
		}	
	}

	public function check_job_no()
	{
		$job_no = $this->input->post('job_no');
		$query = $this->db->query("SELECT * FROM request_truck_form WHERE rtf_jobno = '$job_no'");	
		$result = $query->row_array();
		if($result>0)
		{
			echo "<span style = 'color:#ff0000;'>"."Entered job no is already present...!";
		}
		
	}

	public function add_client_req()
	{
		if ($this->is_logged_in())
		{		

			if(!empty($this->input->post()))
			{

				$current_date_time = date('Y-m-d h:i:s');				
				$userdata = $this->session->userdata('userdata');
				$username = $userdata['user_type'];
			    
					$rtf_billto = $this->input->post('rtf_billto');
					$client_branch = $this->Super_admin_model->get_client_branch($rtf_billto);
					$add_array  = array(
						'rtf_date'=>$this->input->post('rtf_date'),
						'rtf_mode'=>$this->input->post('rtf_mode'),
						'rtf_billto'=>$rtf_billto,
						'rtf_billto_text'=>$client_branch['branch_name'],
						'rtf_jobno'=>$this->input->post('rtf_jobno'),
						'rtf_from'=>$this->input->post('rtf_from'),
						'rtf_datepickup'=>$this->input->post('rtf_datepickup'),
						'rtf_to'=>$this->input->post('rtf_to'),
						'rtf_datedropoff'=>$this->input->post('rtf_datedropoff'),
						'rtf_qty'=>$this->input->post('rtf_qty'),
						'rtf_job_scope'=>$this->input->post('rtf_job_scope'),
						'rtf_po_no'=>$this->input->post('rtf_po_no'),
						'rtf_created_by'=>$username,
						'rtf_created_on'=>$current_date_time
					 );

					 $rtf_id = $this->Super_admin_model->add_request_truck_form($add_array);
					 if(!empty($rtf_id))
					 {
						$truck_type = $this->input->post('truck_type');
						$length =  count($truck_type);
						if($length > 0)
						{
						   for($i = 0; $i <  $length; $i++)
						   {

								$truck_type_id  = $this->input->post('truck_type')[$i];
								$truck_no = $this->input->post('rtf_truck_no')[$i];

								$truck_type_list = $this->Super_admin_model->get_truck_type_list($truck_type_id);
								$truck_list = $this->Super_admin_model->get_truck_list($truck_no);

								$driver_id = $this->input->post('driver_name')[$i];
								$driver_list = $this->Super_admin_model->get_driver_list($driver_id);

								$charge_type_text = $this->input->post('charge_type_text')[$i];
								$charge_type_list = $this->Super_admin_model->get_truck_type_list($charge_type_text);


							   
							   $details_array = array(
								   'rtf_id' => $rtf_id,
								   'rtf_truck_type' => $this->input->post('truck_type')[$i],
								   'rtf_truck_type_text' => $truck_type_list['truck_type_name'],
								   'rtf_truck_no' => $this->input->post('rtf_truck_no')[$i],
								   'rtf_truck_no_text' => $truck_list['truck_no'],
								   'rtf_driver_name' => $this->input->post('driver_name')[$i],
								   'rtf_driver_name_text' => $driver_list['driver_name']." ".$driver_list['driver_last_name'],
								   'rtf_commision' => $this->input->post('commission')[$i],
								   'rtf_rate' => $this->input->post('rtf_rate')[$i],
								   'charge_type_id' => $this->input->post('charge_type_text')[$i],
								   'charge_type_text' => $charge_type_list['truck_type_name'],
								   
									);

								$details_data = $this->Super_admin_model->add_req_detail_data($details_array);
										   
						   }

						  if($details_data)
							   {
								$tmr_notes_position = $this->input->post('tmr_notes_position');
								$status_len =  count($tmr_notes_position);
							   
							   if($status_len > 0 )
							   {
								  
								   $note_data = "";
								   for($j = 0; $j <  $status_len; $j++)
								   {
	   
									   if(!empty($this->input->post('tmr_notes_remark_input')[$j]))
									   {
										   
										   $note_array = array(
											   'tmr_notes_job_id' => $rtf_id,
											   'tmr_notes_date' => $this->input->post('tmr_notes_date')[$j],
											   'tmr_notes_time' => $this->input->post('tmr_notes_time')[$j],
											   'tmr_notes_position' => $this->input->post('tmr_notes_position')[$j],
											   'tmr_notes_remark' => $this->input->post('tmr_notes_remark_input')[$j],
											   
												);
									   
											$this->Super_admin_model->add_tmr_notes($note_array);
										   
									   }
									   if(!empty($this->input->post('tmr_notes_remark_select')[$j]))
									   {
										   
										   $note_array = array(
											   'tmr_notes_job_id' => $rtf_id,
											   'tmr_notes_date' => $this->input->post('tmr_notes_date')[$j],
											   'tmr_notes_time' => $this->input->post('tmr_notes_time')[$j],
											   'tmr_notes_position' => $this->input->post('tmr_notes_position')[$j],
											   'tmr_notes_remark' => $this->input->post('tmr_notes_remark_select')[$j]
												);
											   
											   //$note_data = "";
											   $note_data = $this->Super_admin_model->add_tmr_notes($note_array);
									   }
									   
								   }
	   
								   if($note_data)
									   {
										   
										   $this->session->set_flashdata('success_msg', "Record Added successfully");						
										   redirect(base_url('Super_admin/add_client_req/').$rtf_id);		
									   }
									   else
									   {
											   $this->session->set_flashdata('error_msg', "Something is wrong");		
											   redirect(base_url('Super_admin/add_client_req/').$rtf_id);	
									   }		
								   }	
							   }
							   	
							}

					   
					 }

			}
			else
			{
				$data['option_val'] = $this->Super_admin_model->get_option_val();
				$data['truck_type1'] =$this->Super_admin_model->driver_info_truck_type();
				$data['truck_no1']  = $this->Super_admin_model->driver_info_truck_no();
				$data['driver_name1'] = $this->Super_admin_model->driver_info_truck_driver();
				$data['activity1'] = $this->Super_admin_model->get_activity_name();

				//$data['truck_type1'] =$this->Super_admin_model->driver_info_truck_type();


				$this->load->view('super_admin/header');
				$this->load->view('super_admin/sidebar');	
				$this->load->view('super_admin/add_client_request',$data);
				$this->load->view('super_admin/footer');
			}
		}
		else
		{
				redirect(base_url('Super_admin/index'));
		}	
	}

	/*public function edit_client_req($rtf_id =null)
	{
		if ($this->is_logged_in())
		{		
		
		
			    if($this->input->post())
				{
					
					$rtf_id = $this->input->post('rtf_id');
					$this->Super_admin_model->delete_request_form_details($rtf_id);
					$rtf_billto = $this->input->post('rtf_billto');
					$client_branch = $this->Super_admin_model->get_client_branch($rtf_billto);
					$edit_array  = array(
						'rtf_date'=>$this->input->post('rtf_date'),
						'rtf_mode'=>$this->input->post('rtf_mode'),
						'rtf_billto'=>$rtf_billto,
						'rtf_billto_text'=>$client_branch['branch_name'],
						'rtf_jobno'=>$this->input->post('rtf_jobno'),
						'rtf_from'=>$this->input->post('rtf_from'),
						'rtf_datepickup'=>$this->input->post('rtf_datepickup'),
						'rtf_to'=>$this->input->post('rtf_to'),
						'rtf_datedropoff'=>$this->input->post('rtf_datedropoff'),
						'rtf_qty'=>$this->input->post('rtf_qty'),
						'rtf_job_scope'=>$this->input->post('rtf_job_scope'),
						'rtf_po_no'=>$this->input->post('rtf_po_no'),

					 );
					 
					 $rs_request_truck = $this->Super_admin_model->update_request_truck_form($edit_array,$rtf_id);
					 if($rs_request_truck)
					 {
						
						 
						 $truck_type = $this->input->post('truck_type');
					    $length =  count($truck_type);
						 if($length > 0)
						 {
							for($i = 0; $i <  $length; $i++)
							{

								 $truck_type_id  = $this->input->post('truck_type')[$i];
								 $truck_no = $this->input->post('rtf_truck_no')[$i];

								 $truck_type_list = $this->Super_admin_model->get_truck_type_list($truck_type_id);
								 $truck_list = $this->Super_admin_model->get_truck_list($truck_no);

								 $driver_id = $this->input->post('driver_name')[$i];
								 $driver_list = $this->Super_admin_model->get_driver_list($driver_id);

								
								$details_array = array(
									'rtf_id' => $rtf_id,
									'rtf_truck_type' => $this->input->post('truck_type')[$i],
									'rtf_truck_type_text' => $truck_type_list['truck_type_name'],
									'rtf_truck_no' => $this->input->post('rtf_truck_no')[$i],
									'rtf_truck_no_text' => $truck_list['truck_no'],
									'rtf_driver_name' => $this->input->post('driver_name')[$i],
									'rtf_driver_name_text' => $driver_list['driver_name']." ".$driver_list['driver_last_name'],
									'rtf_commision' => $this->input->post('commission')[$i],
									
									 );
							
								 $details_data = $this->Super_admin_model->add_req_detail_data($details_array);
											
							}

							if($details_data)
								{
									
									$this->session->set_flashdata('success_msg', "Record upated successfully");						
									redirect(base_url('Super_admin/edit_client_req/').$rtf_id);		
								}
								else
								{
										$$this->session->set_flashdata('error_msg', "Something is wrong");		
										redirect(base_url('Super_admin/edit_client_req/').$rtf_id);	
								}		
						 }

						
							
					 }
				}
				else
				{
					$data['truck_type1'] =$this->Super_admin_model->driver_info_truck_type();
					$data['driver_name1'] = $this->Super_admin_model->driver_info_truck_driver();
					$data['truck_no1']  = $this->Super_admin_model->driver_info_truck_no();
					$this->Super_admin_model->get_client_req($rtf_id);
					$data['option_val'] = $this->Super_admin_model->get_option_val();
					$data['truck_data'] = $this->Super_admin_model->get_truck_report_data($rtf_id);
					$data['truck_details'] = $this->Super_admin_model->get_truck_details($rtf_id);
					$this->load->view('super_admin/header');
					$this->load->view('super_admin/sidebar');	
					$this->load->view('super_admin/edit_client_request',$data);
					$this->load->view('super_admin/footer');
				}
				
		}
		else
		{
				redirect(base_url('Super_admin/index'));
		}	
	}*/


	public function edit_client_req($rtf_id =null)
	{
		if ($this->is_logged_in())
		{	
		
			    if($this->input->post())
				{
					$rtf_id = $this->input->post('rtf_id');
					$truck_type = $this->input->post('truck_type');
					$length =  count($truck_type);
					$edit_array  = array(
						'rtf_qty'=>$this->input->post('rtf_qty'),
					
					 );
					 
					 $rs_request_truck = $this->Super_admin_model->update_request_truck_form($edit_array,$rtf_id);
					 
					 if($length > 0)
					 {
						$this->Super_admin_model->delete_request_form_details($rtf_id);
						for($i = 0; $i <  $length; $i++)
						{

							 $truck_type_id  = $this->input->post('truck_type')[$i];
							 $truck_no = $this->input->post('rtf_truck_no')[$i];

							 $truck_type_list = $this->Super_admin_model->get_truck_type_list($truck_type_id);
							 $truck_list = $this->Super_admin_model->get_truck_list($truck_no);

							 $driver_id = $this->input->post('driver_name')[$i];
							 $driver_list = $this->Super_admin_model->get_driver_list($driver_id);
							 $charge_type_text = $this->input->post('charge_type_text')[$i];
							 $charge_type_list = $this->Super_admin_model->get_truck_type_list($charge_type_text);
							
							$details_array = array(
								'rtf_id' => $rtf_id,
								'rtf_truck_type' => $this->input->post('truck_type')[$i],
								'rtf_truck_type_text' => $truck_type_list['truck_type_name'],
								'rtf_truck_no' => $this->input->post('rtf_truck_no')[$i],
								'rtf_truck_no_text' => $truck_list['truck_no'],
								'rtf_driver_name' => $this->input->post('driver_name')[$i],
								'rtf_driver_name_text' => $driver_list['driver_name']." ".$driver_list['driver_last_name'],
								'rtf_commision' => $this->input->post('commission')[$i],
								'rtf_rate' => $this->input->post('rtf_rate')[$i],
								'charge_type_id' => $this->input->post('charge_type_text')[$i],
								'charge_type_text' => $charge_type_list['truck_type_name'],
								
								 );
						
							 $details_data = $this->Super_admin_model->add_req_detail_data($details_array);
										
						}
					 }
					     
						 $tmr_notes_position = $this->input->post('tmr_notes_position');
					     $status_len =  count($tmr_notes_position);
						
						if($status_len > 0 )
						{
							 
							
							$this->Super_admin_model->delete_tmr_notes($rtf_id);
							$note_data = "";
							for($j = 0; $j <  $status_len; $j++)
							{

								if(!empty($this->input->post('tmr_notes_remark_input')[$j]))
								{
									
									$note_array = array(
										'tmr_notes_job_id' => $rtf_id,
										'tmr_notes_date' => $this->input->post('tmr_notes_date')[$j],
										'tmr_notes_time' => $this->input->post('tmr_notes_time')[$j],
										'tmr_notes_position' => $this->input->post('tmr_notes_position')[$j],
										'tmr_notes_remark' => $this->input->post('tmr_notes_remark_input')[$j],
										
										 );
								
									 $this->Super_admin_model->add_tmr_notes($note_array);
									
								}
								if(!empty($this->input->post('tmr_notes_remark_select')[$j]))
								{
									
									$note_array = array(
										'tmr_notes_job_id' => $rtf_id,
										'tmr_notes_date' => $this->input->post('tmr_notes_date')[$j],
										'tmr_notes_time' => $this->input->post('tmr_notes_time')[$j],
										'tmr_notes_position' => $this->input->post('tmr_notes_position')[$j],
										'tmr_notes_remark' => $this->input->post('tmr_notes_remark_select')[$j]
										 );
								        
								        //$note_data = "";
										$note_data = $this->Super_admin_model->add_tmr_notes($note_array);
								}
								
						    }

							if($note_data)
								{
									
									$this->session->set_flashdata('success_msg', "Record upated successfully");						
									redirect(base_url('Super_admin/edit_client_req/').$rtf_id);		
								}
								else
								{
										$this->session->set_flashdata('error_msg', "Something is wrong");		
										redirect(base_url('Super_admin/edit_client_req/').$rtf_id);	
								}		
						}
					
				}
				else
				{
					$data['truck_type1'] =$this->Super_admin_model->driver_info_truck_type();
					$data['driver_name1'] = $this->Super_admin_model->driver_info_truck_driver();
					$data['truck_no1']  = $this->Super_admin_model->driver_info_truck_no();
					$this->Super_admin_model->get_client_req($rtf_id);
					$data['option_val'] = $this->Super_admin_model->get_option_val();
					$data['truck_data'] = $this->Super_admin_model->get_truck_report_data($rtf_id);
					$data['truck_details'] = $this->Super_admin_model->get_truck_details($rtf_id);
					$data['tmr_notes'] = $this->Super_admin_model->get_tmr_notes_details($rtf_id);
					$data['activity1'] = $this->Super_admin_model->get_activity_name();
					$this->load->view('super_admin/header');
					$this->load->view('super_admin/sidebar');	
					$this->load->view('super_admin/edit_client_request',$data);
					$this->load->view('super_admin/footer');
				}
				
		}
		else
		{
				redirect(base_url('Super_admin/index'));
		}	
	 }
 

	
}

?>