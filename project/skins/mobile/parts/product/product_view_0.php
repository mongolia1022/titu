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
<div class="om-product-detail">
    <div class="gallery">
      <div id="slidebox" class="slidebox">
        <div class="bd">
          <div class="tempWrap" style="overflow:hidden; position:relative;">
            <ul>
              <?php 
      $originalPic = explode('|',$data['originalPic']);
      $middlePic   = explode('|',$data['middlePic']);
      $smallPic    = explode('|',$data['smallPic']);
      for($i=0;$i<count($originalPic);$i++)
      {
      ?>
              <li><a class="pic" href="javascript:;"><img src="<?php echo ispic($middlePic[$i])?>" alt="<?php echo $data['title']; ?>" title="3<?php echo $data['title']; ?>"></a></li>
              <?php
        }?>
            </ul>
          </div>
        </div>
        <div class="hd">
          <ul>
            <li class="">1</li>
            <li class="">2</li>
            <li class="on">3</li>
          </ul>
        </div>
      </div>
    </div>
    <h1 class="title"><?php echo $data['title']; ?></h1>
    
      <?php sys_push($data['content'],'<div class="headert">{name}：</div><div class="om-content">{value}</div>',1)?>
      
    
    <div class="prev-next">
<?php 
  /*
    产品上下篇功能
  */
  $is_up=$tag['pager.data.up'];
  $is_down=$tag['pager.data.down'];
  if(is_array($is_up))
  {
  ?>
  <div class="prev">上一个：<a href="<?php echo sys_href($params['id'],'product',$is_up['id'])?>" title="<?php echo $is_up['title']; ?>"><?php echo $is_up['title']; ?></a></div>
  <?php 
  }   
  if(is_array($is_down))
  {
  ?>
  <div class="next">下一个：<a href="<?php echo sys_href($params['id'],'product',$is_down['id'])?>" title="<?php echo $is_down['title']; ?>"><?php echo $is_down['title']; ?></a></div>
  <?php   
  } 
  unset($is_up);
  unset($is_down);
?>

      
      
      
    </div>
    <div class="related-content">
      <div class="header">相关产品</div>
      <ul><?php sys_about(4,0); ?></ul>
    </div>
  </div>

