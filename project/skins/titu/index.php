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
<div class="swiper-container swiper1">
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
      <form action="<?php echo $tag['form.action.search']; ?>" method="post">
    	<div class="search_txt"><input name="keyword" id="txt_search" type="text"   value="Search what you want..."  onFocus="if(value==defaultValue){value='';this.style.color='#fff'}" onBlur="if(!value){value=defaultValue;this.style.color='#fff'}" style="color:#fff"></div>
    	<div class="search_btn"><input type="image" src="images/search_btn.png" /></div>
        </form>
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
$(function(){
	var w_h = $(window).height();
	$('.swiper1').height(w_h)
})
</script>

<!-- 首页产品推荐 -->
<div class="idx_recommend">
	<ul>
        <?php doc_focus('2',4,1,0,0,true,'id',0)?>
        <div class="clear"></div>
    </ul>
</div>

<!-- 首页关于我们+展厅展示 -->
<div class="about_hall">
	<div class="idx_about">
    	<div class="idx_title">
        	<div class="idx_title_t circle iconfont">&#xe66b;</div>
            <div class="idx_title_m">About us</div>
            <div class="idx_title_b"></div>
        </div>
        <div class="idx_about_pic">
        	<img src="<?php echo $tag['path.skin']; ?>images/idx_about_pic.jpg" width="460" height="122" />
        	<div class="idx_about_square_t"></div>
        	<div class="idx_about_square_b"></div>
        </div>
        <div class="idx_about_av">
        	<img src="<?php echo $tag['path.skin']; ?>images/av_01.png" />
        </div>
        <div class="idx_about_txt">
        <?php doc_article('3',0,0,0,0,0,true,true,'id',0)?></div>
        <div class="idx_about_more"><a href="<?php echo sys_href(23); ?>">More &gt;</a></div>
    </div>
    <div class="idx_hall">
    	<div class="idx_title">
        	<div class="idx_title_t circle iconfont">&#xe6bb;</div>
            <div class="idx_title_m">Exhibition hall</div>
            <div class="idx_title_b"></div>
        </div>
        <div class="swiper-container swiper2">
            <div class="swiper-wrapper swiper-slide2">
                <?php doc_focus('3',3,2,0,0,true,'id',0)?>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination2" style="bottom:18px; text-align:right;"></div>
    </div>
    
        <!-- Add Arrows -->
        <div class="swiper-button-next swiper-button-white"></div>
        <div class="swiper-button-prev swiper-button-white"></div>
		<script>
            var swiper2 = new Swiper('.swiper2', {
                pagination: '.swiper-pagination',
                nextButton: '.swiper-button-next',
                prevButton: '.swiper-button-prev',
                paginationClickable: true,
                spaceBetween: 30,
                centeredSlides: true,
                autoplay: 2500,
                autoplayDisableOnInteraction: false
            });
        </script>
        
    </div>
    <div class="clear"></div>
</div>

<!-- 首页产品展示 -->
<div class="idx_pro_list">
	<div class="idx_title">
        <div class="idx_title_t circle iconfont">&#xe6bc;</div>
        <div class="idx_title_m">Products</div>
        <div class="idx_title_b"></div>
    </div>
    <div class="idx_tab_t" id="tab1">
    	<ul>
        	<li onmouseover="setTab(1,0)" class="now"><a href="#">Hot selling</a></li>
            <span>　　　|　　　</span>
        	<li onmouseover="setTab(1,1)"><a href="#">Recommend</a></li>
            <span>　　　|　　　</span>
        	<li onmouseover="setTab(1,2)"><a href="#">Classical</a></li>
        </ul>
    </div>
    <div id="tablist1">
        <div class="idx_tab_b tablist fixon" >
            <ul>
                <?php doc_product('15',1,0,0,0,0,true,false,'id',0)?>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="idx_tab_b tablist" >
            <ul>
                <?php doc_product(16,1,0,0,0,0,true,false,'id',0) ?>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="idx_tab_b tablist" >
            <ul>
                <?php doc_product(17,1,0,0,0,0,true,false,'id',0) ?>
                <div class="clear"></div>
            </ul>
        </div>
        <script>
        	$(function(){
				$('.idx_tab_b ul li').mouseover(function(){
					$(this).children('.idx_pro_scene').css('display','block')	
				})
				$('.idx_pro_scene').mouseleave(function(){
					$(this).css('display','none')	
				})
			})
        </script>
    </div>
    <!--TAB JS-->
	<script type="text/javascript"> 
		function setTab(m,n){ 
			var menu=document.getElementById("tab"+m).getElementsByTagName("li");  
			var div=document.getElementById("tablist"+m).getElementsByTagName("div"); 
			var showdiv=[]; 
			for (i=0; j=div[i]; i++)
			{  
			if((" "+div[i].className+" ").indexOf(" tablist ")!=-1)
			{  
				showdiv.push(div[i]); 
			} 
			}  
			for(i=0;i<menu.length;i++)
			{  
			menu[i].className=i==n?"now":"";  
			showdiv[i].style.display=i==n?"block":"none"; 
			}  
		}  
    </script>
	<div class="idx_pro_list_more"><a href="<?php echo sys_href(20);?>">More &gt;</a></div>
</div>

<!-- 版权信息 -->
<div class="copyright">
	<div class="copyright_in">
        <div class="bottom_logo">
            <a href="<?php echo $tag['path.root']; ?>"><img src="<?php echo $tag['path.skin']; ?>images/bottom_logo.png" /></a>
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
