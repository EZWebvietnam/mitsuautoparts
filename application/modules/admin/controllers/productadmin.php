<?php

class Productadmin extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('productmodel');
        $this->load->helper(array('form','url'));
        $this->load->library('session');
        $this->load->library('tank_auth');
        $this->lang->load('tank_auth');
        $this->load->library('form_validation');
        $this->load->model('categorymodel');
    }

    public function index() {
        if(!$this->tank_auth->is_login_admin(TRUE))
        {
           redirect('/quan-tri');
        }
        $this->load->view('admin/index_layout_ctv');
    }

    public function list_product() {
        if(!$this->tank_auth->is_login_admin(TRUE))
        {
             redirect('/quan-tri');
        }
        if($this->session->userdata('role')!=1)
        {
            show_404();
            exit;
        }
        $this->load->helper('url');
        $config['uri_segment'] = 5;
        if ($this->input->post('page_no')) {
            $page = $this->input->post('page_no');
        } else {
            $page = 1;
        }
        $config['per_page'] = 10;
        $config['total_rows'] = $this->productmodel->count_product();
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
        $num_pages = ceil($config['total_rows'] / $config['per_page']);
        $array_sv = $this->productmodel->list_product($config['per_page'], $page1);
        $this->data['total_page'] = $num_pages;
        $this->data['offset'] = $page1;
        $this->data['page'] = $page;
        $this->data['total'] = $config['total_rows'];
        $this->data['list_product'] = $array_sv;
        $this->load->view('product/ajax_admin_get_product', $this->data);
    }

    public function delete($id) {
        if(!$this->tank_auth->is_login_admin(TRUE))
        {
            redirect('/quan-tri');
        }
        if($this->session->userdata('role')!=1)
        {
            show_404();
            exit;
        }
        $this->productmodel->delete_product($id);
        $array = array('error' => 0, 'msg' => "Xóa thành công");
        echo json_encode($array);
    }

    public function deletes() {
        if(!$this->tank_auth->is_login_admin(TRUE))
        {
            redirect('/quan-tri');
        }
        if($this->session->userdata('role')!=1)
        {
            show_404();
            exit;
        }
        $array = $this->input->post('ar_id');
        foreach ($array as $k => $v) {
            $this->productmodel->delete_product($v);
            $this->productmodel->delete_user_product($v);
        }
        $array = array('error' => 0, 'msg' => "Xóa thành công");
        echo json_encode($array);
    }

    public function view($id = null) {
        if(!$this->tank_auth->is_login_admin(TRUE))
        {
             redirect('/quan-tri');
        }
        if($this->session->userdata('role')!=1)
        {
            show_404();
            exit;
        }
        if (empty($id)) {
            show_404();
            exit;
        }
        $detail = $this->productmodel->view_product($id);
        if (empty($detail)) {
            show_404();
            exit;
        }
        $this->data['detail_product'] = $detail;
        $this->load->view('product/ajax_admin_view_product', $this->data);
    }

    public function add() {
        if(!$this->tank_auth->is_login_admin(TRUE))
        {
            redirect('/quan-tri');
        }
        if($this->session->userdata('role')!=1)
        {
            show_404();
            exit;
        }
        if ($this->input->post()) {
            $data_save = array(
                'title' => $this->input->post('title'),
                'price' => intval($this->input->post('cost')),
                'content' => stripslashes($this->input->post('content')),
                'image' => $this->input->post('file'),
				'id_cate'=>1,
				'stock'=>100,
				'create_date'=>strtotime('now'),
				'year'=>$this->input->post('year'),
				'id_cate'=>$this->input->post('category')
            );
            $id = $this->productmodel->add_product($data_save);
			if($id>0)
			{
				 $array = array('error' => 0, 'msg' => 'Thêm thành công');
			}
           else
		   {
		   		 $array = array('error' => 1, 'msg' => 'Thêm thất bại');	
		   }
            echo json_encode($array);
        } else {
            $this->load->model('categorymodel');
            $this->data['list_cate'] = $this->categorymodel->list_category();
            $this->load->view('product/ajax_admin_add_product', $this->data);
        }
    }

    public function edit($id = null) {
        if(!$this->tank_auth->is_login_admin(TRUE))
        {
             redirect('/quan-tri');
        }
        if($this->session->userdata('role')!=1)
        {
            show_404();
            exit;
        }
        if (empty($id)) {
            show_404();
            exit;
        }
        $detail = $this->productmodel->view_product($id);
        if (empty($detail)) {
            show_404();
            exit;
        }
        if ($this->input->post()) {
            $file = $this->input->post('file');
            if ($file != '') {
                $data_save = array(
                    'title' => $this->input->post('title'),
                    'price' => $this->input->post('cost'),
                    'content' => $this->input->post('content'),
                    'image' => $file,
					'id_cate'=>$this->input->post('category')
                );
            } else {
                $data_save = array(
                    'title' => $this->input->post('title'),
                    'price' => $this->input->post('cost'),
                    'image' => $this->input->post('content'),
					'id_cate'=>$this->input->post('category')
                );
            }
            $this->productmodel->update_product($id, $data_save);
            $array = array('error' => 0, 'msg' => 'Cập nhập thành công');
            echo json_encode($array);
        } else {
			$this->data['list_cate']=$this->categorymodel->list_category();
            $this->data['detail_product'] = $detail;
            $this->load->view('product/ajax_admin_edit_product', $this->data);
        }
    }

}
?>