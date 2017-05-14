<?php
		foreach($flash['results'] as $data)
		{
	   ?>
     <div class="swiper-slide" style="background:url(<?php echo $data['picpath'];?>) top center;"></div>
		  <?php 
		}
		?>