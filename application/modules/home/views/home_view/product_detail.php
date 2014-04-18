<div id="Content">
               <div class="product-breadcrum">
                  <ul itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                     <li class="breadcrum-text"><a itemprop="url" title="Trang chủ" href="/"><span itemprop="title">Trang chủ</span></a></li>
                     <li class="breadcrum-text" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" title="<?php echo $product_detail[0]['name_cate']?> " class="" href="<?php echo base_url();?>c/<?php echo $product_detail[0]['name_cate']?> -c<?php echo $product_detail[0]['id_cate']?> "><span itemprop="title"><?php echo $product_detail[0]['name_cate']?>  </span><i></i></a></li>
                  </ul>
                  <div class="clr">
                  </div>
               </div>
               <div class="product-detail">
                  <div class="pd-top">
                     <div class="fl-l">
                        <!--Slide image detail-->
                        <div class='wrap-slide-img-detail' style='z-index:1;'>
                           <div class='cloud-zoom-first'><a href='<?php echo base_url();?>template/ezwebvietnam/home/upload/images/2iqmisyk4xz042013052043CHOI GAT MUA_logo.jpg' class = 'cloud-zoom' id='zoom1' rel='adjustX: 10, adjustY:-4'><img src='<?php echo base_url();?>template/ezwebvietnam/home/upload/images/2iqmisyk4xz042013052043CHOI GAT MUA_logo.jpg?width=394&height=412' border='0' style='z-index: 1;width:185px;height:206px;'/></a></div>
                           <div class='wrap-carosel-box'>
                              <div class='list_carousel'>
                                 <ul id='Carousel-wrap' style='width:200px;'>
                                    <li><a href='<?php echo base_url();?>template/ezwebvietnam/home/upload/images/2iqmisyk4xz042013052043CHOI GAT MUA_logo.jpg' class='cloud-zoom-gallery' title='' rel="useZoom: 'zoom1', smallImage: '<?php echo base_url();?>template/ezwebvietnam/home/upload/images/2iqmisyk4xz042013052043CHOI GAT MUA_logo.jpg?width=394&height=412'"><img src='<?php echo base_url();?>template/ezwebvietnam/home/upload/images/2iqmisyk4xz042013052043CHOI GAT MUA_logo.jpg?width=44&height=44' alt = 'Ảnh 0' class='imgThumbZoom'/></a></li>
                                 </ul>
                                 <div class='clearfix'></div>
                              </div>
                              <a id='prev-carousel' href='#'></a><a id='next-carousel' href='#'></a>
                           </div>
                           <script>LoadProductImage();</script>
                        </div>
                     </div>
                     <!-- END .fl-l -->
                     <script src="<?php echo base_url();?>template/ezwebvietnam/home/js/validate/jquery.formatCurrency-1.4.0.min.js"
                        type="text/javascript"></script>
                     <div class='fl-r pdt-r'>
                        <p class='pd-title'><?php echo $product_detail[0]['title']?> </p>
                        <p class='pd-code'>Mã SP: <span class='bold'><?php echo $product_detail[0]['code']?> </span></p>
                        <p class='pd-code'>Nhà sản xuất: <span class='bold'><a href='/Phu-tung-Mercedes-Benz-provider-c92477144.aspx'><?php echo $product_detail[0]['name_fac']?> </a></span></p>
                        <div class='fl-l'>
                            <?php 
                            if($product_detail[0]['stock']>0)
                            {
                            ?>
                           <p class='mrg-t-b-7'><span class='ColorGreen bold'>Còn hàng</span></p>
                            <?php } else {?>
                           <p class='mrg-t-b-7'><span class='ColorRed bold'>Hết hàng</span></p>
                            <?php } ?>
                           <p class='mrg-t-b-7'>Giao hàng miễn phí nội thành Hà Nội</p>
                           <p class='mrg-t-b-7'><a class='tcl-price-detail' title='' href='/Cuoc-phi-van-chuyen-lvn-Help-c70156952-d40371627.aspx'>Chi tiết cước phí</a></p>
                           <p class='pd-verify mrg-t-15'><span class='icon-tick'></span><span class='bold'>Đảm bảo giá thấp nhất</span></p>
                           <p ><span class='dis-block'>Chia sẻ</span>
                           <div><span class='st_facebook_large' displayText='Facebook'></span><span class='st_pinterest_large' displayText='Pinterest'></span><span class='st_twitter_large' displayText='Tweet'></span><span class='st_googleplus_large' displayText='Google +'></span></div>
                           <span class='dis-block clear'></span></p>
                        </div>
                        <div class='fl-r pdt-r-second'>
                            <?php 
                            if($product_detail[0]['price']!=0)
                            {
                            ?>
                           <p class='pd-price-real mrg-t-b-0'>Giá: <span class='ColorRedBold'> <?php echo number_format($product_detail[0]['price']);?></span><span class='colorRed'> vnđ</span></p>
                            <?php } else {?>
                           <p class='pd-price-real mrg-t-b-0'>Giá: <span class='ColorRedBold'> Liên hệ</span></p>
                            <?php } ?>
                           <p>
                              <span>Số lượng: </span>
                              <select id='quantities-chosen'>
                                 <option>1</option>
                                 <option>2</option>
                                 <option>3</option>
                                 <option>4</option>
                                 <option>5</option>
                                 <option>6</option>
                                 <option>7</option>
                                 <option>8</option>
                                 <option>9</option>
                                 <option>10</option>
                              </select>
                           </p>
                           <?php 
                           if($product_detail[0]['price']!=0)
                           {
                           ?>
                           <p class='pd-order'><span id='btn_buy_add' class='pd-btn'></span></p>
                           <?php } else {?>
                           <p class="pd-order"><a href="/StreetMap-lvn.aspx" class="pd-btn pd-no-price"></a></p>
                           <?php } ?>
                        </div>
                        <div class='clear'></div>
                     </div>
                     <input type="hidden" name="ctl00$cph1$ProductDetailV21$Product_Detail_TopInfo1$hidId" id="ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidId" value="88131417" />
                     <input type="hidden" name="ctl00$cph1$ProductDetailV21$Product_Detail_TopInfo1$hidPriceNotFomat" id="ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidPriceNotFomat" value="1400000" />
                     <input type="hidden" name="ctl00$cph1$ProductDetailV21$Product_Detail_TopInfo1$hidTotalColor" id="ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidTotalColor" value="0" />
                     <input type="hidden" name="ctl00$cph1$ProductDetailV21$Product_Detail_TopInfo1$hidSizeName" id="ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidSizeName" />
                     <input type="hidden" name="ctl00$cph1$ProductDetailV21$Product_Detail_TopInfo1$hidColorName" id="ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidColorName" />
                     <input type="hidden" id="chkColor" value="0" />
                     <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
                     <script type="text/javascript">    stLight.options({ publisher: "0469aa6dbcf320777c86766a9fe5ed88" });</script>
                     <script>
                        $(function () {
                            //Load Gia theo size
                            $('.size-cols ul li span').click(function () {
                                var _dataPrice = $(this).attr('dataprice');
                                var _dataCode = $(this).attr('datacode');
                                $('#ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidPriceNotFomat').val(_dataPrice);
                                $('#sPrice').text(_dataPrice).formatCurrency({ groupDigits: true, symbol: '', roundToDecimalPlace: 0 });
                                $('#sSizeCode').text(_dataCode);
                                //luu lai ten cua size da chon
                                $('#ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidSizeName').val($(this).text());
                        
                                // style active
                                $('.size-cols ul li span').removeClass('sizeAc');
                                $(this).addClass('sizeAc');
                            });
                            //Load imageColor
                            $('.pn-Color ul li a').click(function () {
                                $('.pn-Color ul li').removeClass('ColorAc');
                                $(this).parent().addClass('ColorAc');
                                var dataColorID = $(this).attr('datacolorid');
                                var PID = $('#ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidId').val();
                        
                                var Url = '/Pages/Ajax/BindProductImageByColorID.ashx?timespan=' + Number(new Date()) + '&cid=' + dataColorID + '&pid=' + PID;
                                $.get(Url, function (data) {
                                    if (data != '' && data != undefined) {
                                        $('.wrap-slide-img-detail').html(data);
                                        LoadProductImage();
                                    } else {
                                        $('.wrap-slide-img-detail').html('');
                                    }
                                });
                        
                                //luu lai ten cua mau da chon
                                $('#ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidColorName').val($(this).attr('datacolortext'));
                                //bao hieu da chon 1 mau
                                //gan ID vao do
                                $('#chkColor').val(dataColorID);
                        
                        
                            });
                            $('#icon_amount_down').click(function () {
                                var _val = $('#txtAmount').val();
                                _val = parseInt(_val);
                                if (_val <= 1) {
                                    _val = 1;
                                } else {
                                    _val = _val - 1;
                                }
                                $('#txtAmount').val(_val);
                            });
                        
                            $('#icon_amount_up').click(function () {
                                var _val = $('#txtAmount').val();
                                _val = parseInt(_val);
                                if (_val >= 100) {
                                    _val = 99;
                                } else {
                                    _val = _val + 1;
                                }
                                $('#txtAmount').val(_val);
                            });
                        
                            //button dat hang
                            $('#btn_buy_add').click(function () {
                        
                                var _id = $('input[id$=hidId]').val();
                        
                                // #Size
                                var _sprice = $('#ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidPriceNotFomat').val();
                                var _scode = $('#sSizeCode').text();
                                var _sName = $('#ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidSizeName').val();
                        
                                // #Color
                                var _cName = $('#ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidColorName').val();
                                var _Quan = $('#quantities-chosen').val(); ;
                                var colorid = $('#chkColor').val();
                                var Url = '/Pages/Ajax/AddToCart.ashx?timespan=' + Number(new Date());
                        
                                var strUrl = '';
                                if (_id != '' && _id != undefined) {
                                    strUrl = strUrl + '&id=' + _id;
                                }
                        
                                if (_sprice != '' && _sprice != undefined) {
                                    strUrl = strUrl + '&sprice=' + _sprice;
                                }
                                
                                if (_scode != '' && _scode != undefined) {
                                    strUrl = strUrl + '&scode=' + _scode;
                                }
                        
                                if (_sName != '' && _sName != undefined) {
                                    strUrl = strUrl + '&sName=' + _sName;
                                }
                        
                                if (_cName != '' && _cName != undefined) {
                                    strUrl = strUrl + '&cName=' + _cName;
                                }
                        
                                if (_Quan != '' && _Quan != undefined) {
                                    strUrl = strUrl + '&pQuan=' + _Quan;
                                }
                                
                                if (colorid != '' && colorid != undefined) {
                                    strUrl = strUrl + '&colorid=' + colorid;
                                }
                        
                                Url = Url + strUrl;
                                var _totalColor = $('#ctl00_cph1_ProductDetailV21_Product_Detail_TopInfo1_hidTotalColor').val();
                                _totalColor = parseInt(_totalColor);
                                if (_totalColor > 1) {
                                    if (colorid != '0') {
                                        $.get(Url, function (data) {
                                            if (data == '1') {
                                                $(location).attr('href', '/Orders.aspx');
                                            }
                                        });
                                    } else {
                                        alert('Khách hàng vui lòng chọn một mầu');
                                        return false;
                                    }
                                } else {
                                    //neu khong co danh sach mau thi van cho dat hang
                                    $.get(Url, function (data) {
                                        if (data == '1') {
                                            $(location).attr('href', '/Orders.aspx');
                                        }
                                    });
                                }
                        
                            });
                        });
                        
                        
                     </script>
                     <!-- END .fl-r -->
                     <div class="clear"></div>
                  </div>
                  <!-- END .pd-top -->
                  <div class="pd-bottom">
                     <ul class="pd-des-title">
                        <li class="pd-focus des-1">
                           <a href="javascript:void(0);">Mô tả - Thông số kỹ thuật</a>
                        </li>
                     </ul>
                     <div class="pd-des-content" id="des-1">
                        <div class='pdc-title'>
                           <?php echo $product_detail[0]['content']?>
                        </div>
                     </div>
                  </div>
                  <!-- END .pd-bottom -->
                  <script type="text/javascript">
                     function AddToCartOneClick() {
                         //gia theo size - sprice
                         //Ma theo size - scode
                         //Ten size - sName ------------
                         //ten Mau - cName -------------
                         //Ma san pham - id ------------
                         //so luong dat - pQuan
                     
                         var SizeName = $('#hidSize').val();
                         var ColorName = $('#hidColor').val();
                         var ProID = '88131417';
                         //xem lai cho nay
                         var _cmdSizeActive = $('.item_size li .SizeActive');
                         var sPrice = _cmdSizeActive.attr('dataprice');
                         var sCode = _cmdSizeActive.attr('datacode');
                         var pQuan = $('.ddlQuanCrat option:selected').val();
                     
                         var _urlOneClick = '/Pages/Ajax/AddToCartOneClick.ashx?id=' + ProID + '&sprice=' + sPrice + '&scode=' + sCode + '&pQuan=' + pQuan + '&sName=' + SizeName + '&cName=' + ColorName + '&timespan=' + Number(new Date());
                         $.get(_urlOneClick, function (data) {
                             if (data != undefined && data != '') {
                                 $('#box-OneClick').html('');
                                 $('#box-OneClick').append(data);
                                 ShowBox(false, 'box-OneClick');
                     
                                 var url = '/Pages/Ajax/CartInfo.ashx?timespan=' + Number(new Date());
                                 $.get(url, function (data) {
                                     var lnkcart = $("[id$=lnkCart]");
                                     lnkcart.html(data);
                                     //alert(data.indexOf(">0<"));
                                     if (data.indexOf(">0<") > -1) {
                                         lnkcart.click(function () { return false; });
                                     } else {
                                         lnkcart.click(function () {
                                             location.href = '/lvn-product-cart.aspx';
                                         });
                                     }
                                 });
                             } else {
                                 alert('Cập nhập giỏ hàng không thành công !');
                             }
                         });
                     }
                  </script>
               </div>
               <!-- END .product-detail -->
               <div class="right-detail">
                  <div id="box-support_home">
                     <ul>
                        <li class="su-item-1">HỖ TRỢ ONLINE </li>
                        <li class="su-item-2">Hathanhauto.com chuyên tư vấn – báo giá – cung cấp <b><a href="/">phụ tùng ô tô chính hãng</a></b>giá cạnh tranh nhất trên thị trường.</li>
                        <li class="su-item-2"><span class="txt-su-2">Số 17- Ngõ 603 Lạc Long Quân - Tây Hồ - Hà Nội</span></li>
                        <li class="su-item-2"><span class="txt-su-2"><span class="txt-su-left">Thời gian làm việc từ:</span> 8h00-18h00 từ thứ 2 đến thứ 7</span></li>
                        <li class="su-item-3"><i class="icon-mobile"></i><span id="ctl00_cph1_ProductDetailV21_SupportOnline1_lblmobileOrder" class="mobile">0942.399.366 - 0988.550.306</span> </li>
                        <li class="su-item-4"><i class="icon-support"></i><a href="mailto:lienhe@hathanhauto.com" rel="nofollow" class="lnkmailsupport">
                           lienhe@hathanhauto.com</a> 
                        </li>
                        <li class="su-item-5">
                           <div class="iconSupport">
                              <div class="iconYahoo">
                                 <a href="ymsgr:sendIM?hathanh.auto&amp;m=Chao ban!" rel="nofollow" style="background: url(http://opi.yahoo.com/online?u=hathanh.auto&amp;t=1&amp;l=us) no-repeat;
                                    padding-left: 64px; padding-top: 2px;"></a>
                              </div>
                              <div class="iconSkype">
                                 <script type="text/javascript" src="http://download.skype.com/share/skypebuttons/js/skypeCheck.js"></script>
                                 <a href="skype:hathanh.auto?chat"><img src="http://mystatus.skype.com/smallclassic/hathanh.auto" style="border: none;" width="63" height="17" alt="My status" /></a>
                              </div>
                           </div>
                        </li>
                     </ul>
                  </div>
                  <div class="box-yeucau">
                     <div class="yc-header">
                        <span>YÊU CẦU BÁO GIÁ</span>
                     </div>
                     <div class="yc-content">
                        <div id="ctl00_cph1_ProductDetailV21_RequirePrice1_Panel1" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;ctl00_cph1_ProductDetailV21_RequirePrice1_btnGui&#39;)">
                           <span>
                           <span id="ctl00_cph1_ProductDetailV21_RequirePrice1_lblError"></span></span> <span>
                           <input name="ctl00$cph1$ProductDetailV21$RequirePrice1$txtName" type="text" id="ctl00_cph1_ProductDetailV21_RequirePrice1_txtName" value="Họ và Tên" onblur="if(this.value==&#39;&#39;) this.value=&#39;Họ và Tên&#39;" onfocus="if(this.value ==&#39;Họ và Tên&#39; ) this.value=&#39;&#39;" />
                           </span><span>
                           <input name="ctl00$cph1$ProductDetailV21$RequirePrice1$txtEmail" type="text" id="ctl00_cph1_ProductDetailV21_RequirePrice1_txtEmail" value="Email" onblur="if(this.value==&#39;&#39;) this.value=&#39;Email&#39;" onfocus="if(this.value ==&#39;Email&#39; ) this.value=&#39;&#39;" />
                           </span><span>
                           <input name="ctl00$cph1$ProductDetailV21$RequirePrice1$txtPhone" type="text" id="ctl00_cph1_ProductDetailV21_RequirePrice1_txtPhone" value="Điện thoại" onblur="if(this.value==&#39;&#39;) this.value=&#39;Điện thoại&#39;" onfocus="if(this.value ==&#39;Điện thoại&#39; ) this.value=&#39;&#39;" />
                           </span><span>
                           <textarea name="ctl00$cph1$ProductDetailV21$RequirePrice1$txtContent" rows="2" cols="20" id="ctl00_cph1_ProductDetailV21_RequirePrice1_txtContent" value="Nhu cầu" onblur="if(this.value==&#39;&#39;) this.value=&#39;Nhu cầu&#39;" onfocus="if(this.value ==&#39;Nhu cầu&#39; ) this.value=&#39;&#39;">
                           </textarea>
                           </span><span>
                           <input type="submit" name="ctl00$cph1$ProductDetailV21$RequirePrice1$btnGui" value="Gửi yêu cầu" id="ctl00_cph1_ProductDetailV21_RequirePrice1_btnGui" class="btnGuiYeuCau" />
                           </span>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="clear"></div>
               <script type="text/javascript">
                  $('.des-1').click(function () {
                      $('#des-1').show();
                      $('#des-2').hide();
                      $('ul.pd-des-title li').removeClass('pd-focus');
                      $(this).addClass('pd-focus');
                  });
                  $('.des-2').click(function () {
                      $('#des-2').show();
                      $('#des-1').hide();
                      $('ul.pd-des-title li').removeClass('pd-focus');
                      $(this).addClass('pd-focus');
                  });
               </script>
               <div class="FooterTop">
                  <div class="sp-viewMax-header" style="margin-top:20px;">
                     <span style="font-size: 15px;color: #B41309;font-weight: bold;">
                     Sản phẩm liên quan
                     </span>
                  </div>
                  <div class="sp-viewMax">
                     <a href="javascript:void(0)" class="sp-back2" id="btn-back">Back</a> 
                     <a href="javascript:void(0)" class="sp-next2" id="btn-next">Next</a>
                     <div class="content2">
                        <ul>
                           <li><a href='/Gioang-kinh-chan-gio-sau-xe-BMW-E39-520-523-525-528-product-c38818800-d74489048.aspx'><img src='upload/images/27o3cfobr0b314914114908bu-ly_logo.jpg?width=135&height=135' /><span class='pro-name'>Gioăng kính chắn gió sau xe BMW E39/520, 523, 525, 528</span><span class='ColorOrangeBold'>Vui lòng liên hệ</span></a></li>
                           <li><a href='/Gioang-kinh-chan-gio-truoc-xe-BMW-E39-520-523-525-528-product-c38818800-d109585291.aspx'><img src='<?php echo base_url();?>template/ezwebvietnam/home/upload/images/2wdhkanfpa1290914060914bu-ly_logo.jpg?width=135&height=135' /><span class='pro-name'>Gioăng kính chắn gió trước xe BMW E39/520, 523, 525, 528</span><span class='ColorOrangeBold'>Vui lòng liên hệ</span></a></li>
                           <li><a href='/Choi-gat-mua-xe-BMW-E39-chinh-hang-product-c38818800-d94244124.aspx'><img src='upload/images/2od5co7c1ze292514032506bu-ly_logo.jpg?width=135&height=135' /><span class='pro-name'>Chổi gạt mưa xe BMW E39 chính hãng</span><span class='ColorOrangeBold'>Vui lòng liên hệ</span></a></li>
                           <li><a href='/Cong-tac-len-xuong-kinh-xe-BMW-E46-chinh-hang-product-c38818800-d100484668.aspx'><img src='upload/images/2bmfm7euvz1292314112356ct_logo.jpg?width=135&height=135' /><span class='pro-name'>Công tắc lên xuống kính xe BMW E46 chính hãng</span><span class='ColorOrangeBold'>Vui lòng liên hệ</span></a></li>
                           <li><a href='/Hop-dieu-khien-den-pha-xe-BMW-745i-GT-chinh-hang-product-c38818800-d95661725.aspx'><img src='upload/images/2ffpgsqdcsn295214105258bu-ly_logo.jpg?width=135&height=135' /><span class='pro-name'>Hộp điều khiển đèn pha xe BMW 745i, GT chính hãng</span><span class='ColorOrangeBold'>Vui lòng liên hệ</span></a></li>
                        </ul>
                     </div>
                     <div class="clr">
                     </div>
                     <input type="hidden" id="hidCurrentPage" value="1" />
                     <input type="hidden" name="ctl00$cph1$ProductListRelate1$hidCateID" id="ctl00_cph1_ProductListRelate1_hidCateID" value="38818800" />
                     <input type="hidden" name="ctl00$cph1$ProductListRelate1$hidTotalItem" id="ctl00_cph1_ProductListRelate1_hidTotalItem" value="152" />
                  </div>
                  <script type="text/javascript">
                     $(function () {
                         var strIconLoad = '<div style="text-align:center;vertical-align:middle;width:100%;padding-top:50px;height:175px;"><img src="/images/ajax-loaderBig.gif" width="32" height="32" alt="Loading"/></div>';
                         var _container = $('.sp-viewMax" .content2');
                         var CurrentPage = $('#hidCurrentPage').val();
                         var cateID = $('input[id$=hidCateID]').val();
                         var Total = $('input[id$=hidTotalItem]').val();
                         var _url = "";
                         $('#btn-back').click(function () {
                             var PageSize = 5;
                             if (CurrentPage <= 1)
                                 CurrentPage = 1;
                             else
                                 CurrentPage = parseInt(CurrentPage) - 1;
                             //xoa toan bo item dang co
                             _container.html(strIconLoad);
                             _url = '/Pages/Ajax/LoadProductRelatePagging.ashx?p=' + CurrentPage + '&ps=' + PageSize + "&c=" + cateID;
                     
                             GetDataProductHome(_url, _container);
                             $('#hidCurrentPage').val(CurrentPage);
                             return false;
                         });
                     
                         $('#btn-next').click(function () {
                             var PageSize = 5;
                     
                             if (CurrentPage > Total) {
                                 CurrentPage = Total;
                             } else {
                                 CurrentPage = parseInt(CurrentPage) + 1;
                             }
                     
                             _url = '/Pages/Ajax/LoadProductRelatePagging.ashx?p=' + CurrentPage + '&ps=' + PageSize + "&c=" + cateID;
                             //xoa toan bo item dang co
                             _container.html(strIconLoad);
                             $.get(_url, function (data) {
                                 if (data != '' && data != undefined) {
                                     _container.html(data);
                                 } else {
                                     CurrentPage = 1;
                                     _url = '/Pages/Ajax/LoadProductRelatePagging.ashx?p=' + CurrentPage + '&ps=' + PageSize + "&c=" + cateID;
                                     GetDataProductHome(_url, _container);
                                 }
                             });
                             $('#hidCurrentPage').val(CurrentPage);
                             return false;
                         });
                     });
                  </script>
               </div>
               <script type="text/javascript">
                  $(document).ready(function () {
                      function scroll(direction) {
                          var scroll, i,
                      positions = [],
                      here = $(window).scrollTop(),
                      collection = $('.post');
                          collection.each(function () {
                              positions.push(parseInt($(this).offset()['top'], 5));
                          });
                  
                          if (scroll) {
                              $.scrollTo(scroll, {
                                  duration: 750
                              });
                          }
                          return false;
                      }
                      $(".btnViewMore").click(function () {
                          $.scrollTo($($(this).attr("href")), {
                              duration: 750
                          });
                          return false;
                      });
                  
                      $(".link_postcmt").click(function () {
                          $.scrollTo($($(this).attr("href")), {
                              duration: 750
                          });
                          return false;
                      });
                  
                  });
               </script>
            </div>