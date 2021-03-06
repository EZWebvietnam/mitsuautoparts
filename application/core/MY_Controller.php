<?php

class MY_Controller extends CI_Controller
{
    protected $data;
    public function __construct()
    {
        parent::__construct();
        $this->data = array();

    }
    public function list_cate_parent()
    {
        $this->load->model('cateproducthomemodel');
        $this->data['list_cate_parent']=$this->cateproducthomemodel->list_cate_parent();
    }
    public function list_manufac()
    {
        $this->load->model('cateproducthomemodel');
        $this->data['list_manufac']=$this->cateproducthomemodel->get_fac();
    }
    public function load_header()
    {
        $link = $_SERVER['DOCUMENT_ROOT'] . ROT_DIR . 'setting.xml';
        $doc = new DOMDocument();
        $doc->load($link);

        $employees = $doc->getElementsByTagName("root");
        $data_setting = array();
        foreach ($employees as $employee) {
            $names = $employee->getElementsByTagName("Author");
            $name = $names->item(0)->nodeValue;
            $pub = $employee->getElementsByTagName("Publisher");
            $pubs = $pub->item(0)->nodeValue;
            $copy = $employee->getElementsByTagName("Copyright");
            $cop = $copy->item(0)->nodeValue;
            $robot = $employee->getElementsByTagName("robots");
            $robots = $robot->item(0)->nodeValue;
            $dis = $employee->getElementsByTagName("distribution");
            $distribution = $dis->item(0)->nodeValue;
            $rate = $employee->getElementsByTagName("rating");
            $rating = $rate->item(0)->nodeValue;
            $key = $employee->getElementsByTagName("keywords");
            $keywords = $key->item(0)->nodeValue;
            $logo = $employee->getElementsByTagName("logo");
            $logos = $logo->item(0)->nodeValue;
            $icon = $employee->getElementsByTagName("icon");
            $icons = $icon->item(0)->nodeValue;
            $desc = $employee->getElementsByTagName("description");
                $description = $desc->item(0)->nodeValue;
            $tit = $employee->getElementsByTagName("title");
                $title = $tit->item(0)->nodeValue;
                $data_setting = array('author'=>$name,'publisher'=>$pubs,'copyright'=>$cop,'robots'=>$robots,
                    'distribution'=>$distribution,'rating'=>$rating,'keywords'=>$keywords,'logo'=>$logos,'icon'=>$icons,'description'=>$description,'title'=>$title);
        }
        $this->data['header']=$data_setting;
    }
    
}
?>