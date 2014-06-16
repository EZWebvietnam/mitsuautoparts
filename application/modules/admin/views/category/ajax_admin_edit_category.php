<script type="text/javascript">
    $(document).ready(function() {
        $( "#exp_date_" ).datepicker({ dateFormat: 'yy-mm-dd' });
        $("input").each(function() {
            $("input.readonly").css('background-color', '#f2f2f2');
        });
    });
</script>
<script src="<?php echo base_url()?>js_upload/ajaxfileupload.js"></script>
<div class="h-pop">
    <div class="h-icon"></div>
    <h3>Thêm</h3>
</div>
<div class="m-pop">
    <script type="text/javascript" src="<?php echo base_url(); ?>template/ezwebvietnam/admin_cp/js/core/price_format.js"></script>
    <form action="<?php echo base_url(); ?>admin/categoryadmin/edit/<?php echo $cate_detail[0]['id']?>" enctype="multipart/form-data" method="post" accept-charset="utf-8" id="adminform">
        <table class="form" style="width: 1200px;">
			<?php 
				if($cate_detail[0]['parent'] == 0)
				{
					$disable = "disabled";	
				}
				else
				{
					$disable = "";	
				}
			?>
            <tr>
                <td class="label">Tên</td>
                <td colspan="3">
                    <input id="title_" type="texbox" name="title" value="<?php echo $cate_detail[0]['name']?>"/>
                </td>
            </tr>
            <tr>
                <td class="label">Danh mục cha</td>
                <td colspan="3">
                    <select name="dm_cha" id="dm_cha_f">
						<?php 
						if($cate_detail[0]['parent'] == 0)
						{
							?> 
							<option value="0" >Không</option>
							<option value="1" selected="">Có</option>
							<?php
							} else {
								?>
								<option value="0" selected="">Không</option>
								<option value="1">Có</option>
								 <?php
							}
						
						?>
						
					</select>
                </td>
            </tr>
            <tr>
			<?php 
			$list_cate = $this->categorymodel->list_category();
			?>
                <td class="label">Thuộc danh mục</td>
                <td colspan="3">
                    <select name="dm_cha_1" id="dm_cha_" <?php echo $disable;?>>
						<?php 
						foreach($list_cate as $cate)
						{
							if($cate_detail[0]['parent'] == $cate['id'])
							{
								$selected = "selected";	
							}
							else
							{
								$selected = "";	
							}
						?>
						<option <?php echo $selected ?> value="<?php echo $cate['id']?>"><?php echo $cate['name']?></option>
						<?php } ?>
					</select>
                </td>
            </tr>
            <td><input class="bt100" type="submit" value="Thêm"></td>
            </tr>

        </table>
    </form>
</div>
<script type="text/javascript">
    $(document).ready(function() {
		$( "#dm_cha_f" ).change(function() {
		 	var value = $(this).val();
			if(value == 1)
			{
				$('#dm_cha_').attr('disabled','disabled');
			}	
			else
			{
				$('#dm_cha_').attr('disabled',false);
			}
		});
       
        $("#adminform").validate({
            rules: {
                title: "required",
               
                cost: "required",
                description: "required",
                content: "required",
                hoa_hong: "required"
            },
            messages: {
                title: "Vui lòng nhập tên",
                cost: "Vui lòng nhập giá",
               
                description: "Vui lòng nhập giới thiệu",
                content: "Vui lòng nhập nội dung",
                hoa_hong: "Vui lòng nhập hoa hồng"

            }
            , submitHandler: function(form) {
                var page = 1;
                $.ajax({
                    type: "POST",
                    url: $("#adminform").attr('action'),
                    data: {title:$('#title_').val(),dm_cha_f:$('#dm_cha_f').val(),dm_cha_:$('#dm_cha_').val()},
                    mimeType: "multipart/form-data",
                    dataType: "json",
                    cache: false,
                    success: function(data) {
                        $.fancybox.close();
                        reload_callback("<?php echo base_url(); ?>admin/categoryadmin/list_category", page, 'category_content');
                        show_msg(data.msg);
                    }
                });
            }
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $("a.grouped_elements").fancybox({
            'padding': 0,
            'titleShow': false,
            'autoScale': false,
            'transitionIn': 'none',
            'transitionOut': 'none',
            'hideOnOverlayClick': false,
            'hideOnContentClick': false,
            'overlayShow': true,
            'type': 'ajax'
        });
    });
</script>