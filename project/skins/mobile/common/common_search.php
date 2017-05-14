<html>
<head>
  <meta charset="UTF-8">
  <title><?php echo $tag['seo.title']; ?></title>
  <meta name="keywords" content="<?php echo $tag['seo.keywords']; ?>" />
  <meta name="description" content="<?php echo $tag['seo.description'];  ?>" />
  <meta name="author" content="模板风--www.mubanfeng.com QQ：5685200" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="format-detection" content="telephone=no, email=no">
  <meta name="apple-mobile-web-app-title" content="<?php echo $tag['seo.title']; ?>">
  <link rel="stylesheet" href="<?php echo $tag['path.skin']; ?>css/style.css">
  <script type="text/javascript" src="<?php echo $tag['path.skin']; ?>js/jquery.js"></script>
  <script type="text/javascript" src="<?php echo $tag['path.skin']; ?>js/ow.js"></script>
  <script type="text/javascript" src="<?php echo $tag['path.skin']; ?>js/com.js"></script>
  <script type="text/javascript" src="<?php echo $tag['path.skin']; ?>js/touchslide.1.1.js"></script>
</head>
<body>
<!--头部{-->
<header class="om-header" id="leev"> <a class="goback" href="javascript:OW.goBack();"></a>
  <div class="title">搜索结果</div>
</header>
<!--}-->

<section class="mbody">
  <div class="om-page-detail">
    <h1 class="title">搜索结果如下：</h1>
    <?php sys_parts()?>
  </div>
</section>

  
  <section>
    <div class="om-search">
      <div class="search-form"><form method="post" action="<?php echo $tag['form.action.search']; ?>" >
        <div class="search-text">
          <input type="text" class="text text-search" name="keyword" value="" placeholder="内容搜索">
        </div>
        <div class="search-btn">
          <button type="submit" class="btn-search" name="btn_search">搜索</button>
        </div>
      </form>
    </div>
  </div>
</section>
<!--底部{-->
<footer class="om-footer">
  <p class="powered"><a href="http://www.mubanfeng.com/" target="_blank">北京某某科技有限公司</a> <a href="wtai://wp/mc;01099999999">TEL：010-99999999</a></p>
</footer>
<nav class="om-nav" id="om_nav">
  <ul class="base" id="om_nav_base">
    <li class="n1" n1="true" i="1"><a class="n1" href="<?php echo $tag['path.root'];?>/" style="background-image:url(<?php echo $tag['path.skin']; ?>images/icon/home.png);">首页</a> </li>
    <li class="n1" n1="true" i="2"><a class="n1" href="<?php echo sys_href(1)?>" style="background-image:url(<?php echo $tag['path.skin']; ?>images/icon/about.png);">关于</a> </li>
    <li class="n1" n1="true" i="3"><a class="n1" href="<?php echo sys_href(2)?>" style="background-image:url(<?php echo $tag['path.skin']; ?>images/icon/news.png);">新闻</a> </li>
    <li class="n1" n1="true" i="4"><a class="n1" href="<?php echo sys_href(3)?>" style="background-image:url(<?php echo $tag['path.skin']; ?>images/icon/store.png);">产品</a> </li>
    <li class="n1" n1="true" i="5"><a class="n1" href="<?php echo sys_href(4)?>" style="background-image:url(<?php echo $tag['path.skin']; ?>images/icon/cases.png);">案例</a> </li>
    <li class="n1" n1="true" i="6"><a class="n1" href="<?php echo sys_href(6)?>" style="background-image:url(<?php echo $tag['path.skin']; ?>images/icon/tel.png);">联系</a> </li>
  </ul>
</nav>
<script type="text/javascript">
function navFixing(){
  if((OW.int($("body").height())+OW.int($(".om-nav").height())) > OW.int(OW.webScreenHeight())){
    $("body").css("padding-bottom","0px");
    $(".om-nav").css("position","relative");
  };
};

</script> 
<!--}--> 
<script type="text/javascript">
$(document).ready(function(){

  OW.mobile.menu();
});
</script>
<script type="text/javascript">
$(document).ready(function(){
  //产品图片组
  TouchSlide({ 
    slideCell:"#slidebox",
    titCell:".hd ul",
    mainCell:".bd ul", 
    effect:"leftLoop", 
    autoPage:true,//自动分页
    autoPlay:true, //自动播放
    interTime:3000
  });
});
</script>
</body>
</html>
