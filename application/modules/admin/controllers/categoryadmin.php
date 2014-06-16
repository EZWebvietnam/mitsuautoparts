<?php
class Categoryadmin extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('categorymodel');
	}
	public function list_category()
	{
		$this->load->helper('url');
        $config['uri_segment'] = 5;
        if ($this->input->post('page_no')) {
            $page = $this->input->post('page_no');
        } else {
            $page = 1;
        }
        $config['per_page'] = 10;
        $config['total_rows'] = $this->categorymodel->count_category();
        if ($page == '') {
            $page = 1;
        }
        $page1 = ($page - 1) * $config['per_page'];
        if (!is_numeric($page)) {
            show_404();
            exit;
        }
        $num_pages = ceil($config['total_rows'] / $config['per_page']);
        $array_sv = $this->categorymodel->load_category($config['per_page'], $page1);
        $this->data['total_page'] = $num_pages;
        $this->data['offset'] = $page1;
        $this->data['page'] = $page;
        $this->data['total'] = $config['total_rows'];
        $this->data['list_category'] = $array_sv;
        $this->load->view('category/ajax_admin_category', $this->data);
	}
	public function add()
	{
		if($this->input->post())
		{
			$title = $this->input->post('title');
			$dm_cha = $this->input->post('dm_cha_f');
			$data_save = array();
			$data_save = array('name'=>$title);
			if($this->input->post('dm_cha_'))
			{
				$data_save['parent'] = $this->input->post('dm_cha_');
			}
			else
			{
				$data_save['parent'] = 0;
			}
			$id = $this->categorymodel->add($data_save);
			if($id>0)
			{
				 $data = array('error' => '0', 'msg' => 'Thêm thành công');
                 echo json_encode($data);
			}
			else
			{
				 $data = array('error' => '1', 'msg' => 'Thêm thất bại');
                 echo json_encode($data);
			}
		}
		else
		{
			$this->load->view('category/ajax_admin_add_category', $this->data);
		}
		
	}
	public function edit($id = null)
	{
		if($this->input->post())
		{
			//print_r($_POST);exit;
			$title = $this->input->post('title');
			$dm_cha = $this->input->post('dm_cha_f');
			$data_save = array();
			$data_save = array('name'=>$title);
			if($this->input->post('dm_cha_'))
			{
				if($dm_cha == 1)
				{
					$data_save['parent'] = 0;
				}
				else
				{
					$data_save['parent'] = $this->input->post('dm_cha_');
				}
			}
			else
			{
				$data_save['parent'] = 0;
			}
			
			$this->categorymodel->update($id,$data_save);
			$data = array('error' => '0', 'msg' => 'Thêm thành công');
			echo json_encode($data);
		}
		else
		{
			$this->data['cate_detail'] = $this->categorymodel->cate_detail($id);
			$this->load->view('category/ajax_admin_edit_category',$this->data);
		}
	}
	public function delete($id = null)
    {
        $this->categorymodel->delete($id);
        $array = array('error' => 0, 'msg' => "Xóa thành công");
        echo json_encode($array);
    }
    public function deletes()
    {
        $array = $this->input->post('ar_id');
        foreach ($array as $k => $v) {
        	$this->categorymodel->delete($v);
        }
        $array = array('error' => 0, 'msg' => "Xóa thành công");
        echo json_encode($array);
    }
	
}
?>