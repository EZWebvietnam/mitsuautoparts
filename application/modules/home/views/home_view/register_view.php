<div class="login-right">
    <div class="content">
        <div onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;ctl00_cph1_CustomerRegister1sdg_btnRegister&#39;)">
	
        <h1>
            Tạo tài khoản mới</h1>
            <?php
            if ($use_username) {
                    $username = array(
                            'name'	=> 'username',
                            'id'	=> 'username',
                            'value' => set_value('username'),
                            'maxlength'	=> $this->config->item('username_max_length', 'tank_auth'),
                            'size'	=> 30,
                    );
            }
            $fullname = array(
                    'name'	=> 'fullname',
                    'id'	=> 'fullname',
                    'value'	=> set_value('fullname'),
                    'maxlength'	=> 80,
                    'size'	=> 30,
                 'class'=>'inputbox'
            );
            $phone = array(
                    'name'	=> 'phone',
                    'id'	=> 'phone',
                    'value'	=> set_value('phone'),
                    'maxlength'	=> 80,
                    'size'	=> 30,
                 'class'=>'inputbox'
            );
            $email = array(
                    'name'	=> 'email',
                    'id'	=> 'email',
                    'value'	=> set_value('email'),
                    'maxlength'	=> 80,
                    'size'	=> 30,
                    'class'=>'inputbox'
            );
            $password = array(
                    'name'	=> 'password',
                    'id'	=> 'password',
                    'value' => set_value('password'),
                    'maxlength'	=> $this->config->item('password_max_length', 'tank_auth'),
                    'size'	=> 30,
                    'class'=>'inputbox'
            );
            $confirm_password = array(
                    'name'	=> 'confirm_password',
                    'id'	=> 'confirm_password',
                    'value' => set_value('confirm_password'),
                    'maxlength'	=> $this->config->item('password_max_length', 'tank_auth'),
                    'size'	=> 30,
                    'class'=>'inputbox'
            );
            ?>
        <span id="ctl00_cph1_CustomerRegister1sdg_lblError" class="bg-error-infocus"></span><br />
        <span id="ctl00_cph1_CustomerRegister1sdg_lblForgetPass" style="color:Red;"></span>
        <form method="post" name="register_form">
         <h4 style="margin-top: 0;">
            Username<i>*</i><br />
            <?php echo form_input($username); ?>
            <span class="cssError1"><i><?php echo form_error($username['name']); ?><?php echo isset($errors[$username['name']])?$errors[$username['name']]:''; ?></i></span>
        </h4>
        <h4 style="margin-top: 0;">
            Địa chỉ Email<i>*</i><br />
            <?php echo form_input($email); ?>
            <span class="cssError1"><i><?php echo form_error($email['name']); ?><?php echo isset($errors[$email['name']])?$errors[$email['name']]:''; ?></i></span>
        </h4>
        <h2>
            Mật khẩu<i>*</i><br />
            <?php echo form_password($password); ?>
            <span class="cssError2"><i> <?php echo form_error($password['name']); ?></i></span>
        </h2>
        <h3>
            Xác nhận mật khẩu<i>*</i><br />
             <?php echo form_password($confirm_password); ?>
            <span class="cssError3 rePassNotMatched"><i><?php echo form_error($confirm_password['name']); ?></i></span>
        </h3>
        <h2>
            Điện thoại<i>*</i><br />
            <?php echo form_input($phone); ?>
            <span class="cssError4"><i><?php echo form_error($phone['name']); ?></i></span>
        </h2>
        <h3>
            Họ tên<i>*</i><br />
            <?php echo form_input($fullname); ?>
            <span class="cssError5"><i><?php echo form_error($fullname['name']); ?></i></span>
        </h3>
        
        <h4>
            <b style="color: red;"><i>*</i> Thông tin bắt buộc</b>
        </h4>
        <h5>
            <input id="checkbox_acept" type="checkbox" name="checkbox_acept" />Tôi đồng ý làm thành viên của<b> Mitsuvnautoparts.com</b>
            <span class="cssError5" id="text_error"><i></i></span>
           </h5>
            <input id="register" type="button" value="Đăng ký"  class="btn-Register btn-Register-diff" />
        </form>
        <div class="clr">
        </div>
        
</div>
    </div>
</div>
<script>
    $('#register').click(function(){
        if($("#checkbox_acept").is(':checked'))
            document.forms.register_form.submit();
        else
           $('#text_error').html('<i>Bạn chưa đồng ý với điều khoản của Mitsuautoparts</i>');
    });
</script>