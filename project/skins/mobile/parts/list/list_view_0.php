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

<?php 
	//2011-09-10
	$data=$tag['data.row']; 
?>

<div class="om-news-detail">
    <h1 class="title"><?php echo $data['title']; ?></h1>
    <div class="byline"> <span class="datetime"><?php echo $data['dtTime']; ?></span> <span class="views">浏览量：<?php echo $data['counts']; ?></span> </div>
    <div class="om-content"><?php echo $data['content']; ?></div>
    <div class="tags">标签：<?php echo $data['keywords']; ?></div>
    <div class="prev-next">
      <?php 
	/*
		以下程序添加于2009.09.08  最近修改 2011-09-10
		author:5只鸡(ps:鸡哥)
		Modifier:suny 一滴水 狗头巫师
	*/
	$is_up=$tag['pager.data.up'];
	$is_down=$tag['pager.data.down'];
	if(is_array($is_up))
	{
	?>
	<div class="prev">上一篇：<a href="<?php echo sys_href($params['id'],'list',$is_up['id'])?>" title="<?php echo $is_up['title']; ?>"><?php echo $is_up['title']; ?></a></div>
	<?php 
	}		
	if(is_array($is_down))
	{
	?>
	<div class="next">下一篇：<a href="<?php echo sys_href($params['id'],'list',$is_down['id'])?>" title="<?php echo $is_down['title']; ?>"><?php echo $is_down['title']; ?></a></div>
	<?php 	
	}	
	unset($is_up);
	unset($is_down);
?>
    </div>  
    </div>   