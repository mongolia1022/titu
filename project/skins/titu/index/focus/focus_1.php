<?php
		foreach($flash['results'] as $data)
		{
	   ?>
     <li>
        	<div class="idx_recommend_t"> 
            	<a href="<?php echo $data['url'];?>"><img src="<?php echo $data['picpath'];?>" width="288" height="288" /></a>
                <div class="idx_crown iconfont"><a href="#">&#xe6c3;</a></div>
            </div>
            <div class="idx_recommend_b">
            	<a href="<?php echo $data['url'];?>">
                	<span><?php echo $data['title'];?></span>
                    <label><?php echo $data['summary'];?></label>
                </a>
            </div>
        </li>
		  <?php 
		}
		?>