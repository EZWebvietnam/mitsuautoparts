<div class="pn-Slide-home">
    <div id='slideshowHolder'><img border='0' src='upload/image/banner/sua-chua-bao-duong-oto-chuyen-nghiep.jpg'/><a href=''></a><img border='0' src='upload/image/banner/mien-phi-van-chuyen-phu-tung.jpg'/><a href=''></a><img border='0' src='upload/image/banner/phu-tung-o-to-mercedes-bmw-audi-chinh-hang.jpg'/><a href='http://www.hathanhauto.com/Phu-tung-Mercedes-Benz-provider-c92477144.aspx'></a><img border='0' src='upload/image/banner/300-garage-oto.jpg'/><a href=''></a><img border='0' src='upload/image/banner/Tu-van-ky-thuat-o-to.jpg'/><a href=''></a><img border='0' src='upload/image/banner/phuc-hoi-hop-dieu-khien-dong-co.jpg'/><a href=''></a></div>
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
    <div class="ncc-header">
        <h2>THƯƠNG HIỆU PHỤ TÙNG Ô TÔ</h2>
    </div>
    <div class="ncc-img">
        <a href='/Phu-tung-Mercedes-Benz-provider-c92477144.aspx'><img src='upload/image/provider/hang-3.jpg' width='84' height='34' alt='Phụ tùng Mercedes-Benz'/></a><a href='/Phu-tung-BMW-provider-c97033196.aspx'><img src='upload/image/provider/BMW.jpg' width='84' height='34' alt='Phụ tùng BMW'/></a><a href='/Phu-tung-o-to-Audi-provider-c119156544.aspx'><img src='upload/image/provider/audi-logo.jpg' width='84' height='34' alt='Phụ tùng ô tô Audi'/></a><a href='/phu-tung-o-to-Porsche-provider-c78158371.aspx'><img src='upload/image/provider/pocher.jpg' width='84' height='34' alt='phụ tùng ô tô Porsche'/></a><a href='/phu-tung-o-to-Bentley-provider-c114563746.aspx'><img src='upload/image/provider/benty.jpg' width='84' height='34' alt='phụ tùng ô tô Bentley'/></a><a href='/phu-tung-o-to-Land-Rover-provider-c55863094.aspx'><img src='upload/image/provider/ran-rovo.jpg' width='84' height='34' alt='phụ tùng ô tô Land Rover'/></a><a href='/Phu-tung-o-to-Lambogini-provider-c110305866.aspx'><img src='upload/image/provider/lambi.jpg' width='84' height='34' alt='Phụ tùng ô tô Lambogini'/></a><a href='/Phu-tung-o-to-Toyota-provider-c37110334.aspx'><img src='upload/image/provider/toyota2.jpg' width='84' height='34' alt='Phụ tùng ô tô Toyota'/></a><a href='/Phu-tung-o-to-Volkswagen-provider-c40871125.aspx'><img src='upload/image/provider/vo.jpg' width='84' height='34' alt='Phụ tùng ô tô Volkswagen'/></a><a href='/Phu-tung-o-to-Chevrolet-provider-c57094370.aspx'><img src='upload/image/provider/chelet.jpg' width='84' height='34' alt='Phụ tùng ô tô Chevrolet'/></a><a href='/Phu-tung-o-to-Minicoper-provider-c60418605.aspx'><img src='upload/image/provider/mini.jpg' width='84' height='34' alt='Phụ tùng ô tô Minicoper'/></a><a href='/Phu-tung-o-to-Nissan-provider-c46196680.aspx'><img src='upload/image/provider/nica.jpg' width='84' height='34' alt='Phụ tùng ô tô Nissan'/></a><a href='/Phu-tung-o-to-Rolls-Royce--provider-c46895015.aspx'><img src='upload/image/provider/thay-doi.jpg' width='84' height='34' alt='Phụ tùng ô tô Rolls-Royce '/></a><a href='/Maybach-provider-c96821973.aspx'><img src='upload/image/provider/mayba.jpg' width='84' height='34' alt='Maybach'/></a><a href='/Phu-tung-o-to-Mazda--provider-c79121820.aspx'><img src='upload/image/provider/mada.jpg' width='84' height='34' alt='Phụ tùng ô tô Mazda '/></a><a href='/-phu-tung-o-to-Ford-provider-c85275390.aspx'><img src='upload/image/provider/foe.jpg' width='84' height='34' alt=' phụ tùng ô tô Ford'/></a><a href='/Phu-tung-o-to-Subaru-provider-c85277154.aspx'><img src='upload/image/provider/logo-subaru.png' width='84' height='34' alt='Phụ tùng ô tô Subaru'/></a><a href='/Phu-tung-o-to-Mitsubishi-provider-c96762573.aspx'><img src='upload/image/provider/su.jpg' width='84' height='34' alt='Phụ tùng ô tô Mitsubishi'/></a><a href='/Phu-tung-o-to-Honda--provider-c93676184.aspx'><img src='upload/image/provider/honda.gif' width='84' height='34' alt='Phụ tùng ô tô Honda '/></a><a href='/Bosch-provider-c74145169.aspx'><img src='upload/image/provider/Bosch-Logo3.png' width='84' height='34' alt='Bosch'/></a>
        <div class="clr">
        </div>
    </div>
</div>