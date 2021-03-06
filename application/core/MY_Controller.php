<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    protected $data;

	public function __construct() {
		parent::__construct();
		$this->checkLang();

        $emailUser = $this->session->userdata('email');
        if(isset($emailUser)) {
            $this->data["email_user"] = $emailUser;
        }

    }
    
    
    public function checkLang() 
    {
		$selectedLang = $this->session->userdata('language');
		if(!isset($selectedLang))
		{
			$selectedLang = $this->config->item('language');
		}
		$this->lang->load('common', $selectedLang);

    }


    public function setLang() {
        $selectedLang = $this->input->get('language');
        if(isset($selectedLang))        
        {
            $this->session->set_userdata("language", $selectedLang);
        }
        redirect("home");
    }

    protected function setData($key, $value) {
        $this->data[$key] = $value;
    }

    protected function loadView($viewName) {
        $this->load->view($viewName, $this->data);
    }

}
