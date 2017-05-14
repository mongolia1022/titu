<dt><?php echo date('Y/m/d',strtotime($data['dtTime'])); ?></dt>
<dd><a href="<?php echo sys_href($data['channelId'],'list',$data['id'])?>" target="_blank" title="<?php echo $data['title']; ?>"><?php echo $data['title']; ?></a></dd>
