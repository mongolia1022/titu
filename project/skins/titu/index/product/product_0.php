<?php
//首页产品列表 
?>
<li> 
    <a href="<?php echo sys_push_one($data['spec'],1) ?>"><img src="<?php echo ispic($data['smallPic'])?>"></a>
    <span><a href="<?php echo sys_push_one($data['spec'],1) ?>"><?php echo $data['title'];?></a></span>
    <label><?php echo sys_push_one($data['spec'],2) ?></label>
    <div class="idx_pro_scene">
        <a href="<?php echo sys_push_one($data['spec'],1) ?>">
            <img src="<?php echo sys_push_one($data['spec'],3) ?>">
            <span><?php echo $data['title'];?></span>
            <label><?php echo sys_push_one($data['spec'],2) ?></label>
        </a>
    </div>
</li>