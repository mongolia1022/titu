<?php
    foreach($flash['results'] as $data)
    {
   ?>
   <li><a href="<?php echo $data['url'];?>"><img src="<?php echo $data['picpath'];?>" alt="<?php echo $data['title'];?>" title="<?php echo $data['title'];?>"></a></li>
<?php 
    }
    ?>
