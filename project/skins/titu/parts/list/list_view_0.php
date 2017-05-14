 <?php
    //新闻内页
	
?>
<?php 
	//2011-09-10
	$data=$tag['data.row']; 
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
						<span>News</span>
                    </div>
                    <div class="right_b">
                        <?php echo $data['title']; ?>
                        <br/><br/>
						<?php echo $data['content']; ?>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>