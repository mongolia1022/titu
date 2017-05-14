<?php
   //产品详细页
?>
<!-- 放大镜 -->
<link rel="stylesheet" type="text/css" href="css/magnifier.css">
<script type="text/javascript" class="library" src="<?php echo $tag['path.skin']; ?>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" class="library" src="<?php echo $tag['path.skin']; ?>js/jquery.colorbox-min.js"></script>
<script type="text/javascript" class="library" src="<?php echo $tag['path.skin']; ?>js/magnifier.js"></script>
<?php
$originalPic = explode('|',$data['originalPic']);
$middlePic   = explode('|',$data['middlePic']);
$smallPic    = explode('|',$data['smallPic']);
$contents= explode('|',$data['content']);
$details=$contents[0];
?>
<!--内页-->
<div class="incenter">
	<div class="incenter_t"></div>
    <div class="incenter_in">
    	<div class="in_page" style="padding-bottom:0;">
        	
            <!--产品介绍-->
            <div class="center_mgt" style="background:none;">
            
                <!--产品图片-->
                <div class="con-FangDa" id="fangdajing">
                  <div class="con-fangDaIMg">
                    <!-- 正常显示的图片-->
                    <img src="<?php echo ispic($middlePic[0])?>">
                    <!-- 滑块-->  
                    <div class="magnifyingBegin"></div>
                    <!-- 放大镜显示的图片 -->
                    <div class="magnifyingShow"><img src="<?php echo ispic($originalPic[0])?>"></div>
                  </div>
                  
                  <ul class="con-FangDa-ImgList">
                      <!-- 图片显示列表 -->
                      <?php 
				  for($i=0;$i<count($originalPic);$i++)
				  {
				?>
                <li class="<?php echo $i==0?'activ':''?>"><img src="<?php echo ispic($middlePic[$i])?>" data-bigimg="<?php echo ispic($originalPic[$i])?>"></li>
                <?php
		    	}?>
                  </ul>
                </div>

                <!--产品文字-->
                <div class="pro_font">
                    <div class="pro_font1"><?php echo $data['title']; ?></div>
                <div class="pro_font2">PRICE: <span><?php echo $data['sellingPrice']; ?></span></div>
                <div class="pro_font3">Introduction</div>
                    <div class="pro_font4">
                        <?php echo $data['description']; ?>
                    </div>
                </div>
                
                <div class="clear"></div>
                
                <!--分隔-->
                <div class="por_in2_line">
                	<div class="por_in2_line_circle circle iconfont">&#xe602;</div>
                </div>
                
                <!--图文详细介绍-->
                <div class="por_in2_details">
                	<?php echo $details ?>
                </div>
                
                <!--底部分割-->
                <div class="por_in2_gray">
                	<div class="por_in2_gray_in">Space application for reference purposes only, please prevail in kind</div>
                </div>
                
                
            </div>
            
            <!--产品滚动-->
            <div class="por_in2_slide">
              <div class="por_in2_slide_t">
                	Similar products recommended
                	<div class="por_slide_btn_r iconfont"  id="arrRright_01"><a href="###">&#xe615;</a></div>
                	<div class="por_slide_btn_l iconfont" id="arrLeft_01"><a href="###">&#xe620;</a></div>
                </div>
                
                <div class="por_in2_slide_b" id="arrCont_01">
                
                	<ul>
                        <?php sys_about(10,0,0,'product',0); ?>
                        <div class="clear"></div>
                    </ul>
                </div>
                
                <script language="javascript" src="js/common.js"></script>

				<script language="javascript" type="text/javascript">
					<!--//--><![CDATA[//><!--
					var focusScroll_01 = new ScrollPic();
					focusScroll_01.scrollContId	= "arrCont_01"; //内容容器ID
					focusScroll_01.arrLeftId	  = "arrLeft_01";//左箭头ID
					focusScroll_01.arrRightId	 = "arrRright_01"; //右箭头ID
					focusScroll_01.frameWidth	 = 1002;//显示框宽度
					focusScroll_01.pageWidth	  = 260; //翻页宽度
					focusScroll_01.upright		= false; //垂直滚动
					focusScroll_01.speed		  = 20; //移动速度(单位毫秒，越小越快)
					focusScroll_01.space		  = 20; //每次移动像素(单位px，越大越快)
					focusScroll_01.autoPlay		= true; //自动播放
					focusScroll_01.autoPlayTime	= 5; //自动播放间隔时间(秒)
					focusScroll_01.initialize(); //初始化
					
					//--><!]]>
                </script>
            </div>
            
        </div>
    </div>
</div>