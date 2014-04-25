


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

                        <div class="order-cart-choice">
                            <span id="ctl00_cph1_OrderHome1_lblCartChoice">Sản phẩm <b style='color: #B41309;'>Chổi gạt mưa trước xe Mercedes S320 WDB220</b> là sản phẩm mới nhất bạn vừa thêm</span>            
                        </div>

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
                                    location.href = '/OrdersInfo.aspx';
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
                  