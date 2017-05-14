<?php
/*底部二维码*/
		foreach($flash['results'] as $data)
		{
	   ?>
		 <img src="<?php echo $data['picpath'];?>" width="186" height="186" />
		  <?php 
		}
		?>