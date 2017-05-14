<!--内页-->
<div class="incenter">
    <div class="incenter_t"></div>
    <div class="incenter_in">
        <div class="in_page">
            <div class="pro_select_all">
                <div id="tablist1">
    <?php
	if(!empty($tag['data.results']))
	{
        $keyword=urldecode($request['keyword']);
		$request['i'] = $request['i'] ? $request['i'] : 1;
		$temResult = array_slice($tag['data.results'],($request['i']-1)*10,10,true);
		?>
        <div class="pro_select_b tablist">
            <ul>
      <?php
		foreach($temResult as $data)
		{
			if(!empty($data['title'])){
				$data['title']=get_keyword_str($data['title'],$keyword,30);
			}else{
				$data['title']=get_keyword_str($data['content'],$keyword,30);
			}?>
			<?php 
            if($data['type'] == 'product'){?>
                <li>
                    <a href="<?php echo sys_href($data['p'],$data['type'],$data['id'])?>"><img src="<?php echo ispic($data['smallPic'])?>"></a>
                    <span><a href="<?php echo sys_href($data['p'],$data['type'],$data['id'])?>"><?php echo $data['title']; ?></a></span>
                    <label><?php echo sys_push_one($data['spec'],2) ?></label>
                    <div class="idx_pro_scene">
                        <a href="<?php echo sys_href($data['p'],$data['type'],$data['id'])?>">
                            <img src="<?php echo sys_push_one($data['spec'],3) ?>">
                            <span><?php echo $data['title']; ?></span>
                            <label><?php echo sys_push_one($data['spec'],2) ?></label>
                        </a>
                    </div>
                </li>
            <?php 
            }
		}?>
        <div class="clear"></div>
                    </ul>
                </div>
        <?php 
        }
        else {?>
        <?php echo '<div>抱歉,您所查找的相关的信息还没有录入,如果想详细了解这方面的内容可以咨询在线客户,我们会第一时间为您解答,谢谢!</div>';} ?>
</div>

<!--图片切换 JS-->
<script>
    $(function () {
        $('.pro_select_b ul li').mouseover(function () {
            $(this).children('.idx_pro_scene').css('display', 'block')
        })
        $('.idx_pro_scene').mouseleave(function () {
            $(this).css('display', 'none')
        })
    })
</script>

<!--TAB JS-->
<script type="text/javascript">
    function setTab(m, n) {
        var menu = document.getElementById("tab" + m).getElementsByTagName("li");
        var div = document.getElementById("tablist" + m).getElementsByTagName("div");
        var showdiv = [];
        for (i = 0; j = div[i]; i++) {
            if ((" " + div[i].className + " ").indexOf(" tablist ") != -1) {
                showdiv.push(div[i]);
            }
        }
        for (i = 0; i < menu.length; i++) {
            menu[i].className = i == n ? "now" : "";
            showdiv[i].style.display = i == n ? "block" : "none";
        }
    }
</script>
<script>
    $(function () {
        $('.pro_select_t ul li').mouseover(function () {
            $(this).children('a').addClass('now');
            $(this).nextAll().children('a').removeClass('now');
            $(this).prevAll().children('a').removeClass('now');
        })
    });
</script>