<?php
class Producthomemodel extends CI_Model
{
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    public function load_sp_ban_chay()
    {
        $sql="SELECT * FROM product ORDER BY rand() LIMIT 8";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function load_sp_new()
    {
        $sql="SELECT * FROM product ORDER BY id DESC LIMIT 8";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function product_detail($id_product)
    {
        $id_product = intval($id_product);
        $sql="SELECT *,product.id as id_pro, manufac.id as id_fac,manufac.name as name_fac, cate_product.id as id_cate,cate_product.name as name_cate FROM product INNER JOIN manufac ON product.id_fac = manufac.id INNER JOIN cate_product ON cate_product.id = product.id_cate WHERE product.id = ?";
        $query = $this->db->query($sql,array($id_product));
        return $query->result_array(); 
    }
    public function list_product($id_cate,$number,$offset)
    {
        $sql="SELECT * FROM product WHERE id_cate = ? LIMIT ?,?";
        $query = $this->db->query($sql,array($id_cate,$offset,$number));
        return $query->result_array(); 
    }
    public function list_product_name($key_search)
    {
        $sql="SELECT title FROM product WHERE title LIKE '%".$this->db->escape_str($key_search)."%'";
        $query = $this->db->query($sql);
        return $query->result_array(); 
    }
    public function count_list_product($id_cate)
    {
        $sql="SELECT * FROM product WHERE id_cate = ?";
        $query = $this->db->query($sql,array($id_cate));
        return count($query->result_array()); 
    }
}
?>