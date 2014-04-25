<?php
class Cart extends MY_Controller
{
    public function __construct() {
        parent::__construct();
        $this->load->model('cartmodel');
    }
    public function add_to_cart()
    {
        $this->load->model('producthomemodel');
        $id_product = $this->input->post('id');
        $quantity = $this->input->post('quantity');
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        $detail_product  = $this->producthomemodel->product_detail($id_product);
        if(empty($detail_product))
        {
            show_404();
            exit;
        }
        $price = $detail_product[0]['price'];
        $total_price = $price*$quantity;
        $check_cart = $this->cartmodel->check_cart($ip,$id_product);
        if(empty($check_cart))
        {
            $data_save = array();
            $data_save = array('id_product'=>$id_product,'price'=>$price,'total_price'=>$total_price,'ip'=>$ip,'create_date'=>strtotime('now'),'quantity'=>$quantity);
            $id = $this->cartmodel->add_to_cart($data_save);
            if($id>0)
            {
                $error = array('error'=>0);
            }
            else
            {
                $error = array('error'=>1);
            }
        }
        else
        {
            $data_save = array();
            $data_save = array('id_product'=>$id_product,'price'=>$price,'total_price'=>$total_price,'ip'=>$ip,'create_date'=>strtotime('now'),'quantity'=>$quantity);
            $this->cartmodel->update_cart($check_cart[0]['id'],$data_save);
            $error = array('error'=>0);
        }
        echo json_encode($error);
    }
    public function show_cart()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        $detail_cart = $this->cartmodel->check_cart_ip($ip);
        if(!empty($detail_cart))
        {
            $this->data['list_cart']=$this->cartmodel->list_cart_ip($ip);;
            $this->load->view('cart/cart_view',$this->data);
        }
        else
        {
            echo 'Không có sản phẩm';
        }
    }
    public function list_cart()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        $detail_cart = $this->cartmodel->check_cart_ip($ip);
        $this->data['list_cart']=$this->cartmodel->list_cart_ip($ip);
        $this->load->view('home/order_layout',$this->data);
        
    }
    public function update_cart()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        $id_cart = $this->input->post('id');
        $quantyti = $this->input->post('quantity');
        $detail_cart = $this->cartmodel->check_cart_id($id_cart);
        if(empty($detail_cart))
        {
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
    public function delete_cart()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        $id_cart = $this->input->post('id');
        $this->cartmodel->delete_cart($id_cart);
        $this->data['list_cart']=$this->cartmodel->list_cart_ip($ip);
        $this->load->view('home_view/cart_ajax',$this->data);
    }
}
?>
