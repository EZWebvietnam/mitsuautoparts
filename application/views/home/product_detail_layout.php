<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
    <head>
        <title>
            <?php echo $product_detail[0]['title'] ?>
        </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="google-site-verification" content="18O4kCaYdbSZqzfo__Wuyb3gSEqt7JPoCsBkE_wwCF8" />
        <link id="ctl00_lnkCano" rel="canonical" href="<?php echo full_url_($_SERVER) ?>" />
        <!--http://www.minifycss.com/css-compressor  async="true"/-->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/Reset.css" />
        <!--rat quan trong de tuong thich voi nhieu trinh duyet -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/ExtCss.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/bxNews.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/bxQuestion.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/jquery.selectbox.css" />
        <!--[if IE 7]>
      <link rel="stylesheet" href="<?php echo base_url();?>template/ezwebvietnam/home/css/ie7.css" type="text/css" media="screen" />
      <![endif]-->
      <!--[if IE 8]>
      <link rel="stylesheet" href="<?php echo base_url();?>template/ezwebvietnam/home/css/ie8.css" type="text/css" media="screen" />
      <![endif]-->
      <!--[if IE 9]>
      <link rel="stylesheet" href="<?php echo base_url();?>template/ezwebvietnam/home/css/ie9.css" type="text/css" media="screen" />
      <![endif]-->
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/jq_version/1_7_1/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/Selectbox/jquery.selectbox-0.1.3.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/AutoComplete/jquery.autocomplete.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/Common.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/jquery.cookie.js"></script>
        <meta name="ROBOTS" content="ALL" />
        <!--lightbox Color-->
        <script src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/SildeProductDetail/jquery.colorbox-min.js"
        type="text/JavaScript"></script>
        <!--Carousel-->
        <script src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/SildeProductDetail/jquery.carouFredSel-2.1.3.js"
        type="text/JavaScript"></script>
        <!-- Load the Cloud Zoom JavaScript file -->
        <script src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/SildeProductDetail/cloud-zoom.1.0.2.min.js"
        type="text/JavaScript"></script>
        <!-- Load the Cloud Zoom CSS file -->
        <link href="<?php echo base_url(); ?>template/ezwebvietnam/home/js/SildeProductDetail/cloud-zoom.css" rel="stylesheet"
              type="text/css" />
        <script src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/VoteProduct/VoteProduct.js" type="text/JavaScript"></script>
        <!-- Load star de danh gia sp -->
        <meta name="description" content="Hathanhauto.com địa chỉ nhập khẩu và phân phối chổi gạt mưa trước Mercedes S320, chổi gạt mưa trước Mercedes cam kết chất lượng cao nhất và giá tốt nhất tới khách hàng" />
        <meta name="keywords" content="Chổi gạt mưa trước Mercedes S320, phu tung o to, gia phu tung o to" />
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
                               
                            </div>
                            <div class="main-item-2">
                                <div class="box-search">
                                    <span class="bg-s-left"></span><span class="bg-s-right"></span>
                                    <form name="form_search" action="<?php echo base_url();?>tim-kiem" method="get">
                           
                              <span class="bg-txt-s">
                              <input name="key_search" type="text" id="key_search" class="txtKeysearch AutocompleteText TextSearch" value="Nhập từ khóa tìm kiếm!" onblur="if(this.value==&#39;&#39;) this.value=&#39;Nhập từ khóa tìm kiếm!&#39;" onfocus="if(this.value ==&#39;Nhập từ khóa tìm kiếm!&#39; ) this.value=&#39;&#39;" />
                              </span>
                              <span class="bg-btn-s">
                                  <input  type="submit"  value="" id="btn_search_main" class="btnSearch" />
                              </span>
                          
                           </form>
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
                                        <a href="javascript:void(0);" id="ctl00_HeaderTop1_NavibarTop1_linkCart" class="lnkCart">
                                            Giỏ hàng
                                        </a>
                                        <div class="nav-content-hide" style="right: 0px;">
                                            <div class="content-hide-body" id="pn-box-Cart">

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
                                            $(".AutocompleteText").autocomplete('<?php echo base_url();?>home/product/auto_complete');
                                            
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
                                    });                  </script>
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
                <?php echo $this->load->view($main_content); ?>
                <div class="FooterTop">

                    <div class="box-footer-navi">
                        <div class="f-n-header">
                        </div>
                        <div class="f-n-content">
                            
                            
                            
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
                <span style="float: left;">Copyright © <?php echo date('Y');?> <b>Mitsuvnautoparts.com</b> All rights reserved.</span>
                
                <span style="float: right;margin-left: 10px;"><a href="/" rel="nofollow">Phụ tùng ô tô chính hãng nhập khẩu </a>  |</span>
                <span style="float: right;margin-left: 20px;"><a href="http://www.facebook.com/ezwebvietnam" rel="nofollow">Desgin EZWeb Việt Nam </a>  |</span>
            </div>
        </div>
        <script src="<?php echo base_url(); ?>template/ezwebvietnam/home/WebResource.axd?d=4zogrSb5tNMqoXhtFti3ZeWPd7RkZudkWaGsbtaJWPN67vU0K_m_0_-OArbAMSBEkrTWFv5elX7E76qrDP3bkiFu4_K0Sm8DTnVUpyY6jJo1&amp;t=635196033660000000" type="text/javascript"></script>
        <div class="overlayNonev2" style="display: none;">
        </div>
        <script type="text/javascript">



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
