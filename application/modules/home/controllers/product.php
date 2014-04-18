<?php
class Product extends MY_Controller
{
    public function __construct() {
        parent::__construct();
        $this->load->model('producthomemodel');
        $this->load->library('form_validation');
        $this->load->library('tank_auth');
        $this->lang->load('tank_auth');
        parent::list_cate_parent();
    }
    public function detail($id = null)
    {
        if(empty($id))
        {
            show_404();
            exit;
        }
        if(!is_numeric($id))
        {
            show_404();
            exit;
        }
        $detail_product = $this->producthomemodel->product_detail($id);
        if(empty($detail_product))
        {
            show_404();
            exit;
        }
        $this->data['product_detail'] = $detail_product;
        $this->data['main_content']='home_view/product_detail';
        $this->load->view('home/product_detail_layout',$this->data);
    }
}
?>