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
}
?>

