 <?php
    //联系我们
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title><?php echo $tag['seo.title']; ?></title>
<meta name="keywords" content="<?php echo $tag['seo.keywords']; ?>" />
<meta name="description" content="<?php echo $tag['seo.description'];  ?>" />
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="<?php echo $tag['path.skin']; ?>dist/css/swiper.min.css">


<link rel="stylesheet" type="text/css" href="<?php echo $tag['path.skin']; ?>css/style.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $tag['path.skin']; ?>css/css.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $tag['path.skin']; ?>iconfont/iconfont.css" />

<!--JQ基础文件-->
<script type="text/javascript" src="<?php echo $tag['path.skin']; ?>js/jquery-1.9.1.min.js"></script>

<!--IE6 PNG透明-->
<!--[if lte IE 6]>
<script src="js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a');
    </script>
<![endif]-->

</head>

<body>
<!-- Swiper + 导航 -->
<div class="swiper-container swiper1" style="height:388px;">
    <div class="swiper-wrapper">
        <?php doc_focus('1',3,0,0,0,true,'id',0)?>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination swiper-pagination-white"></div>
    <!-- Add Arrows -->
    <div class="swiper-button-next swiper-button-white"></div>
    <div class="swiper-button-prev swiper-button-white"></div>
    <div class="nav">
    	<ul>
        	<li><a href="<?php echo $tag['path.root']; ?>/">Home</a></li>
        	<li>　　　::　　　</li>
        	<?php nav_main() //主导航调用的标签?>
        </ul>
    </div>
  <div class="search_all">
    	<div class="search_txt"><input id="txt_search" type="text"   value="Search what you want..."  onFocus="if(value==defaultValue){value='';this.style.color='#fff'}" onBlur="if(!value){value=defaultValue;this.style.color='#fff'}" style="color:#fff"></div>
    	<div class="search_btn"><input type="image" src="images/search_btn.png" /></div>
    </div>
    <div class="cnen"><a href="#" class="now">EN</a> / <a href="#">CN</a></div>
</div>

<!-- Swiper JS -->
<script src="<?php echo $tag['path.skin']; ?>dist/js/swiper.min.js"></script>
<!-- Initialize Swiper -->

<script>
var swiper1 = new Swiper('.swiper1', {
	pagination: '.swiper-pagination',
	nextButton: '.swiper-button-next',
	prevButton: '.swiper-button-prev',
	paginationClickable: true,
	spaceBetween: 30,
	centeredSlides: true,
	autoplay: 2500,
	autoplayDisableOnInteraction: false,
	effect: 'fade'
});
</script>


<!--内页-->
<div class="incenter">
	<div class="incenter_t"></div>
    <div class="incenter_in">
    	<div class="in_page">
            <div class="center_mgt">
                <div class="left">
                    <?php nav_custom('20,23') //自定义导航调用的标签?>
                </div>
                <div class="right">
                    <div class="right_t">
                        <span>FOCUS US</span>
                        <span> &gt; </span>
                        <label><?php echo sys_menu_info('title',false)?></label>
                    </div>
                    <div class="right_b">
                      <div class="about">
            	<div class="about_t">
                <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
                <html xmlns="http://www.w3.org/1999/xhtml">
                  <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
                    <meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
                    <meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
                    <title>百度地图API自定义地图</title>
                    <!--引用百度地图API-->
                    <style type="text/css">
                      html,body{margin:0;padding:0;}
                      .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
                      .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
                    </style>
                    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
                  </head>

                  <body>
                    <!--百度地图容器-->
                    <div style="width:744px;height:296px;border:#ccc solid 1px;" id="dituContent"></div>
                  </body>
                  <script type="text/javascript">
                    //创建和初始化地图函数：
                    function initMap(){
                    createMap();//创建地图
                    setMapEvent();//设置地图事件
                    addMapControl();//向地图添加控件
                    }

                    //创建地图函数：
                    function createMap(){
                    var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
                    var point = new BMap.Point(113.049837,23.007946);//定义一个中心点坐标
                    map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
                    window.map = map;//将map变量存储在全局
                    }

                    //地图事件设置函数：
                    function setMapEvent(){
                    map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
                    map.enableScrollWheelZoom();//启用地图滚轮放大缩小
                    map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
                    map.enableKeyboard();//启用键盘上下左右键移动地图
                    }

                    //地图控件添加函数：
                    function addMapControl(){
                    //向地图中添加缩放控件
                    var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
                    map.addControl(ctrl_nav);
                    //向地图中添加缩略图控件
                    var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
                    map.addControl(ctrl_ove);
                    //向地图中添加比例尺控件
                    var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
                    map.addControl(ctrl_sca);
                    }


                    initMap();//创建和初始化地图
                  </script>
                </html>
                </div>
                <div class="about_b">
                    <span>TITU CERAMICS</span><br>
                    Contact: Jennifer Lawrence<br>
                    Tel: <?php echo SITETELEPHONE; ?><br>
                    Fax: <?php echo SITEFAX; ?><br>
                    Mail: <?php echo SITEEMAIL; ?><br>
                    URL: www.fotiles.com<br>
                    Address: <br>
                  <?php echo SITEADDRESS; ?><br>
                  	<div class="qr"><?php doc_focus('4',1,4,0,0,true,'id',1)?></div>
                 </div>
            </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>


<!-- 版权信息 -->
<div class="copyright">
	<div class="copyright_in">
        <div class="bottom_logo">
            <a href="#"><img src="<?php echo $tag['path.skin']; ?>images/bottom_logo.png" /></a>
            <em class="verticalAlign"></em>
        </div>
      <div class="bottom_font">
        <?php nav_main(1) //主导航调用的标签?><br/>
        <?php doc_article('22',0,0,0,0,0,true,true,'id',0)?>
      </div>
      <div class="bottom_qr">
      	<?php doc_focus('4',1,3,0,0,true,'id',2)?>
        <span>TITU-BTP</span>
      </div>
      <div class="bottom_qr">
      	<?php doc_focus('4',1,3,0,0,true,'id',1)?>
        <span>TITU</span>
      </div>
    </div>
</div>

</body>
</html>