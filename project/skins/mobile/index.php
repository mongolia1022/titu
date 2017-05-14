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
  <header class="om-header">
    <div class="logo"><a href="<?php echo $tag['path.root'];?>/" title="<?php echo $tag['site.title']; ?>"><img src="<?php echo $tag['path.skin']; ?>images/site_mobile_logo.png"></a></div>
  </header>
  <!--}-->

  <section class="mbody">
    <div class="om-banner">
      <div id="banner" class="slidebox">
        <div class="bd">

          <ul>
            <?php doc_focus('1',10,0,0,0,true,'id',0)?>           
          </ul>

        </div>
        <div class="hd">
          <ul>
            <?php doc_focus('1',10,1,0,0,true,'id',0)?>
          </ul>
        </div>
      </div>
    </div>
    <div class="om-index-news">
      <div id="news_tabbox" class="tabbox">
        <div class="hd">
          <ul>
            <li tab="1" class="on"><a href="javascript:;">公司动态</a></li>
            <li tab="2" class=""><a href="javascript:;">行业资讯</a></li>
          </ul>
        </div>
        <div class="bd">
          <ul>
            <?php doc_list('8',3,0,0,0,0,false,false,'id',0)?>
          </ul>
          <ul>
            <?php doc_list('9',3,0,0,0,0,false,false,'id',0)?>
          </ul>
        </div>

      </div>
    </div>
    <div class="om-index-product">
      <div class="header"><a class="more" href="<?php echo sys_href(3)?>">更多</a>产品中心</div>
      <div class="section">
        <ul class="clearfix">
          <?php doc_product('3',8,0,0,0,0,false,false,'id',0)?>
        </ul>
      </div>
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
  //banner广告
  TouchSlide({ 
    slideCell:"#banner",
    titCell:".hd ul",
    mainCell:".bd ul", 
    effect:"leftLoop", 
    autoPage:true,//自动分页
    autoPlay:true,//自动播放
    interTime:3000
  });
  TouchSlide({
    slideCell:"#news_tabbox",
    effect:"leftLoop"
  });
  //搜索
  var $btnSearch = $("button[name='btn_search']"),
  $keywords      = $("input[name='keywords']");
  $keywords.focus(function(){
    OW.enterClick(function(){
      $btnSearch.click();
    });
  });
});
</script>
</body>
</html>