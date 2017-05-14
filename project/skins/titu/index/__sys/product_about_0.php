<?php
//产品详细页相似产品
?>
<li> 
    <a href="<?php echo sys_href($data['channelId'],$data['type'],$data['id'])?>"><img src="<?php echo $data['smallPic'];?>"></a>
    <span><a href="<?php echo sys_href($data['channelId'],$data['type'],$data['id'])?>"><?php echo $data['title'];?></a></span>
    <label><?php echo sys_push_one($data['spec'],2) ?></label>
</li>