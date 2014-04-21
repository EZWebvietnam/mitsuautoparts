<ul>
    <?php 
    foreach($list_cart as $cart)
    {
    ?>
    <li style="text-align: left;">
        <?php 
        if(file_exists(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$cart['image']) && is_file(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$cart['image']) && $cart['image']!='')
        {
        ?>
        <img src="<?php echo base_url();?>file/uploads/product/<?php echo $cart['image'];?>" width="45" height="45" align="left" style="padding-right:10px;">
        <?php } else {?>
        <img src="<?php echo base_url();?>file/uploads/no_image.gif" width="45" height="45" align="left" style="padding-right:10px;">
        <?php } ?>
        <a href="<?php echo base_url();?>p/<?php echo mb_strtolower(url_title(removesign($cart['title'])))?>-p<?php echo $cart['id_prod']?>"><?php echo $cart['title']?></a><br>
        <span style="float:left;">Số lượng: <strong><?php echo $cart['quantity']?></strong></span></li>
    <?php } ?>
</ul>
<div class="clr"></div><div style="margin: 0 auto; margin-top: 10px;"><a href="<?php echo base_url();?>gio-hang" class="btnListCart"><span style="text-align: center; line-height: 28px;">Xem giỏ hàng (<?php echo count($list_cart)?> sản phẩm)</span></a></div>