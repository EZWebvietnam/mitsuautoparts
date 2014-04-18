<?php
class Home extends MY_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->library('tank_auth');
        $this->lang->load('tank_auth');
        parent::list_cate_parent();
    }

    public function index() {
        $this->load->model('cateproducthomemodel');
        $this->data['main_content']='home_view/home_index';
        $this->load->view('home/home_index_layout',$this->data);
    }
}
?>