 <?php
    //文章通用
?>
 <!--内页-->
<div class="incenter">
	<div class="incenter_t"></div>
    <div class="incenter_in">
    	<div class="in_page">
            <div class="center_mgt">
                <div class="left">
                    <?php nav_custom('20,23') //自定义导航调用的标签?>
                </div>
                <div class="right">
                    <div class="right_t">
						<span>FOCUS US</span>
                        <span> &gt; </span>
                        <label><?php echo sys_menu_info('title',false)?></label>
                    </div>
                    <div class="right_b">
						<?php
						if(!empty($tag['data.results']))
						{
							foreach($tag['data.results'] as $k =>$data)
							{
								echo $data['content'];
							}
						}else{
							echo '暂无数据！';
						}
						?>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>