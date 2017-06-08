<?php//产品列表页?>
<!--内页-->
<div class="incenter">
	<div class="incenter_t"></div>
    <div class="incenter_in">
    	<div class="in_page">
        	<div class="pro_select_all">
                <div class="pro_select_t" id="tab1">
                    <ul>
                        <?php nav_sub(20,1,0);?>
                    </ul>
                </div>
                <div id="tablist1">
                	<?php nav_sub(20,2,0);?>
                    <div class="pro_select_b">
                    <?php
                        if( !empty( $tag['data.results'] ) )
                        {?>	
                                <ul>
                            <?php
                            foreach($tag['data.results'] as $k =>$data)
                            {
                            ?>
                            <li> 
                                <a href="<?php echo sys_href($data['channelId'],'product',$data['id'])?>"><img src="<?php echo ispic($data['originalPic'])?>"></a>
                                <span><a href="<?php echo sys_href($data['channelId'],'product',$data['id'])?>"><?php echo $data['title'];?></a></span>
                                <label><?php echo sys_push_one($data['spec'],2) ?></label>
                                <div class="idx_pro_scene">
                                    <a href="<?php echo sys_href($data['channelId'],'product',$data['id'])?>">
                                        <img src="<?php echo sys_push_one($data['spec'],3) ?>">
                                        <span><?php echo $data['title'];?></span>
                                        <label><?php echo sys_push_one($data['spec'],2) ?></label>
                                    </a>
                                </div>
                            </li>
                            <?php
                            }?>
                                </ul>
                    
                        <?php
                        }
                        else
                        {
                            echo '<br />暂无产品列表。';
                        }
                    ?>
                    <div class="clear"></div>
                    </div>
                	<div class="page">
                            <?php if($tag['pager.en']) echo $tag['pager.en']; ?>
                        </div>
                </div>
                
                <!--图片切换 JS-->
                <script>
					$(function(){
						$('.pro_select_b ul li').mouseover(function(){
							$(this).children('.idx_pro_scene').css('display','block')	
						})
						$('.idx_pro_scene').mouseleave(function(){
							$(this).css('display','none')	
						})
					})
				</script>
                
                <!--TAB JS-->
				<script type="text/javascript"> 
                    function setTab(m,n){ 
                        var menu=document.getElementById("tab"+m).getElementsByTagName("li");  
                        var div=document.getElementById("tablist"+m).getElementsByTagName("div"); 
                        var showdiv=[]; 
                        for (i=0; j=div[i]; i++)
                        {  
                        if((" "+div[i].className+" ").indexOf(" tablist ")!=-1)
                        {  
                            showdiv.push(div[i]); 
                        } 
                        }  
                        for(i=0;i<menu.length;i++)
                        {  
                        menu[i].className=i==n?"now":"";  
                        showdiv[i].style.display=i==n?"block":"none"; 
                        }  
                    }  
                </script>
                <script>
					$(function(){
						$('.pro_select_t ul li').mouseover(function(){							
							$(this).children('a').addClass('now');
							$(this).nextAll().children('a').removeClass('now');
							$(this).prevAll().children('a').removeClass('now');
						})
					});
                </script>
            </div>
        </div>
        
    </div>
</div>