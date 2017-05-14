<?php
/*Exhibition hall*/
		foreach($flash['results'] as $data)
		{
	   ?>
	   <div class="swiper-slide"> 
                	<a href="<?php echo $data['url'];?>"><img src="<?php echo $data['picpath'];?>" /></a>
                    <div class="swiper2_title"><a href="<?php echo $data['url'];?>"><?php echo $data['title'];?></a></div>
                </div>
		  <?php 
		}
		?>