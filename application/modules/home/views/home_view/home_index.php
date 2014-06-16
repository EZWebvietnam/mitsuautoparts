<div class="pn-Slide-home">
    
    <div class="clr"></div>
</div>
<div class="p-item-list">
    <h2>PHỤ TÙNG ÔTÔ BÁN CHẠY</h2>
    <i></i>
    <ul id="p-list" class="p-list-border">
        <?php 
        foreach($list_sp_ban_chay as $product_bn_chay)
        {
        ?>
        <li class='p-list-border-item'>
            <span class='wrap-item-f'>
                <a href='<?php echo base_url();?>p/<?php echo  mb_strtolower(url_title(removesign($product_bn_chay['title'])))?>-p<?php echo $product_bn_chay['id'] ?>'>
                    <div class='divItem'>
                        <?php 
                        if(file_exists(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$product_bn_chay['image']) && is_file(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$product_bn_chay['image']) && $product_bn_chay['image']!='')
                        {
                        ?>
                        <img src='<?php echo base_url();?>file/uploads/product/<?php echo $product_bn_chay['image']?>' alt='<?php echo $product_bn_chay['title']?>'/>
                        <?php } else { ?>
                        <img src='<?php echo base_url();?>file/uploads/no_image.gif' width="128" height="128" alt='<?php echo $product_bn_chay['title']?>'/>
                        <?php }  ?>
                    </div>
                </a>
            </span>
            <span class='wrap-item-s'><a href='<?php echo base_url();?>p/<?php echo  mb_strtolower(url_title(removesign($product_bn_chay['title'])))?>-p<?php echo $product_bn_chay['id'] ?>'><?php echo $product_bn_chay['title']?></a></span>
            <span class='wrap-item-t'>Giá: 
                <?php if($product_bn_chay['price']==0)
                {?>
                <b>Vui lòng liên hệ</b>
                <?php } else { ?>
                <b> <?php echo $product_bn_chay['price']?></b>
                <?php } ?>
            </span>
        </li>
        <?php } ?>
    </ul>
</div>
<div class="p-item-list">
    <h2>PHỤ TÙNG ÔTÔ MỚI VỀ</h2>
    <i style='width: 548px;margin: 0px 0px 0 184px;'></i>
    <ul id="p-list" class="p-list-border">
        <?php 
        foreach($list_sp_new as $product_new)
        {
        ?>
        <li class='p-list-border-item'>
            <span class='wrap-item-f'>
                <a href='<?php echo base_url();?>p/<?php echo  mb_strtolower(url_title(removesign($product_new['title'])))?>-p<?php echo $product_new['id'] ?>'>
                    <div class='divItem'>
                        <?php 
                        if(file_exists(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$product_new['image']) && is_file(PATH_FOLDER.ROT_DIR.'file/uploads/product/'.$product_new['image']) && $product_bn_chay['image']!='')
                        {
                        ?>
                        <img src='<?php echo base_url();?>file/uploads/product/<?php echo $product_new['image']?>' alt='<?php echo $product_new['title']?>'/>
                        <?php } else { ?>
                        <img src='<?php echo base_url();?>file/uploads/no_image.gif' width="128" height="128" alt='<?php echo $product_new['title']?>'/>
                        <?php }  ?>
                    </div>
                </a>
            </span>
            <span class='wrap-item-s'><a href='<?php echo base_url();?>p/<?php echo  mb_strtolower(url_title(removesign($product_new['title'])))?>-p<?php echo $product_new['id'] ?>'><?php echo $product_new['title']?></a></span>
            <span class='wrap-item-t'>Giá: 
                <?php if($product_new['price']==0)
                {?>
                <b>Vui lòng liên hệ</b>
                <?php } else { ?>
                <b> <?php echo $product_new['price']?></b>
                <?php } ?>
            </span>
        </li>
        <?php } ?>
    </ul>
</div>
<div class="box-provider-home">
    
</div>