

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi" lang="vi">
    <head><title>
           Phụ tùng ô tô - Phu tung xe o to nhập khẩu giá tốt
        </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="google-site-verification" content="18O4kCaYdbSZqzfo__Wuyb3gSEqt7JPoCsBkE_wwCF8" />
        <link id="ctl00_lnkCano" rel="canonical" href="<?php echo full_url_($_SERVER);?>" />
        <!--http://www.minifycss.com/css-compressor  async="true"/-->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/Reset.css" /><!--rat quan trong de tuong thich voi nhieu trinh duyet -->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/ExtCss.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/bxNews.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/bxQuestion.css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/jquery.selectbox.css" />
        <!--[if IE 7]><link rel="stylesheet" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/ie7.css" type="text/css" media="screen" /><![endif]-->
        <!--[if IE 8]><link rel="stylesheet" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/ie8.css" type="text/css" media="screen" /><![endif]-->
        <!--[if IE 9]><link rel="stylesheet" href="<?php echo base_url(); ?>template/ezwebvietnam/home/css/ie9.css" type="text/css" media="screen" /><![endif]-->
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/jq_version/1_7_1/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/Selectbox/jquery.selectbox-0.1.3.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/AutoComplete/jquery.autocomplete.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/Common.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/home/js/jquery.cookie.js"></script>
        <meta name="ROBOTS" content="ALL" />
        <title>Thông tin đơn hàng</title>
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
                                    <div onkeypress="javascript:return WebForm_FireDefaultButton(event, & #39; ctl00_HeaderTop1_NavibarTop1_btnSearch & #39; )">

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


                    <div class="order-info">


                        <div class="order-steps">
                            <span class="os-icon-cart-red"></span>
                            <span class="ColorRedBold">GIỎ HÀNG</span>
                            <span class="os-icon-arrow"></span>
                            <span class="os-icon-bag"></span>
                            <span class="colorGray">THANH TOÁN</span>
                            <span class="os-icon-arrow"></span>
                            <span class="os-icon-stick"></span>
                            <span class="colorGray">HOÀN TẤT</span>
                            <div class="clear"></div>
                        </div> <!-- END  .order-steps -->

                        

                        <div class="oi-content">

                            <div class="oic-header">
                                <div class="fl-l p-info-width">Sản phẩm</div>
                                <div class="fl-l p-tranformer">Dự kiến giao hàng</div>
                                <div class="fl-l p-price">Giá</div>
                                <div class="fl-l p-quantity">Số lượng</div>
                                <div class="fl-l">Thành tiền</div>
                                <div class="clear"></div>
                            </div> <!-- END .oic-header -->

                            <div class="oic-content">
                                <!--Cartlist-->

                                <?php 
                                $total_money = 0;
                                foreach($list_cart as $cart_)
                                {
                                ?>    
                                <div class='oicc-item '>
                                    <div class="fl-l p-info-width">
                                        <p class="fl-l mrg-r-10">
                                            <input type="hidden" name="ctl00$cph1$OrderHome1$rptListCart$ctl00$hidProID" id="ctl00_cph1_OrderHome1_rptListCart_ctl00_hidProID" value="<?php echo $cart_['id_cart']?>" />
                                            <a id="ctl00_cph1_OrderHome1_rptListCart_ctl00_lnkProductDetail" class="cart-product-img-link" href="Choi-gat-mua-truoc-xe-Mercedes-S320-WDB220-product-c38818800-d88131417.aspx">
                                                <?php 
                                                if(file_exists(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$cart_['image'])&& is_file(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$cart_['image']) && $cart_['image']!='')
                                                {
                                                ?>
                                                <img id="ctl00_cph1_OrderHome1_rptListCart_ctl00_imgPath" width="150" height="150" class="cart-product-img" src="<?php echo base_url();?>file/uploads/product/<?php echo $cart_['image']?>" style="height:77px;width:62px;" />
                                                <?php } else { ?>
                                                <img id="ctl00_cph1_OrderHome1_rptListCart_ctl00_imgPath" width="150" height="150" class="cart-product-img" src="<?php echo base_url();?>file/uploads/no_image.gif" style="height:77px;width:62px;" />
                                                <?php } ?>
                                            </a>
                                        </p>
                                        <p>
                                            <a id="ctl00_cph1_OrderHome1_rptListCart_ctl00_lnkTitle" class="bold" href="Choi-gat-mua-truoc-xe-Mercedes-S320-WDB220-product-c38818800-d88131417.aspx"><?php echo $cart_['title']?></a>
                                        </p>
                                        <p>
                                            
                                        </p>
                                        <p>
                                            CODE: <span id="ctl00_cph1_OrderHome1_rptListCart_ctl00_lblBarCode"><?php echo $cart_['code']?></span>
                                        </p>
                                        <p>
                                            <span id="ctl00_cph1_OrderHome1_rptListCart_ctl00_lblSizeValue"></span>
                                            <span id="ctl00_cph1_OrderHome1_rptListCart_ctl00_lblColorValue"></span>
                                        </p>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="fl-l p-tranformer">
                                        Trong vòng 12h làm việc
                                    </div>
                                    <div class="fl-l p-price">
                                        <p>
                                            <span id="ctl00_cph1_OrderHome1_rptListCart_ctl00_lblPriceCurrent" class="bold fo-si-12 oicc-price"><?php echo $cart_['price']?> đ</span>
                                        </p>
                                        <p>

                                        </p>
                                        <p>

                                        </p>
                                    </div>
                                    <div class="fl-l p-quantity">
                                        <p>
                                            <select name="ctl00$cph1$OrderHome1$rptListCart$ctl00$ddQuantity" id="ddQuantity" class="cart-select">
                                                <option value="1">1</option>
                                                <option selected="selected" value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>

                                            </select>
                                            <input type="hidden" id="hidPID" value='<?php echo $cart_['id_cart']?>' />
                                        </p>
                                        <p class="oicc-del-item">
                                            <span class="oicc-icon-del"></span>
                                            <a href='javascript:void(0)' id="btn-o-delCart" idata='<?php echo $cart_['id_cart']?>' title="Xóa sản phẩm">Xóa SP</a>
                                        </p>
                                    </div>
                                    <div class="fl-l">
                                        <p>
                                            <span id="ctl00_cph1_OrderHome1_rptListCart_ctl00_lblTotalMeneyItem" class="bold fo-si-12"><?php echo $cart_['total_price']?> đ</span>
                                        </p>
                                    </div>
                                    <div class="clear"></div>
                                </div><!-- END .oicc-item -->
                                <?php 
                                $total_money += $cart_['total_price'];
                                
                                } ?>        
                                <!--End Cartlist-->
                            </div>

                        </div> <!-- END .oi-content -->

                        <div class="oic-tran-total">
                            <div class="fl-l oic-f-tranfer">
                                <div class="oic-ft-content">
                                    <div class="oic-ft-one fl-l">
                                        <h4>Phương thức thanh toán</h4>
                                        <div class="bank-list-one">
                                            <span class="icon-visa fl-l dis-block"></span>
                                            <span class="icon-mastercard fl-l dis-block"></span>
                                            <span class="icon-cash fl-l dis-block"></span>
                                            <div class="clear"></div>
                                        </div>
                                        <div class="bank-list-two">
                                            <span class="icon-one-pay fl-l dis-block"></span>
                                            <span class="icon-nganluong fl-l dis-block"></span>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                    <div class="oic-ft-two fl-l">
                                        <h4>An toàn bảo mật</h4>
                                        <div class="p-relative">
                                            <span class="icon-security dis-block"></span>
                                        </div>
                                    </div>	
                                    <div class="oic-ft-three fl-l" style="width:225px;">

                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div> <!-- END .oic-f-tranfer -->

                            <div class="oic-f-money">
                                <div class="oic-fm-content">
                                    <span class="icon-order-cart"></span>
                                    <p><span>Tổng tiền</span><span class="fl-r"><?php echo $total_money;?> đ
                                        </span></p>
                                    <p class="hr-line"><span>Phí vận chuyển</span><span class="fl-r">0 đ</span></p>
                                    <p class="oic-fmc-total"><span class="ColorRed bold">Thanh toán</span><span class="ColorRed bold fl-r"><?php echo $total_money;?> đ</span></p>
                                </div> <!-- END .oic-fm-content -->
                            </div> <!-- END .oic-f-money -->
                            <div class="clear"></div>
                        </div> <!-- END .oic-tran-total -->

                        <div class="action-order">
                            <a href="javascript:void(0)" class="btn-ao-continue"></a>
                            <a href="javascript:void(0)" class="btn-ao-next"></a>
                        </div>
                        <input type="hidden" name="ctl00$cph1$OrderHome1$hidCateId" id="ctl00_cph1_OrderHome1_hidCateId" value="www.hathanhauto.com/Than-vo-guong-den-kinh--product-c38818800-p1.aspx" />
                        <script>
                                    $(function () {
                                    //button back
                                    $('a.btn-ao-next"').click(function () {
                        //            var _url = $('#ctl00_cph1_OrderHome1_hidCateId').val();
                                    //            location.href = 'http://' + _url;
                                    location.href = '/';
                                    });
                                            //button next
                                            $('a.btn-ao-continue').click(function () {
                                    location.href = '<?php echo base_url();?>thanh-toan';
                                    });
                                            //button Del cart
                                            $('a#btn-o-delCart').live('click',function () {
                                             var _dt = $(this).attr('iData');
                                            // $(this).parent().parent().parent().parent().parent().fadeOut(500);
                                            var _url = '<?php echo base_url();?>home/cart/delete_cart';
                                            $.ajax({
                                                url: _url,
                                                type: "post",
                                                data:{id:_dt},
                                                dataType: 'html',
                                                success: function(respone) {
                                                    $('.order-info').html(respone);
                                                },
                                                error: function() {
                                                   $('.order-info').html('Giỏ hàng lỗi');
                                                }
                                            });
                                    });
                                            $('select[id=ddQuantity]').live('change',function () {
                                            var _val = $(this).children('option:selected').val();
                                    
                                            var _pID = $(this).parent().find('input[id$=hidPID]').val();
                                            
                                            var _url = '<?php echo base_url();?>home/cart/update_cart';
                                            $.ajax({
                                                url: _url,
                                                type: "post",
                                                data:{id:_pID,quantity:_val},
                                                dataType: 'html',
                                                success: function(respone) {
                                                    $('.order-info').html(respone);
                                                },
                                                error: function() {
                                                   $('.order-info').html('Giỏ hàng lỗi');
                                                }
                                            });
                                    });
                                    });</script>
                    </div><!-- END .order-info -->

                </div>
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

        <script type="text/javascript">
        //<![CDATA[
                            var theForm = document.forms['aspnetForm'];
                            if (!theForm) {
                    theForm = document.aspnetForm;
                            }
                    function __doPostBack(eventTarget, eventArgument) {
                    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                    theForm.__EVENTTARGET.value = eventTarget;
                            theForm.__EVENTARGUMENT.value = eventArgument;
                            theForm.submit();
                    }
                    }
        //]]>
        </script>


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