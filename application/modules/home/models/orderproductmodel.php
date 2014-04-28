<?php
class Orderproductmodel extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	public function insert_order(array $data)
	{
		$this->db->insert('order',$data);
		return $this->db->insert_id();
	}
	public function insert_order_detail(array $data)
	{
		$this->db->insert('order_detail',$data);
		return $this->db->insert_id();
	}
}
?>