<div class='l-promotion-body boxLiSpecial'>
   <ul class='pl-two-column'>
       <?php 
       foreach($list as $product_list)
       {
       ?>
      <li>
         <div class='fl-l'>
            <a href='<?php echo base_url();?>p/<?php echo mb_strtolower(url_title(removesign($product_list['title'])))?>-p<?php echo $product_list['id']?>'>
                <?php 
                if(file_exists(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$product_list['image']) && is_file(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$product_list['image']) && $product_list['image']!='')
                {
                ?>
                <img src='<?php echo base_url();?>file/uploads/product/<?php echo $product_list['image']?>' width="122" height="122" />
                <?php } else {?>
                <img src='<?php echo base_url();?>file/uploads/no_image.gif' width="122" height="122" />
                <?php } ?>
            </a>
                
         </div>
         <div class='fl-r'>
            <a href='<?php echo base_url();?>p/<?php echo mb_strtolower(url_title(removesign($product_list['title'])))?>-p<?php echo $product_list['id']?>' title='' class='tcl-title'><?php echo $product_list['title']?></a>
            <p class='tcl-code'>Mã SP: <span class='bold'><?php echo $product_list['code']?></span></p>
            <?php 
            if($product_list['price']=='')
            {
            ?>
            <p class='tcl-price'><span class='ColorRedBold'><span class='l-p-p-title'>Giá: </span>Vui lòng liên hệ</span>
            <?php } else { ?>
                <p class='tcl-price'><span class='ColorRedBold'><span class='l-p-p-title'>Giá: </span><?php echo number_format($product_list['price'])?></span>
            <?php } 
            if($product_list['stock']>0)
            {
            ?>
            <p class='tcl-still'><span class='ColorGreen'>Còn hàng</span></p>
            <?php } else {?>
            <p class='tcl-still'><span class='ColorRed'>Hết hàng</span></p>
            <?php } ?>
            <p class='mrg-t-b-0-5'>Giao hàng miễn phí nội thành TPHCM</p>
            <p class='mrg-t-b-0-5'><a href='/Cuoc-phi-van-chuyen-lvn-Help-c70156952-d40371627.aspx' title='' class='tcl-price-detail'>Chi tiết cước phí</a></p>
            <p class='p-relative'><span class='icon-tick'></span><span class='bold'>Đảm bảo giá thấp nhất</span></p>
         </div>
         <div class='clear'></div>
      </li>
       <?php } ?>
   </ul>
</div>
<div class='panel-footer'>
   <div class='panel-footer-padding'>
      <div class='panel-pagging'>
         <ul id="pager">
         </ul>
         <script type="text/javascript">
            $(function() {
                $('ul#pager').html(LoadPagging(<?php echo $page ?>, <?php echo $total ?>, '<?php echo base_url();?>c/<?php echo mb_strtolower(url_title(removesign($cate_detail[0]['name'])))?>-c<?php echo $cate_detail[0]['id']?>',<?php echo $total_page ?>));
            });
         </script>
         <div class='clr'></div>
      </div>
   </div>
</div>