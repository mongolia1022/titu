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

<?php sys_parts() ?>

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
