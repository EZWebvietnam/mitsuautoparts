<?php
class Categorymodel extends CI_Model
{
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    public function list_category()
    {
        $sql="SELECT * FROM cate_product";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
	public function load_category($number, $offset) {
        $sql = "SELECT * FROM cate_product LIMIT $offset,$number";
        $query = $this->db->query($sql);
        return $query->result_array();
    }
	public function count_category() {
        $sql = "SELECT * FROM cate_product";
        $query = $this->db->query($sql);
        return count($query->result_array());
    }
	public function add(array $data)
	{
		$this->db->insert('cate_product',$data);
		return $this->db->insert_id();	
	}
	public function delete($id)
	{
		$this->db->delete('cate_product',array('id'=>$id));
	}
	public function cate_detail($id)
	{
		$sql="SELECT * FROM cate_product WHERE id = $id";
        $query = $this->db->query($sql);
        return $query->result_array();
	}
	public function update($id,array $data)
	{
		$this->db->where('id',$id);
		$this->db->update('cate_product',$data);	
	}
}
?>