

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
    <head><title>
            Phụ tùng ô tô - Phu tung xe o to nhập khẩu giá tốt
        </title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="google-site-verification" content="18O4kCaYdbSZqzfo__Wuyb3gSEqt7JPoCsBkE_wwCF8" />
        <link id="ctl00_lnkCano" rel="canonical" href="<?php echo full_url_($_SERVER); ?>" />
       <!--http://www.minifycss.com/css-compressor  async="true"/-->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/Reset.css" /><!--rat quan trong de tuong thich voi nhieu trinh duyet -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/ExtCss.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/bxNews.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/bxQuestion.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/jquery.selectbox.css" />
        <!--[if IE 7]><link rel="stylesheet" href="Css/FixIE/ie7.css" type="text/css" media="screen" /><![endif]-->
        <!--[if IE 8]><link rel="stylesheet" href="Css/FixIE/ie8.css" type="text/css" media="screen" /><![endif]-->
        <!--[if IE 9]><link rel="stylesheet" href="Css/FixIE/ie9.css" type="text/css" media="screen" /><![endif]-->
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/jq_version/1_7_1/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/Selectbox/jquery.selectbox-0.1.3.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/AutoComplete/jquery.autocomplete.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/Common.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/jquery.cookie.js"></script>
        <meta name="ROBOTS" content="ALL" />
        <title>Xác nhận và thanh toán</title>
    </head>
    <body>  
        <div class="ajax-loader-email" style="display: none;">
            <div><img src="<?php echo base_url(); ?>template/ezwebvietnam/home/images/ajax-loader-send-mail-2.gif" alt="send mail"/></div>
        </div>
        <div id="Wraper">
            <div id="wrapBody">
                <div id="Header">
                    <!--Header logo-->

                    <div class="header-container">
                        <!--Headet top-->
                        <div class="header-top">
                            <div class="h-item-left">
                                <span>Hotline: <span class="PhomeRed"><span id="ctl00_HeaderTop1_lblmobile">082.218.9762</span></span> | Email: lienhe@mitsuvnautoparts.com
                                    | Yahoo! </span>
                            </div>
                            <div class="h-item-right">
                                <ul class="menu-top">
                                    <li><a href="<?php echo base_url();?>" class="menu-ac">Trang chủ</a> </li>
                                    <li><a href="<?php echo base_url();?>lien-he">Liên hệ</a> </li>
                                </ul>
                            </div>
                            <div class="clr">
                            </div>
                        </div>
                        <!--end Headet top-->
                        <!--Headet main-->

                        <!--Headet main-->
                        <div class="clr header-main">
                            <div class="main-item-1">
                                <a id="ctl00_HeaderTop1_NavibarTop1_lnkLogo" href="<?php echo base_url();?>">
                                   <div style="width:249px; height:39px;"></div>
                                   <!--<img src="images/logo.jpg" width="249" height="39" alt="logo" />-->
                                </a>
                                </a>
                            </div>
                            <div class="main-item-2">
                                <div class="box-search">
                                    <span class="bg-s-left"></span><span class="bg-s-right"></span>
                                    <div >

                                        <span class="bg-txt-s">
                                            <input name="ctl00$HeaderTop1$NavibarTop1$txtCondition" type="text" id="ctl00_HeaderTop1_NavibarTop1_txtCondition" class="txtKeysearch AutocompleteText TextSearch" value="Nhập từ khóa tìm kiếm!" onblur="if (this.value == & #39; & #39; ) this.value = & #39; Nhập từ khóa tìm kiếm! & #39;" onfocus="if (this.value == & #39; Nhập từ khóa tìm kiếm! & #39; ) this.value = & #39; & #39;" />
                                        </span>
                                        <span class="bg-btn-s">
                                            <input type="submit" name="ctl00$HeaderTop1$NavibarTop1$btnSearch" value="" id="ctl00_HeaderTop1_NavibarTop1_btnSearch" class="btnSearch" />
                                        </span>

                                    </div>
                                </div>
                            </div>
                            <div class="main-item-3">
                                <div class="bg-cart">
                                    <?php
                                    if ($this->tank_auth->is_logged_in()) {
                                        ?>
                                        <div class="navBox login-item">
                                            <span class="icon-down"></span>

                                            <a id="ctl00_HeaderTop1_NavibarTop1_lnkLogin" class="pos-login" href="CustomerInfor-lvn.aspx">Xin chào <br> <b><?php echo $this->session->userdata('full_name');?></b></a>
                                            <div class="nav-content-hide" style="right: -131px; width: 200px; display: none;">
                                                <div style="font-size: 11px; font-weight: bold; color: #333;text-align: left;padding:10px 0;"><span class="padd-logout"><a href="<?php echo base_url();?>dang-xuat">Thoát</a></span></div>
                                            </div>
                                        </div>
                                    <?php } else { ?>

                                        <div class="navBox login-item">
                                            <span class="icon-down"></span>
                                            <a id="ctl00_HeaderTop1_NavibarTop1_lnkLogin" class="pos-login" href="<?php echo base_url();?>dang-nhap"><b>Đăng nhập</b><br />
                                            <div class="nav-content-hide" style="right: -131px;width:200px;">
                                                <div class='content-hide-body'><span><a href='<?php echo base_url();?>dang-nhap' class='btnLogin-abc'><span class=''>Đăng nhập</span></a></span><span style='padding-top: 10px;'><span style='float: left; padding-right: 10px;margin: 10px 0;'>Khách hàng mới?</span><a style='float: left;margin-bottom: 10px;' href='<?php echo base_url();?>dang-ky'>Đăng ký tại đây.</a></span></div>
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <div class="navBox Cart-item">
                                        <span class="icon-down"></span>
                                        <span class="numCart" id="lnkCart">&nbsp;0</span>
                                        <a href="/Orders.aspx" id="ctl00_HeaderTop1_NavibarTop1_linkCart" class="lnkCart">
                                            Giỏ hàng
                                        </a>
                                        <div class="nav-content-hide" style="right: 0px;">
                                            <div class="content-hide-body" id="pn-box-Cart">
                                                Giỏ hàng còn trống
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end Headet main-->
                        <script type="text/javascript">

                                    $(function () {

                                    $('.navBox').hover(function () {
                                    $(this).toggleClass('activeBoxTab');
                                            $(this).find('.nav-content-hide').stop(true, true).toggle();
                                            if ($(this).hasClass('Cart-item')) {
                                    // hien thi gio hang khi di chuot qua tab gio hang tren trang home
                                    var _url = '<?php echo base_url(); ?>home/cart/show_cart';
                                            GetListShoppingCart(_url, '#pn-box-Cart');
                                    }
                                    });
                                            //Autocomplete
                                            $(".AutocompleteText").autocomplete('<?php echo base_url(); ?>home/product/auto_complete');
                                            //nhan enter chay vao nut search
                                            var _cmdSearch = $("#ctl00_HeaderTop1_NavibarTop1_txtCondition");
                                            _cmdSearch.keypress(function (e) {
                                            if (e.keyCode == '13') {
                                            if (_cmdSearch.val() == '' || _cmdSearch.val() == 'Nhập từ khóa tìm kiếm!') {
                                            return false;
                                            }
                                            $("input[id='ctl00_HeaderTop1_NavibarTop1_btnSearch']").click();
                                            }
                                            });
                                            /*
                                             Hien thi thong tin gio hang
                                             */
                                            var url = '/Pages/Ajax/CartInfo.ashx?timespan=' + Number(new Date());
                                            $.get(url, function (data) {
                                            var lnkcart = $("span[id$=lnkCart]");
                                                    var lnkCart2 = $('a[id$=lnkCart2]');
                                                    lnkcart.html(data);
                                                    if (data.indexOf("0") > - 1) {
                                            lnkCart2.click(function () { return false; });
                                            } else { lnkCart2.click(function () { return true; }); }
                                            });
                                    });</script>

                        <!--end Headet main-->
                        <!--Headet menu-->

                        <!--Headet menu-->
                        <div class="header-nav">
                            <ul class="nav-top">
                                <?php
                                $i = 1;
                                foreach ($list_cate_parent as $cate_parent) {
                                    ?>
                                    <li class='navL1 width<?php echo $i ?>'>
                                        <i></i><a href='<?php echo base_url(); ?>c/<?php echo mb_strtolower(url_title(removesign($cate_parent['name']))); ?>-c<?php echo $cate_parent['id'] ?>'><span><?php echo $cate_parent['name'] ?> </span></a>
                                        <ul >
    <?php
    $cate_sub = $this->cateproducthomemodel->list_cate_from_parent($cate_parent['id']);
    foreach ($cate_sub as $cate_s) {
        ?>
                                                <li><i></i><a href='<?php echo base_url(); ?>c/<?php echo mb_strtolower(url_title(removesign($cate_s['name']))); ?>-c<?php echo $cate_s['id'] ?>'><?php echo $cate_s['name'] ?></a></li>

                                            <?php } ?>
                                        </ul>
                                    </li>
                                            <?php $i++;
                                        } ?>
                            </ul>
                        </div>
                        <script type="text/javascript">
                                    $(function () {
                                    $('.nav-top .navL1').hover(function () {
                                    $(this).toggleClass('navL1Hover');
                                            var _idx = $(this).index();
                                            var _num = 7;
                                            if (_idx > 7) {
                                    $(this).find('ul').css('right', '0px');
                                    }
                                    else {
                                    $(this).find('ul').css('left', '0px');
                                    }
                                    $(this).find('li:last-child ul').css('left', '-112px');
                                    });
                                            $(this).find('.nav-top .width1').css('width', '122px');
                                            $(this).find('.nav-top .mnu-focus .width1').css('width', '122px');
                                            $(this).find('.nav-top .width2').css('width', '129px');
                                            $(this).find('.nav-top .width3').css('width', '142px');
                                            $(this).find('.nav-top .width4').css('width', '133px');
                                            $(this).find('.nav-top .width5').css('width', '139px');
                                            $(this).find('.nav-top .width6').css('width', '168px');
                                            $(this).find('.nav-top .width7').css('width', '144px');
                                            //active menu: lnkActiveNav

                                            // set kick thuoc cho cac item li
                        //        autoRangSizeMenuItem();

                                    });
                                    /*
                                     Can kick thuoc cho cac item tren menu
                                     HNG
                                     */
                                            function autoRangSizeMenuItem() {
                                            // width cua thanh menu
                                            var _wTotal = $('.header-nav').outerWidth();
                                                    var _itemCount = $('.nav-top > li').size();
                                                    var _total = parseFloat(_wTotal) / parseFloat(_itemCount);
                                                    $('.nav-top >li').css('width', (_total) + 'px');
                                                    //$('.nav-top .navL1 ul > li').css('width', '250px');
                                            }
                        </script>
                        <!--end menu navibar-->

                        <!--end Header menu-->
                    </div>

                    <!--End Header logo-->
                </div>
                <div id="Content">


                    <div class="order-steps">
                        <span class="os-icon-cart"></span>
                        <span class="colorGray bold">GIỎ HÀNG</span>
                        <span class="os-icon-arrow"></span>
                        <span class="os-icon-bag-red"></span>
                        <span class="ColorRedBold">THANH TOÁN</span>
                        <span class="os-icon-arrow"></span>
                        <span class="os-icon-stick"></span>
                        <span class="colorGray">HOÀN TẤT</span>
                        <div class="clear"></div>
                    </div> <!-- END  .order-steps -->

                    <div class="box-Order-3 clr">
					<form name="check_out" method="post">                        
                        <ul class="o3-col">

                            <li class="o3-item">
                                <div class="o3-info">
                                    <span class="o3-info-h">
                                        Thông tin thanh toán
                                    </span>
                                    <span class="o3-info-text">
                                        Email
                                    </span>
                                    <span>
                                        <input name="email" type="text" value="<?php echo $this->session->userdata('email');?>" id="email" class="o3-input" style="width:96%" />
                                    </span>
                                    <span class="o3-info-text">
                                        Họ tên
                                    </span>
                                    <span>
                                        <span class="o3-bg-input">
                                            <select name="sex" id="sex" style="margin-right:5px;width:auto;border:none;font-size:14px;box-shadow:none;">
                                                <option value="0"> Anh </option>
                                                <option value="1"> Chị </option>

                                            </select>
                                            <input name="name" type="text" value="<?php echo $this->session->userdata('full_name');?>" id="name" class="o3-input-spec" style="width:79%" />
                                        </span>

                                    </span>
                                    <span class="o3-info-text">
                                        Điện thoại
                                    </span>
                                    <span>
                                        <input name="mobile" type="text" value="<?php echo $this->session->userdata('phone');?>" maxlength="12" id="mobile" class="o3-input" style="width:96%" />
                                    </span>
                                    <span class="o3-info-text">
                                        Địa chỉ thanh toán (<b style="color: #B4130B;">Số nhà, ngõ ngách</b>)
                                    </span>
                                    <span style="overflow: hidden;">

                                        <textarea name="address" rows="2" cols="20" id="address" class="o3-input o3i-street" style="width:96%;height:50px;">
</textarea>
                                    </span>
                                    <span>
                                        <select name="city" id="city" class="o3-select" style="margin-right:10px;width:142px;">
                                            <option selected="selected" value="0">- Tỉnh/Th&#224;nh phố -</option>
                                            <option value="30">H&#224; Nội</option>
                                            <option value="35">TP Hồ Ch&#237; Minh</option>
                                            <option value="76">An Giang</option>
                                            <option value="7">B&#224; Rịa - Vũng T&#224;u</option>
                                            <option value="8">Bạc Li&#234;u</option>
                                            <option value="9">Bắc Cạn</option>
                                            <option value="10">Bắc Giang</option>
                                            <option value="11">Bắc Ninh</option>
                                            <option value="12">Bến Tre</option>
                                            <option value="13">B&#236;nh Dương</option>
                                            <option value="14">B&#236;nh  Đinh</option>
                                            <option value="15">B&#236;nh Phước</option>
                                            <option value="16">B&#236;nh Thuận</option>
                                            <option value="18">C&#224; Mau</option>
                                            <option value="19">Cao Bằng</option>
                                            <option value="20">Cần Thơ</option>
                                            <option value="21">Đ&#224; Nẵng</option>
                                            <option value="22">Đăk lắk</option>
                                            <option value="23">Đăk N&#244;ng</option>
                                            <option value="24">Điện Bi&#234;n</option>
                                            <option value="25">Đồng Nai</option>
                                            <option value="26">Đồng Th&#225;p</option>
                                            <option value="27">Gia Lai</option>
                                            <option value="28">H&#224; Giang</option>
                                            <option value="29">H&#224; Nam</option>
                                            <option value="31">H&#224; Tĩnh</option>
                                            <option value="32">Hải Dương</option>
                                            <option value="33">Hải Ph&#242;ng</option>
                                            <option value="34">H&#242;a B&#236;nh</option>
                                            <option value="36">Hậu Giang</option>
                                            <option value="37">Hưng Y&#234;n</option>
                                            <option value="72">Hưng Y&#234;n</option>
                                            <option value="38">Kh&#225;nh H&#242;a</option>
                                            <option value="39">Ki&#234;n Giang</option>
                                            <option value="40">Kon Tum</option>
                                            <option value="41">Lai Ch&#226;u</option>
                                            <option value="42">L&#224;o Cai</option>
                                            <option value="43">Lạng Sơn</option>
                                            <option value="44">L&#226;m Đồng</option>
                                            <option value="45">Long An</option>
                                            <option value="47">Nam Định</option>
                                            <option value="48">Nghệ An</option>
                                            <option value="49">Ninh B&#236;nh</option>
                                            <option value="50">Ninh Thuận</option>
                                            <option value="51">Ph&#250; Thọ</option>
                                            <option value="52">Ph&#250; Y&#234;n</option>
                                            <option value="53">Quảng B&#236;nh</option>
                                            <option value="54">Quảng Nam</option>
                                            <option value="55">Quảng Ng&#227;i</option>
                                            <option value="56">Quảng Ninh</option>
                                            <option value="57">Quảng Trị</option>
                                            <option value="58">S&#243;c Trăng</option>
                                            <option value="59">Sơn La</option>
                                            <option value="60">T&#226;y Ninh</option>
                                            <option value="61">Th&#225;i B&#236;nh</option>
                                            <option value="62">Th&#225;i Nguy&#234;n</option>
                                            <option value="63">Thanh H&#243;a</option>
                                            <option value="65">Thừa Thi&#234;n Huế</option>
                                            <option value="66">Tiền Giang</option>
                                            <option value="67">Tr&#224; Vinh</option>
                                            <option value="68">Tuy&#234;n Quang</option>
                                            <option value="69">Vĩnh Long</option>
                                            <option value="70">Vĩnh Ph&#250;c</option>
                                            <option value="71">Y&#234;n B&#225;i</option>

                                        </select>
                                        
                                    </span>
                                    <span class="o3-info-text" style="font-style:italic;">
                                        Ghi chú cho người giao hàng
                                    </span>
                                    <span>
                                        <textarea name="note" rows="2" cols="20" id="ctl00_cph1_Order31_txtCusNote" class="o3-area">
                                        </textarea>
                                    </span>


                                </div>
                            </li> <!-- END  .COl 1 -->




                            <li class="o3-item">
                                <div class="o3-info">
                                    <span class="o3-info-h">
                                        Hình thức thanh toán
                                    </span>
                                    <ul class="o3-list-radio">
                                        <li>
                                            <span class="o3-radio"><input id="rdoCash" type="radio" name="rdoCash" value="0" checked="checked" /><label for="ctl00_cph1_Order31_rdoCash">Thanh toán khi nhận hàng</label></span> 
                                        </li>
                                        <li>
                                            <span class="o3-radio"><input name="rdoCash" id="rdoCash" type="radio" name="rdoCash" value="1" /><label for="ctl00_cph1_Order31_rdoPay">Chuyển khoản qua Internet/mobile Banking</label></span>
                                        </li>
                                        <li>
                                            <span class="o3-radio"><input id="rdoCash" type="radio" name="rdoCash" value="2" /><label for="ctl00_cph1_Order31_rdoPayOnl">Thanh toán trực tuyến</label></span>
                                        </li>
                                    </ul>
                                    <div class="clr"></div>
                                </div>     
                            </li> <!-- END  .COl 2 -->




                            <li class="o3-item">
                                <div class="o3-Cart">
                                    <span class="o3-info-h" style="font-weight:normal;">
                                        <b style="font-weight:bold;font-size:14px;">Giỏ hang</b> (<?php echo count($list_cart);?>)
                                    </span>
                                    <!--Cartlist--> 
                                    <ul class="o3-list-cart">
                                        <?php 
                                        $total = 0;
                                        foreach($list_cart as $cart_c)
                                        {
                                        ?>
                                        <li>
                                            <div class="cart-item clr">
                                                <div class="cart-item-img">
                                                    <?php 
                                                    if(file_exists(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$cart_c['image']) && is_file(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$cart_c['image'])&&$cart_c['image']!='')
                                                    {
                                                    ?>
                                                    <img id="ctl00_cph1_Order31_rptListCart_ctl01_imgProduct" src="<?php echo base_url();?>file/uploads/product/<?php echo $cart_c['image']?>" width="250" height="250" style="height:55px;width:44px;" />
                                                    <?php } else {?>
                                                    <img id="ctl00_cph1_Order31_rptListCart_ctl01_imgProduct" src="<?php echo base_url();?>file/uploads/no_image.gif" width="250" height="250" style="height:55px;width:44px;" />
                                                    <?php } ?>
                                                </div>
                                                <div class="cart-item-price">
                                                    <span id="ctl00_cph1_Order31_rptListCart_ctl01_lblToTalPrice"><?php echo $cart_c['total_price'];?> đ</span>
                                                </div>
                                                <div class="cart-item-body">
                                                    <span>
                                                        <a id="ctl00_cph1_Order31_rptListCart_ctl01_lnkProductName" href="Cam-bien-bao-mon-ma-phanh-xe-BMW-X5-4USFE83517LY64270-San-pham-Germany-product-c137814891-d73439657.aspx"><?php echo $cart_c['title']?></a> x <?php echo $cart_c['quantity']?>
                                                    </span>
                                                </div>                                
                                                <div class="clr"></div>
                                            </div>
                                        </li>
                                        <?php 
                                        $total += $cart_c['total_price']*$cart_c['quantity'];
                                        } 
                                        $deliver_fee = 0;
                                        ?>
                                    </ul>
                                    <div class="clr"></div>

                                    <div class="o3-cart-content">
                                        <div class="content-top" style="margin-top:10px;">
                                            <span style="float:left;">
                                                <b style="font-size:16px;">Tổng tiền</b>
                                            </span>
                                            <span style="float:right;color:#b4130b;">
                                                <b style="font-size:16px;"><?php echo $total;?> đ </b>
                                            </span>                            
                                        </div>
                                        <div class="clr"></div>
                                        
                                        <div class="content-top">
                                            <span style="float:left;">
                                                Phí vận chuyển
                                            </span>
                                            <span style="float:right;">
                                                <?php echo $deliver_fee;?>
                                            </span>
                                            <span class="clr"></span>
                                        </div>
                                        <div class="content-top">
                                            <span style="float:left;">
                                                Phí gói qùa
                                            </span>
                                            <span style="float:right;">
                                                0 đ
                                            </span>
                                            <span class="clr"></span>
                                        </div>
                                        <div class="content-top">
                                            <span style="float:left;">
                                                Điểm tích lũy
                                            </span>
                                            <span style="float:right;">
                                                0
                                            </span>
                                            <span class="clr"></span>
                                        </div>
                                        <div class="content-top" style="border-top:1px solid #cccccc;padding-top:15px;margin-top:10px;">
                                            <span style="float:left;color:#b4130b;">
                                                <b style="font-size:18px;">Thanh toán</b>
                                            </span>
                                            <span style="float:right;color:#b4130b;">
                                                <b style="font-size:18px;">
                                                    <?php echo $deliver_fee+$total;?> đ
                                                </b>
                                            </span>
                                            <span class="clr"></span>
                                        </div>
                                    </div>
                                </div>
                            </li> <!-- END  .COl 3 -->      



                        </ul>
                        <div class="clr"></div>        
                    </div>

                    <div class="o3-btn">
                        <a onclick="do_check_out();" id="ctl00_cph1_Order31_btnPayment" title="Thanh toán" class="o3-thanhtoan"></a>
                        <a href="<?php echo base_url();?>gio-hang" class="o3-xemgiohang" title="Xem giỏ hàng"></a>
                    </div> <!-- END  .Button -->
					</form>
                    <script type="text/javascript">
					function do_check_out()
					{
						document.forms.check_out.submit();
					}
                                        $(document).ready(function () {
                                var cmdddlCountryFirst = $('[id$=ddlCountry]');
                                        var cmdddlStreetFirst = $('#ctl00_cph1_Order31_ddlStreet');
                                        var idCountry = cmdddlCountryFirst.val();
                                        if (idCountry != '0') {
                                var Url = '/Pages/Ajax/BindSubCountry.ashx?id=' + cmdddlCountryFirst.val();
                                        $.get(Url, function (data) {
                                        if (data != '1') {
                                        cmdddlStreetFirst.find('option').remove();
                                                cmdddlStreetFirst.append(data);
                                                var streetVal = $('#ctl00_cph1_Order31_ddlStreetValueHidden');
                                                $('#ctl00_cph1_Order31_ddlStreet').children('option[value="' + streetVal.val() + '"]').attr('selected', 'selected');
                                        } else {
                                        cmdddlStreetFirst.html('');
                                        }
                                        });
                                }

                                        $('#ctl00_cph1_Order31_ddlStreet').change(function () {
                                var streetVal = $('#ctl00_cph1_Order31_ddlStreetValueHidden');
                                        var streetText = $('#ctl00_cph1_Order31_ddlStreetTextHidden');
                                        streetVal.val($(this).val());
                                        streetText.val($(this).children('option:selected').text());
                                });
                                        // load quan huyen tinh thanh theo khach hang da dang nhap
                                        var _coutr = $('input[id$=hidCountry]').val();
                                        var _street = $('input[id$=hidStresst]').val();
                                        LoadCountryByCus(_coutr, _street);
                                });
                                        function LoadCountryByCus(countryId, stressId) {
                                        var cmdddlCountryFirst = $('[id$=ddlCountry]');
                                                var cmdddlStreet = $('select[id$=ddlStreet]');
                                                if (countryId == '0') {
                                        cmdddlCountryFirst.children('option[value="' + countryId + '"]').attr('selected', 'selected');
                                        }
                                        if (stressId != '0') {
                                        var Url = '/Pages/Ajax/BindSubCountry.ashx?id=' + countryId;
                                                $.get(Url, function (data) {
                                                if (data != '1') {
                                                cmdddlStreet.find('option').remove();
                                                        cmdddlStreet.append(data);
                                                } else {
                                                cmdddlStreet.html('');
                                                }
                                                cmdddlStreet.children('option[value="' + stressId + '"]').attr('selected', 'selected');
                                                });
                                        }
                                        }
                    </script>

                </div>
                <div class="FooterTop">

                    <div class="box-footer-navi">
                        <div class="f-n-header">
                        </div>
                        <div class="f-n-content">
                            <div class="f-n-item">

                                <div class="n-item">
                                    <span class="n-left"></span>
                                    <span class="n-right">
                                        <span style='border-bottom:1px dotted #ccc;display:block;padding-bottom:15px;margin-bottom:10px;'>“Giá tiết kiệm hơn 30% so với các đơn vị cung cấp phụ tùng ô tô khác”
                                            Đây là lần thứ hai tôi liên hệ và đặt mua phụ tùng ô tô trên website www.hathanhauto.com, thực sự là rất dễ dàng và nhanh chóng. Chỉ vài thao tác đặt hàng, không cần đăng ký, tôi được chuyên viên hỗ trợ kỹ thuật tư vấn và chọn mua sản phẩm như ý. Tôi nhận được hàng chỉ sau 1h đồng hồ, sản phẩm trong tình trạng tốt; lắp đặt tại xưởng liên kết của MitsuvnAutoPart nên giá giảm khá nhiều so với các garage ô tô khác (tôi ước tính vào khoảng 25  30%). MitsuvnAutoPart cũng miễn phí cho đơn hàng cho tôi vì tôi mua hàng ở Hà Nội. Sau một thơi gian dùng thử 2 sản phẩm mua ở đây, tôi đánh giá rất cao về chất lượng sản phẩm, dịch vụ cung cấp nên tôi viết email lại cho MitsuvnAutoPart đăng lên mục ý kiến khách hàng để cho nhiều bạn bè của tôi, những người muốn tiết kiệm chi phí có cơ hội mua phụ tùng ô tô chính hãng với giá cả cạnh tranh và dịch vụ nhanh chóng tiết kiệm chính xác nhất.
                                        </span><span style='text-align:right;font-style:normal;display:block;'><b class='ColorRedBold' style='font-size:14px;'>Hoàng Anh Tuấn</b><br />Thái Hà-Đống Đa-Hà Nội</span>
                                    </span>
                                    <span class="clr"></span>
                                </div>
                            </div>
                            <div class="f-n-item">
                                <div class="n-item">
                                    <div class="n-h-text ColorRedBold">
                                        Dịch Vụ Ưu Trội
                                    </div>
                                    <div class="n-c-img">
                                        <ul>
                                            <li>
                                                <a href="#" class="i-cart">Mua hàng online</a>
                                            </li>
                                            <li>
                                                <a href="#" class="i-pay">Thanh toán Tiện lợi</a>
                                            </li>
                                            <li>
                                                <a href="#" class="i-chan">Giao hàng tận nơi</a>
                                            </li>
                                            <li>
                                                <a href="#" class="i-ser">Phục vụ chu đáo</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="clr"></div>
                        </div>
                    </div>
                </div>
                <div id="Footer">
                    <div class="box-footer">
                        
                        <div class="foo-item">
                            
                        </div>
                        <div class="foo-item">
                            <div class="foo-3-wrap">
                                
                            </div>
                        </div>
                        <div class="clr">
                        </div>
                        <div class="foo-bottom">
                            <span>Chấp nhận thanh toán</span>
                        </div>
                    </div>
                    <div id="fb-root1"></div>
                    <script type="text/javascript">
                                        (function (d, s, id) {
                                        var js, fjs = d.getElementsByTagName(s)[0];
                                                if (d.getElementById(id)) return;
                                                js = d.createElement(s); js.id = id;
                                                js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
                                                fjs.parentNode.insertBefore(js, fjs);
                                        } (document, 'script', 'facebook-jssdk'));               </script>
                </div>
                <div class="bannersrcollleft" style="position: absolute;top: -8px;left: -153px;">


                </div>
                <div class="bannersrcollright" style="position: absolute;top: -8px;right: -153px;">


                </div>
            </div>
            <div class="footer-info">
                <span style="float: left;">Copyright © 2012 <b>Mitsuvnautoparts.com</b> All rights reserved.</span>
                <span style="float: right;"><a href="/Mercedes-Benz-provider-c92477144.aspx" rel="nofollow"> &nbsp; Phụ tùng ô tô  Mercedes</a></span>
                <span style="float: right;margin-left: 10px;"><a href="/" rel="nofollow">Phụ tùng ô tô chính hãng nhập khẩu </a>  |</span>
                <span style="float: right;margin-left: 20px;"><a href="http://www.facebook.com/ezwebvietnam" rel="nofollow">Desgin EZWeb Việt Nam </a>  |</span>
            </div>
        </div>

        <script src="<?php echo base_url(); ?>template/ezwebvietnam/home/WebResource.axd?d=4zogrSb5tNMqoXhtFti3ZeWPd7RkZudkWaGsbtaJWPN67vU0K_m_0_-OArbAMSBEkrTWFv5elX7E76qrDP3bkiFu4_K0Sm8DTnVUpyY6jJo1&amp;t=635196033660000000" type="text/javascript"></script>


        <div class="overlayNonev2" style="display: none;">
        </div>
        <script type="text/javascript">
                        var _gaq = _gaq || [];
                        _gaq.push(['_setAccount', 'UA-37023348-1']);
                        _gaq.push(['_trackPageview']);
                        (function () {
                        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                        })();
                        var fixed = false;
                        $(document).scroll(function () {
                var width = $(window).width();
                        if (width <= 1400) {
                if ($(this).scrollTop() >= 10) {
                if (!fixed) {
                fixed = true;
                        $('.bannersrcollleft').css({ position: 'fixed', top: 10, left: 3 });
                        $('.bannersrcollright').css({ position: 'fixed', top: 10, right: 3 });
                }
                }
                }
                });
        </script>
    </body>
</html>