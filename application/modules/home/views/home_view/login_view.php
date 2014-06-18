<div class="login-right">
    <div class="content-login">
        <div id="ctl00_cph1_CustomerLogin1_Panel1">

            <h1>
                Đăng nhập vào Mitsuvnautoparts.com</h1>
            <?php
            $login = array(
                'name' => 'login',
                'id' => 'login',
                'value' => set_value('login'),
                'maxlength' => 80,
                'size' => 30,
                'id' => 'UserName',
                'class'=>'textInput'
            );
            
            $password = array(
                'name' => 'password',
                'id' => 'password',
                'size' => 30,
                'id' => 'Password',
                'class'=>'textInput'
            );
            $remember = array(
                    'name'	=> 'remember',
                    'id'	=> 'remember',
                    'value'	=> 1,
                    'checked'	=> set_value('remember'),
                    'style' => 'margin:0;padding:0',
            );
            ?>
            <form method="post">
                <span id="ctl00_cph1_CustomerLogin1_lblError" class="bg-error-infocus" style="display: block !important;">
                <?php echo form_error($password['name']); ?><?php echo isset($errors[$password['name']])?$errors[$password['name']]:''; ?><br>
                 <?php echo form_error($login['name']); ?><?php echo isset($errors[$login['name']])?$errors[$login['name']]:''; ?>
            </span>
            <b>Username</b><br>
            <?php echo form_input($login); ?><br>
            <b>Mật khẩu</b><br>
            <?php echo form_password($password); ?><br>
            
            <input type="submit"  value="Đăng nhập" id="ctl00_cph1_CustomerLogin1_btnLogin" class="btnLogin btnLogin-diff">
            </form>
        </div>
    </div>
    <span style="line-height: 30px; margin-top: 10px; display: block">Bạn chưa có tài khoản
        hãy click <a href="<?php echo base_url();?>dang-ky">Đăng ký</a></span>
</div>