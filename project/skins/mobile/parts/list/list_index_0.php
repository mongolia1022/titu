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
    <ul class="om-news-list">
      <?php
	if( !empty( $tag['data.results'] ) )
	{
		foreach($tag['data.results'] as $k =>$data)
		{

			?>
			<li class="item">
        <h2 class="item-title"><a href="<?php echo sys_href($data['channelId'],'list',$data['id'])?>"><?php echo $data['title']; ?></a></h2>
      </li>
    <?php			
		}
	}
	else
	{
		echo '暂无文章。';
	}
?>
    </ul>
    <div class="pager"><?php if(!empty($tag['pager.cn'])) echo $tag['pager.cn']; ?></div>
  </div>