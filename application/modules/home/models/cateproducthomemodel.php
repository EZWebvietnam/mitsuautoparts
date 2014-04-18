<?php
class Cateproducthomemodel extends CI_Model
{
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    public function list_cate_parent()
    {
        $sql="SELECT * FROM cate_product WHERE parent = 0";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
    public function list_cate_from_parent($id_cate)
    {
        $id_cate = intval($id_cate);
        $sql="SELECT * FROM cate_product WHERE parent = $id_cate";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
}
?>