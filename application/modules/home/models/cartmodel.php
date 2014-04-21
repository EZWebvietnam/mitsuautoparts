<?php
class Cartmodel extends CI_Model
{
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    public function add_to_cart(array $data)
    {
        $this->db->insert('cart',$data);
        return $this->db->insert_id();
    }
    public function check_cart($ip,$id_product)
    {
        $sql ='SELECT * FROM cart WHERE ip = ? AND id_product = ?';
        $query = $this->db->query($sql,array($ip,$id_product));
        return $query->result_array();
    }
    public function check_cart_ip($ip)
    {
        $sql ='SELECT * FROM cart WHERE ip = ?';
        $query = $this->db->query($sql,array($ip));
        return $query->result_array();
    }
    public function list_cart_ip($ip)
    {
        $sql ='SELECT *,cart.id as id_cart,product.id as id_prod FROM cart INNER JOIN product ON product.id = cart.id_product WHERE cart.ip = ?';
        $query = $this->db->query($sql,array($ip));
        return $query->result_array();
    }
    public function update_cart($id_cart,array $data)
    {
        $id_cart = intval($id_cart);
        $this->db->where('id',$id_cart);
        $this->db->update('cart',$data);
    }
    public function delete_cart($id_cart)
    {
        $id_cart = intval($id_cart);
        $this->db->delete('cart',array('id'=>$id_cart));
    }
}
?>