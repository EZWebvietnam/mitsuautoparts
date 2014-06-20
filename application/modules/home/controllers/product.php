<?php //
class Product extends MY_Controller
{
    public function __construct() {
        parent::__construct();
        $this->load->model('producthomemodel');
         $this->load->library('session');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->library('tank_auth');
        $this->lang->load('tank_auth');
        parent::list_cate_parent();
        parent::list_manufac();
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
		//print_r($detail_product);exit;
        if(empty($detail_product))
        {
            show_404();
            exit;
        }
        $this->data['product_detail'] = $detail_product;
        $this->data['main_content']='home_view/product_detail';
        $this->load->view('home/product_detail_layout',$this->data);
    }
    public function product_cate($id_cate = null)
    {
        $this->load->model('cateproducthomemodel');
        if(empty($id_cate))
        {
            show_404();exit;
        }
        if(!is_numeric($id_cate))
        {
            show_404();
            exit;
        }
        $detail_cate = $this->cateproducthomemodel->cate_detail($id_cate);
        if(empty($detail_cate))
        {
            show_404();exit;
        }
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        $page = $this->uri->segment(4);
        $config['per_page'] = 10;
        $config['total_rows'] = $this->producthomemodel->count_list_product($id_cate);
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
       $num_pages = ceil($config['total_rows']/ $config['per_page']);
       $array_sv = $this->producthomemodel->list_product($id_cate,$config['per_page'], $page1);
       $this->data['cate_detail']=$detail_cate;
       $this->data['total_page'] = $num_pages;
       $this->data['offset'] = $page1;
       $this->data['page']=$page;
       $this->data['total']=$config['total_rows'];
       $this->data['list']=$array_sv;
       $this->data['main_content']='home_view/list_product';
       $this->load->view('home/product_list_layout',$this->data);
    }
    public function auto_complete()
    {
        $key_search = $_GET['q'];
        $key_search = addslashes($key_search);
        $result = $this->producthomemodel->list_product_name($key_search);
        $this->data['result'] = $result;
        $this->load->view('home_view/auto_complete_view',$this->data);
    }
    public function search()
    {
        $this->load->model('cateproducthomemodel');
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        $page = $this->uri->segment(4);
        $config['per_page'] = 10;
        $config['total_rows'] = $this->producthomemodel->count_product_search($_GET);
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
       $num_pages = ceil($config['total_rows']/ $config['per_page']);
       $array_sv = $this->producthomemodel->list_product_search($_GET,$config['per_page'], $page1);
       $this->data['total_page'] = $num_pages;
       $this->data['offset'] = $page1;
       $this->data['page']=$page;
       $this->data['total']=$config['total_rows'];
       $this->data['list']=$array_sv;
       $this->data['main_content']='home_view/list_product';
       $this->load->view('home/product_list_search',$this->data);
    }
	public function test()
	{
		$this->load->model('producthomemodel');
		$this->producthomemodel->count_product_search();
	}
	public function request_get_price()
	{
		$name = $this->input->post('name');
		$email = $this->input->post('email');
		$phone = $this->input->post('phone');
		$content = loaibohtmltrongvanban(addslashes($this->input->post('content')));
		if($content=='' || empty($content))
		{
			redirect(''.$this->input->post('url_curent'));
		}
		else
		{
			$data_save = array('name'=>$name,'email'=>$email,'phone'=>$phone,'content'=>$content);
			$id = $this->producthomemodel->insert_request_price($data_save);
			if($id>0)
			{
				redirect(''.$this->input->post('url_curent'));
			}
		}
	}
}
?>