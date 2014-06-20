<?php
class Cart extends MY_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('cartmodel');
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->library('tank_auth');
		$this->lang->load('tank_auth');
		 parent::list_cate_parent();
        parent::list_manufac();
	}
	public function add_to_cart(){
		$this->load->model('producthomemodel');
		$id_product = $this->input->post('id');
		$quantity = $this->input->post('quantity');
		if(!empty($_SERVER['HTTP_CLIENT_IP'])){
			$ip = $_SERVER['HTTP_CLIENT_IP'];
		}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
			$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else{
			$ip = $_SERVER['REMOTE_ADDR'];
		}
		$detail_product  = $this->producthomemodel->product_detail($id_product);
		if(empty($detail_product)){
			show_404();
			exit;
		}
		$price = $detail_product[0]['price'];
		$total_price = $price*$quantity;
		$check_cart = $this->cartmodel->check_cart($ip,$id_product);
		if(empty($check_cart)){
			$data_save = array();
			$data_save = array('id_product'=>$id_product,'price'=>$price,'total_price'=>$total_price,'ip'=>$ip,'create_date'=>strtotime('now'),'quantity'=>$quantity);
			$id = $this->cartmodel->add_to_cart($data_save);
			if($id>0){
				$error = array('error'=>0);
			}
			else{
				$error = array('error'=>1);
			}
		}
		else{
			$data_save = array();
			$data_save = array('id_product'=>$id_product,'price'=>$price,'total_price'=>$total_price,'ip'=>$ip,'create_date'=>strtotime('now'),'quantity'=>$quantity);
			$this->cartmodel->update_cart($check_cart[0]['id'],$data_save);
			$error = array('error'=>0);
		}
		echo json_encode($error);
	}
	public function show_cart(){
		if(!empty($_SERVER['HTTP_CLIENT_IP'])){
			$ip = $_SERVER['HTTP_CLIENT_IP'];
		}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
			$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else{
			$ip = $_SERVER['REMOTE_ADDR'];
		}
		$detail_cart = $this->cartmodel->check_cart_ip($ip);
		if(!empty($detail_cart)){
			$this->data['list_cart']=$this->cartmodel->list_cart_ip($ip);;
			$this->load->view('cart/cart_view',$this->data);
		}
		else{
			echo 'Không có sản phẩm';
		}
	}
	public function list_cart(){
		if(!empty($_SERVER['HTTP_CLIENT_IP'])){
			$ip = $_SERVER['HTTP_CLIENT_IP'];
		}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
			$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else{
			$ip = $_SERVER['REMOTE_ADDR'];
		}
		$detail_cart = $this->cartmodel->check_cart_ip($ip);
		$this->data['list_cart']=$this->cartmodel->list_cart_ip($ip);
		$this->load->view('home/order_layout',$this->data);
        
	}
	public function update_cart(){
		if(!empty($_SERVER['HTTP_CLIENT_IP'])){
			$ip = $_SERVER['HTTP_CLIENT_IP'];
		}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
			$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else{
			$ip = $_SERVER['REMOTE_ADDR'];
		}
		$id_cart = $this->input->post('id');
		$quantyti = $this->input->post('quantity');
		$detail_cart = $this->cartmodel->check_cart_id($id_cart);
		if(empty($detail_cart)){
			show_404();
			exit;
		}
		$price = $detail_cart[0]['price'];
		$total_price = $quantyti*$price;
		$data_save = array('quantity'=>$quantyti,'total_price'=>$total_price);
		$this->cartmodel->update_cart($id_cart,$data_save);
		$detail_cart = $this->cartmodel->check_cart_ip($ip);
		$this->data['list_cart']=$this->cartmodel->list_cart_ip($ip);
		$this->load->view('home_view/cart_ajax',$this->data);
	}
	public function delete_cart(){
		if(!empty($_SERVER['HTTP_CLIENT_IP'])){
			$ip = $_SERVER['HTTP_CLIENT_IP'];
		}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
			$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
		}else{
			$ip = $_SERVER['REMOTE_ADDR'];
		}
		$id_cart = $this->input->post('id');
		$this->cartmodel->delete_cart($id_cart);
		$this->data['list_cart']=$this->cartmodel->list_cart_ip($ip);
		$this->load->view('home_view/cart_ajax',$this->data);
	}
	public function check_out(){
		if(!$this->tank_auth->is_logged_in()){         // logged in
			redirect(base_url().'dang-nhap?redirect='.  full_url_($_SERVER));
		}
		else{
			if(!empty($_SERVER['HTTP_CLIENT_IP'])){
				$ip = $_SERVER['HTTP_CLIENT_IP'];
			}elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
				$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
			}else{
				$ip = $_SERVER['REMOTE_ADDR'];
			}
			if($this->input->post()){
				$this->load->model('orderproductmodel');
				$email = $this->input->post('email');
				$sex = $this->input->post('sex');
				$name = $this->input->post('name');
				$mobile = $this->input->post('mobile');
				$address = $this->input->post('address');
				$city = $this->input->post('address');
				$note = $this->input->post('note');
				$payment = $this->input->post('payment');
				$data_save = array(
					'email'=>$email,
					'sex'=>$sex,
					'name'=>$name,
					'mobile'=>$mobile,
					'address'=>$address,
					'city'=>$city,
					'note'=>$note,
					'payment'=>$payment
				);
				$id_order =$this->orderproductmodel->insert_order($data_save);
				if($id_order>0){
					$money = 0;
					$list_cart = $this->cartmodel->list_cart_ip_2($ip);
					$data_order_dt = array();
					foreach($list_cart as $k=>$v){
						unset($v['id']);
						unset($v['ip']);
						$v['order_id'] = $id_order;
						
						foreach($v as $k_mn=>$v_mn)
						{
							if($k_mn=='total_price')
							{
								$money +=$v_mn;
							}
						}
						$this->orderproductmodel->insert_order_detail($v);
						$this->cartmodel->delete_cart_ip($ip);
						$v = array();
					}
					$data_save['money']=$money;
					$data_save['site_name'] = $this->config->item('website_name', 'tank_auth');
					$this->_send_email('ordersuccess',$email,$email,$data_save);
					redirect('../'.ROT_DIR);
				}
			}
			else{
	            
				$this->data['list_cart']=$this->cartmodel->list_cart_ip($ip);
				$this->load->view('home/check_out_layout',$this->data);
			}
		}
	}
	function _send_email($type, $to, $email, &$data) {
        $this->load->library('email');
          $this->load->library('maillinux');
          $from = 'no-reply@mitsuvnautoparts.com';
          $subject = 'Đặt hàng thành công';
          $messsage = $this->load->view('email/'.$type.'-html', $data, TRUE);
          $this->maillinux->SendMail($from,$to,$subject,$messsage);
    }
}
?>
