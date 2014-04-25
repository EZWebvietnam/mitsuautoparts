<?php

class Home extends MY_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->library('tank_auth');
        $this->lang->load('tank_auth');
        parent::list_cate_parent();
        parent::list_manufac();
    }

    public function index() {
        $this->load->model('cateproducthomemodel');
        $this->load->model('producthomemodel');
        $this->data['list_sp_ban_chay'] = $this->producthomemodel->load_sp_ban_chay();
        $this->data['list_sp_new'] = $this->producthomemodel->load_sp_new();
        $this->data['main_content'] = 'home_view/home_index';
        $this->load->view('home/home_index_layout', $this->data);
    }

    public function register() {
        $use_username = $this->config->item('use_username', 'tank_auth');
        $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean|min_length[' . $this->config->item('username_min_length', 'tank_auth') . ']|max_length[' . $this->config->item('username_max_length', 'tank_auth') . ']|alpha_dash');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|xss_clean|valid_email');
        $this->form_validation->set_rules('fullname', 'Fullname', 'trim|required|xss_clean');
        $this->form_validation->set_rules('phone', 'Mobile Phone', 'trim|required|xss_clean');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean|min_length[' . $this->config->item('password_min_length', 'tank_auth') . ']|max_length[' . $this->config->item('password_max_length', 'tank_auth') . ']|alpha_dash');
        $this->form_validation->set_rules('confirm_password', 'Confirm Password', 'trim|required|xss_clean|matches[password]');
        $this->data['errors'] = array();
        $email_activation = $this->config->item('email_activation', 'tank_auth');
        if ($this->form_validation->run()) {        // validation ok
            if (!is_null($data = $this->tank_auth->create_user(
                            $use_username ? $this->form_validation->set_value('username') : '', $this->form_validation->set_value('email'), $this->form_validation->set_value('password'), $this->form_validation->set_value('fullname'), $this->form_validation->set_value('phone'), '3', $email_activation))) {         // success
                $data['site_name'] = $this->config->item('website_name', 'tank_auth');

                if ($email_activation) {         // send "activate" email
                    $data['activation_period'] = $this->config->item('email_activation_expire', 'tank_auth') / 3600;

                    $this->_send_email('activate', $this->form_validation->set_value('email'), $data['email'], $data);

                    unset($data['password']); // Clear password (just for any case)

                    $this->_show_message($this->lang->line('auth_message_registration_completed_1'));
                } else {
                    if ($this->config->item('email_account_details', 'tank_auth')) { // send "welcome" email
                        $this->_send_email('welcome', $data['email'], $data);
                    }
                    unset($this->data['password']); // Clear password (just for any case)

                    $this->_show_message($this->lang->line('auth_message_registration_completed_2') . ' ' . anchor('/auth/login/', 'Login'));
                }
            } else {
                $this->data['error_form_mess'] = 1;
                $errors = $this->tank_auth->get_error_message();
                foreach ($errors as $k => $v)
                    $this->data['errors'][$k] = $this->lang->line($v);
            }
        }
        $this->data['use_username'] = $use_username;
        $this->data['main_content'] = 'home_view/register_view';
        $this->load->view('home/register_layout', $this->data);
    }

    function login() {
        if ($this->tank_auth->is_logged_in()) {         // logged in
            redirect('/');
        } else {
            $this->data['login_by_username'] = ($this->config->item('login_by_username', 'tank_auth') AND
                    $this->config->item('use_username', 'tank_auth'));
            $this->data['login_by_email'] = $this->config->item('login_by_email', 'tank_auth');

            $this->form_validation->set_rules('login', 'Login', 'trim|required|xss_clean');
            $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean');
            // Get login for counting attempts to login
            if ($this->config->item('login_count_attempts', 'tank_auth') AND ( $login = $this->input->post('login'))) {
                $login = $this->security->xss_clean($login);
            } else {
                $login = '';
            }
            $this->data['errors'] = array();
            if ($this->form_validation->run()) {// validation ok
                if ($this->tank_auth->login(
                                $this->form_validation->set_value('login'), $this->form_validation->set_value('password'), $this->form_validation->set_value('remember'), $this->data['login_by_username'], $this->data['login_by_email'])) {        // success
                    if(isset($_GET['redirect']))
                    {
                        redirect($_GET['redirect']);
                    }
                    else
                    {
                        redirect('/');
                    }
                } else {
                    $errors = $this->tank_auth->get_error_message();
                    if (isset($errors['banned'])) {        // banned user
                        $this->_show_message($this->lang->line('auth_message_banned') . ' ' . $errors['banned']);
                    } else {             // fail
                        foreach ($errors as $k => $v)
                            $data['errors'][$k] = $this->lang->line($v);
                    }
                }
            }

            $this->data['main_content'] = 'home_view/login_view';
            $this->load->view('home/register_layout', $this->data);
        }
    }

    function activate() {
        $user_id = $this->uri->segment(2);
        $new_email_key = $this->uri->segment(3);
        // Activate user
        if ($this->tank_auth->activate_user($user_id, $new_email_key)) {
            // success
            if ($this->tank_auth->is_logged_in()) {
                $this->tank_auth->logout();
            }
            $this->_show_message($this->lang->line('auth_message_activation_completed') . ' ' . anchor('/home/auth/login/', 'Login'));
        } else {                // fail
            $this->_show_message($this->lang->line('auth_message_activation_failed'));
        }
    }

    function logout() {
        $this->tank_auth->logout();
        $this->session->sess_create();
        $this->_show_message($this->lang->line('auth_message_logged_out'));
    }

    function _show_message($message) {
        $this->session->set_flashdata('message', $message);
        redirect('/');
    }

    function _send_email($type, $to, $email, &$data) {
        $this->load->library('email');
          $this->load->library('maillinux');
          $from = 'no-reply@mitsuvnautoparts.com';
          $subject = 'Register Account Success';
          $messsage = $this->load->view('email/'.$type.'-html', $data, TRUE);
          $this->maillinux->SendMail($from,$to,$subject,$messsage);
        /*$this->load->library('mailer');
        $from = 'nguyentruonggiang91@gmail.com';
        $subject = 'Register Account Success';
        $messsage = $this->load->view('email/' . $type . '-html', $data, TRUE);
        $this->mailer->sendmail($to, $to, $subject, $messsage);*/
    }

}

?>