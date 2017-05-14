<?php
/*产品列表页分类样式
初始化参数
*  by grysoft (狗头巫师)
*  QQ:767912290
*  nav_sub_custom 调用频道导航 子栏目的样式标签
*  样式文件存于 index文件夹下 nav_sub_style.php 中。
* 
*  第一参数：指定频道下栏目调用，不填则默认当前栏目。
*  第二参数：指定所调用样式文件 nav_sub_style.php 中style 的数值，默认不填则为 nav_sub_0.php。 
*  第三参数：是否同时展开子类，默认不填则为展开。
*  
*  此标签内置一递增变量 $i ,以方便制作各种样式的菜单, 此变量可在此文件中任意地方调用。;
* 
*/
$select ='now';  //选中状态的样式，若无选中状态，可不添加。
$target ='target="_blank"'; //外链则弹出新窗口，若不需弹出新窗口可清空此变量。
$ico = ispic($data['originalPic'])?'<img src="'.$data['originalPic'].'" />':''; //栏目图标，可在后台栏目缩略图处上传
$select = $params['id']==$data['id']?$select:''; 
$target = $data['isTarget']?$target:'';
?>
<li onmouseover="setTab(1,<?php echo $i?>)" class="<?php echo $select?>"><a href="###" class="pst_bg<?php echo $i+1?> <?php echo $select?>"></a></li>