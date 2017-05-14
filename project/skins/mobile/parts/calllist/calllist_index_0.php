<?php
    // 为方便并保证您以后的快速升级 请使用SHL提供的如下全局数组
	
	// 数组定义/config/doc-global.php
	
	// 如有需要， 请去掉注释，输出数据。
	/*
	echo '<pre>';
		print_r($tag);
	echo '</pre>';
	*/
?>

<div class="om-news">
    
  <?php 
if(!empty($tag['data.results']))
{
	foreach($tag['data.results'] as $kk=>$vv)
	{
		$channelId	= $vv['channelId']; //栏目id 
		$channel	= $vv['channel'];   //栏目中文名
		$results	= $vv['results'];   //列表数据
		if(!empty($results))
		{
		?>
  <div class="clearfix">
    <h2 class="listtt clearfix"><a href="<?php echo sys_href($channelId)?>">更多&gt;</a><?php echo $channel; ?></h2>
    <ul class="om-news-list">
      <?php 
			foreach ($results as $k=>$data)
			{
			?>
      <li class="item">
        <h2 class="item-title"><a href="<?php echo sys_href($data['channelId'],'list',$data['id'])?>"><?php echo $data['title']; ?></a></h2>
      </li>
      <?php	
			}
			?>
    </ul>
  </div>
  <?php 
		}
	}
}			
?>
</div>

