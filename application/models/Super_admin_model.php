<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Super_admin_model extends CI_Model{

    //public $subscriber_id;
    function __construct()
    {
        parent::__construct();
        //$this->subscriber_id  = 1;
    }

    public function super_admin_login($where_array)
    {   
        $result = $this->db->get_where('users',$where_array);
        return $result->row_array();
    }

    public function get_truck_data()
    {
      $this->db->order_by("rtf_id", "desc");
       $query = $this->db->get('request_truck_form');
       return $query->result_array();
    }
    public function get_truck_details($rtf_id)
    {
        $this->db->where('request_truck_form.rtf_id',$rtf_id);
        $this->db->select('*');
        $this->db->from('request_truck_form');
        $this->db->join('request_truck_form_details_data','request_truck_form.rtf_id = request_truck_form_details_data.rtf_id');
        $query = $this->db->get();
        return $query->result_array();
    }
    public function get_truck_report_data($rtf_id)
    {
        $this->db->where('rtf_id',$rtf_id);
       $query = $this->db->get('request_truck_form');
       return $query->row_array();
    }

    public function get_truck_report_details($rtf_id)
    {     
        $this->db->where('request_truck_form.rtf_id',$rtf_id);
        $this->db->select('*');
        $this->db->from('request_truck_form_details_data');
        $this->db->join('request_truck_form','request_truck_form.rtf_id = request_truck_form_details_data.rtf_id', 'left');
        $this->db->join('driver_details','driver_details.driver_details_id  = request_truck_form_details_data.rtf_driver_name', 'left');
        $query = $this->db->get();
        return $query->result_array();
    }
    
    public function get_client_req($rtf_id)
    {
        $this->db->where('request_truck_form.rtf_id',$rtf_id);
        $this->db->select('*');
        $this->db->from('request_truck_form');
        $this->db->join('request_truck_form_details_data','request_truck_form.rtf_id = request_truck_form_details_data.rtf_id');
        $query = $this->db->get();
        return $query->row_array();
    }

    public function get_option_val()
    {
        $this->db->group_by('rtf_mode'); 
        $query = $this->db->get('request_truck_form');
        return $query->result_array();
    }

    public function driver_info_truck_no()
    {
     
        /*$this->db->group_by('truck_no'); 
        $query = $this->db->get('truck_details');
        return $query->result_array();*/

        $userdata = $this->session->userdata('userdata');
        $subscriber_id = $userdata['subscriber_id'];//$this->subscriber_id;
        $this->db->where('user_id',$subscriber_id);                
        $query = $this->db->get('truck_details');
        return $query->result_array();
    }

    public function driver_info_truck_type()
    {     
        /*$this->db->group_by('truck_type_name'); 
        $query = $this->db->get('truck_type');
        return $query->result_array();*/

        $userdata = $this->session->userdata('userdata');
        $subscriber_id = $userdata['subscriber_id'];//$this->subscriber_id;
        $this->db->where('subscriber_id',$subscriber_id);                
        $query = $this->db->get('truck_type');
        return $query->result_array(); 
    }
    public function driver_info_truck_driver()
    {
        
        /*$this->db->group_by('driver_name'); 
        $query = $this->db->get('driver_details');
        return $query->result_array();*/

        $userdata = $this->session->userdata('userdata');
        $subscriber_id = $userdata['subscriber_id'];//$this->subscriber_id;
        $this->db->where('user_id',$subscriber_id);                
        $query = $this->db->get('driver_details');
        return $query->result_array();
    }
    public function update_request_truck_form($edit_array,$rtf_id)
    {
        $this->db->where('rtf_id',$rtf_id);
       return  $this->db->update('request_truck_form',$edit_array);
    }
    
    public function get_client_branch($rtf_billto)
    {
        $this->db->where('branchid',$rtf_billto);
        $query = $this->db->get('client_branch');
        return $query->row_array();
    }
    public function delete_request_form_details($rtf_id)
    {
        $this->db->where('rtf_id',$rtf_id);
        return  $this->db->delete('request_truck_form_details_data');
    }
    public function get_truck_list($truck_no)
    {
        $this->db->where('truck_details_id ',$truck_no);
        $query = $this->db->get('truck_details');
        return $query->row_array();
    }

    public function get_truck_type_list($truck_type)
    {
        $this->db->where('truck_type_id',$truck_type);
        $query = $this->db->get('truck_type');
        return $query->row_array();
    }

    public function get_driver_list($driver_id)
    {
        $this->db->where('driver_details_id',$driver_id);
        $query = $this->db->get('driver_details');
        return $query->row_array();
    }

    public function add_req_detail_data($details_array)
    {
       return  $this->db->insert('request_truck_form_details_data',$details_array);
    }

    /*public function get_truck_journy_details($rtf_id)
    {
        $this->db->where('request_truck_form_details_data.rtf_id',$rtf_id);
        $this->db->select('*');
        $this->db->from('tmr_notes');
        $this->db->join('request_truck_form_details_data','tmr_notes.tmr_notes_job_id = request_truck_form_details_data.rtf_id');
        $query = $this->db->get();
        return $query->result_array();
    }*/

    public function get_truck_journy_details($rtf_id)
     {
    
     $this->db->where('tmr_notes_job_id',$rtf_id);
     $query = $this->db->get('tmr_notes');
     return $query->result_array();
     }

    public function get_tmr_notes_details($rtf_id)
    {
        $this->db->where('tmr_notes_job_id',$rtf_id);
        $query = $this->db->get('tmr_notes');
        return $query->result_array();
    }

    public function get_activity_name()
    {
        $this->db->group_by('activityname'); 
        $query = $this->db->get('activity_name');
        return $query->result_array();
    }

    public function get_remark($tmr_notes_remark)
    {
        $this->db->where('id',$tmr_notes_remark);
        $query = $this->db->get('activity_name');
        return $query->row_array();
    }

    public function delete_tmr_notes($rtf_id)
    {
        $this->db->where('tmr_notes_job_id',$rtf_id);
        return $this->db->delete('tmr_notes');
    }

    public function add_tmr_notes($note_array)
    {
        return $this->db->insert('tmr_notes',$note_array);
    }

    public function add_request_truck_form($add_array)
    {
        $this->db->insert('request_truck_form', $add_array);
        return $insert_id = $this->db->insert_id();
    }

    public function get_subscriber_mode()
    {   
        $userdata = $this->session->userdata('userdata');
        $subscriber_id = $userdata['subscriber_id'];//$this->subscriber_id;
        $this->db->where('subscriber_id',$subscriber_id);                
        $query = $this->db->get('transport');
        return $query->result_array(); 
    }
    
    public function get_mode_name($mode)
    {   
        $userdata = $this->session->userdata('userdata');
        $subscriber_id = $userdata['subscriber_id'];//$this->subscriber_id;
        $this->db->where('subscriber_id',$subscriber_id);
        $this->db->where('transport_id',$mode);        
        $query = $this->db->get('transport');
        return $query->row_array(); 
    }

}