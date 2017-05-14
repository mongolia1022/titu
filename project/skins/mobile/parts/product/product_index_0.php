<?php
    // 为方便并保证您以后的快速升级 请使用SHL提供的如下全局数组
	
	// 数组定义/config/dt-global.php
	
	// 如有需要， 请去掉注释，输出数据。
	/*
	echo '<pre>';
		print_r($tag);
	echo '</pre>';
	*/
?>
<div class="om-product">
    <ul class="om-product-list clearfix">
    	<?php
    
	if( !empty( $tag['data.results'] ) )
	{	
		foreach($tag['data.results'] as $k =>$data)
	    {
		  ?>
      <li> <a href="<?php echo sys_href($data['channelId'],'product',$data['id'])?>">
        <div class="thumbnail"><img src="<?php echo $data['smallPic']; ?>" alt="<?php echo $data['title']; ?>"></div>
        <h3 class="title"><?php echo $data['title']; ?></h3>
        </a> </li>
      <?php
        }
    }
    else
    {
        echo '<br />暂无产品列表。';
    }
?>
    </ul>
    <div class="pager"><?php if(!empty($tag['pager.cn'])) echo $tag['pager.cn']; ?></div>
  </div>
