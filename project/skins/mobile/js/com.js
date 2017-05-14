/*
* author:DX.Lin <admin@openwbs.com>
* update:2014-11-05
* http://www.openwbs.com
*/
OW.mobile  = new mobile();
OW.client  = new client();
OW.ad      = new ADClass();
OW.link    = new linkClass();
OW.gallery = new galleryClass();
OW.member  = new memberClass();
OW.search  = new searchClass();
OW.shop    = new shopClass();
function mobile(){
	this.menu = function(opt){
		var $topMenu        = $("#top_menu");
		var $topMenuSection = $("#top_menu_section");
		var $topMenuClose   = $("#top_menu_close");
		$topMenu.click(function(){$topMenuSection.slideDown(100);});
		$topMenuClose.click(function(){$topMenuSection.slideUp(100);});
	};
	this.navMore = function(opt){
		var $baseNav = opt.baseNav,
		$moreBtn     = opt.moreBtn,
		$moreNav     = opt.moreNav,
		baseNum      = opt.baseNum,
		i            = 0;
		removeMoreBtn= true;
		$baseNav.find("[n1='true']").each(function(){
			i = OW.int($(this).attr("i"));
			if(i>baseNum){
				$(this).appendTo($moreNav);
				removeMoreBtn = false;
			};
		});
		if(removeMoreBtn){
			$moreBtn.parent().remove();
		}else{
			$moreBtn.toggle(function(){$moreNav.slideDown(100);},function(){$moreNav.slideUp(100);});
		};
		$moreNav.find("a[name='close']").click(function(){$moreNav.slideUp(100);});
	};
};
//客户端
function client(){
	this.typeInit = function(opt){
		var $section = opt.section;
		var i,id,arr = OW.typeid.split("-");
		for(i=0;i<arr.length;i++){
			id = OW.int(arr[i]);
			$section.find("[name='ctype'][type_id='"+id+"']").addClass("current");
		};
	};
	this.uploadInput = "";
	this.uploadDialog = "";
	this.upload = function(opt){
		OW.client.uploadInput  = $("input[name='"+opt.inputName+"']");
		OW.client.uploadDialog = OWDialog({follow:$iframe}).posting("正在上传，请稍后 ... ");
		var $iframe = document.getElementById(opt.iframeId),
		$form       = $($iframe.contentWindow.document.getElementById("upload_form"));
		$form.submit();
	};
	this.uploadCallback = function(success,filename){
		if(success){
			OW.client.uploadDialog.success("上传完毕").timeout(2);
			OW.client.uploadInput.val(filename);
		}else{
			OW.client.uploadDialog.error("上传失败",filename).timeout(3);
		};
	};
	this.uploadNotOpen = function(uploadBtn){
		$("button[name='"+uploadBtn+"']").hide();
	};
	this.serviceOnline = function(opt){
		var open  = opt.open=="1" ? true : false,
		data      = opt.data || "",
		className = "service-online";
		var init = function(){
			var json,i,html,dl,dls="",name,tel,qq,wangwang,skype,text;
			json = $.parseJSON(data);
			for(i=0;i<json.length;i++){
				name     = unescape(json[i].name || "");
				tel      = unescape(json[i].tel || "");
				qq       = unescape(json[i].qq || "");
				wangwang = unescape(json[i].wangwang || "");
				skype    = unescape(json[i].skype || "");
				text     = unescape(json[i].text || "");
				if(tel!=""){
					tel = '<dd class="tel">'+tel+'</dd>';
				};
				if(qq!=""){
					qq = '<dd class="qq"><a href="http://wpa.qq.com/msgrd?v=3&amp;uin='+qq+'&amp;site=qq&amp;menu=yes" target="_blank"><img border="0" title="点击这里给我发消息" alt="点击这里给我发消息" src="http://wpa.qq.com/pa?p=2:'+qq+':41"></a></dd>';
				};
				if(wangwang!=""){
					wangwang='<dd class="wangwang"><a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&touid='+wangwang+'&siteid=cntaobao&status=1&charset=utf-8"><img border="0" src="http://amos.alicdn.com/realonline.aw?v=2&uid='+wangwang+'&site=cntaobao&s=1&charset=utf-8" alt="点击这里给我发消息" /></a></dd>';
				};
				if(skype!=""){
					skype='<dd class="skype"><script type="text/javascript" src="http://skype.tom.com/script/skypeCheck40.js"></script><a href="skype:'+skype+'?call" onclick="return skypeCheck();"><img src="http://mystatus.skype.com/bigclassic/'+skype+'" style="border: none;" width="80" height="24" alt="My status" /></a></dd>';
				};
				if(text!=""){
					text='<dd class="skype">'+text+'</dd>';
				};
				dl = '<dl><dt>'+name+'</dt>'+tel+qq+wangwang+skype+text+'</dl>';
				if(dl==""){
					dls = dl;
				}else{
					dls = dls +""+ dl;
				};
			}
			html = '<div class="'+className+'"><a href="javascript:;" class="mini"></a><div class="listpanel">'
				  +'<div class="heading"><a class="close" href="javascript:;"></a></div>'
				  +'<div class="section">'+dls+'</div>'
				  +'</div></div>';
			$("body").append(html);
			var $mini  = $("div."+className).find(".mini");
			var $panel = $("div."+className).find(".listpanel");
			var $close = $("div."+className).find("a.close");
			if(opt.initType=="mini"){
				$mini.show();
				$panel.hide();
			}else{
				$mini.hide();
				$panel.show();
			};
			$mini.click(function(){$mini.hide();$panel.show("fast");});
			$close.click(function(){$mini.show("fast");$panel.hide("fast");});
			var $top = parseInt($("div."+className).css("top"));
			$(window).scroll(function(){
				$("div."+className).css("top",parseInt(document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop)+$top);
			});
		}
		if(open && data!=""){init();}
	};
};
//广告
function ADClass(){
	//展现量统计
	this.count = function(id){
		
	};
	this.parse = function(id){
		var html,i,lis="",json,pages="",url="",
		$ad      = $("#ow_ad_"+id),
		$player  = {},
		$pic     = {},
		$a       = {},
		$img     = {},
		$pages   = {},
		data     = $ad.attr("data"),
		type     = $ad.attr("type"),
		adHeight = $ad.attr("ad_height"),
		adWidth  = $ad.attr("ad_width"),
		fullScreen = OW.int($ad.attr("full_screen")),
		playerWidth  = 0,
		slidersWidth = 0,
		imgWidth     = 0,
		marginLeft   = - OW.int(adWidth)/2;
		link         = '';
		target       = '';
		css          = '';
		if(data!=""){
			switch(type){
			case "image":
				json = OW.JSON.parse(data);
				if(json.length==1){
					link   = OW.trim(json[0].link);
					target = 'target="_blank"';
					if(OW.isNull(link) || link=="#"){
						css    = 'cursor-default';
						link   = "javascript:;";
						target = "";
					};
					$ad.html('<div class="ow-ad-pic"><a class="'+css+'" href="'+link+'" '+target+'><img src="'+json[0].url+'"></a></div>').show();
					$pic = $ad.find(".ow-ad-pic").css({height:adHeight,width:adWidth});
					$a   = $ad.find("a").css({height:adHeight,width:adWidth});
					$img = $ad.find("img").css({height:adHeight,width:adWidth});
					if(fullScreen){
						$ad.css({width:"100%"});
						$pic.css({width:"100%"});
						$a.css({width:adWidth});
						$a.css({left:"50%","margin-left":marginLeft});
					};
				}else if(json.length>1){
					html = '<div class="ow-pic-player">';
					for(i=0;i<json.length;i++){
						if(OW.isNull(json[i].link) || json[i].link=="#"){
							css    = 'cursor-default';
							link   = "javascript:;";
							target = "";
						}else{
							css    = '';
							link   = OW.trim(json[i].link);
							target = 'target="_blank"';
						};
						lis   = lis +'<li i="'+i+'"><a class="'+css+'" href="'+link+'" '+target+'><img src="'+json[i].url+'"></a></li>';
						pages = pages +'<a href="javascript:;" i="'+i+'">'+(i+1)+'</a>';
					};
					html = html +'<ul class="sliders" name="sliders">'+lis+'</ul>';
					html = html +'<div class="pages" name="pages">'+ pages +'</div>';
					html = html +'<div class="turner" name="turner"><a class="prev" href="javascript:;"></a><a class="next" href="javascript:;"></a></div>';
					html = html +'</div>';
					$ad.html(html).show();
					//
					$player  = $ad.find(".ow-pic-player").css({height:adHeight,width:adWidth}),
					$sliders = $ad.find("ul[name='sliders']").css({height:adHeight,width:adWidth});
					$img     = $ad.find("img").css({height:adHeight,width:adWidth});
					$pages   = $ad.find("div[name='pages']");
					if(fullScreen){
						$ad.css({width:"100%"});
						$player.css({width:"100%"});
						$sliders.css({left:"50%","margin-left":marginLeft});
						$pages.css({left:"50%","margin-left":-OW.int($pages.width())/2});
					};
					OW.ad.picPlayer({obj:$ad,timer:6000});
				};
				break;
			case "flash":
				json = OW.JSON.parse(data);
				url  = json.url;
				html = '<embed src="'+url+'" quality="high" wmode="opaque" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash">';
				$ad.html(html).show();
				$ad.find("embed").css({height:adHeight,width:$ad.css("width")});
				break;
			};
		};
	};
	this.picPlayer = function(o){
		var timerID,
		$this    = o.obj,
		timer    = o.timer,
		$sliders = $this.find("ul[name='sliders']"),
		$pages   = $this.find("div[name='pages']"),
		$turner  = $this.find("div[name='turner']").hide(),
		$prev    = $turner.find("a.prev"),
		$next    = $turner.find("a.next"),
		$a       = $pages.find("a"),
		len      = $a.length;
		$sliders.find("li").hide();
		$sliders.find("li:first").show();
		$pages.find("a:first").addClass("current");
		$prev.click(function(){
			playStop();
			var b,a = parseInt($pages.find("a.current").attr("i"));
			if(a==0){b=len-1;}else{b=a-1;};
			playing(a,b);
		});
		$next.click(function(){
			playStop();
			var b,a = parseInt($pages.find("a.current").attr("i"));
			if(a==len-1){b=0;}else{b=a+1;};
			playing(a,b);
			autoPlay();
		});
		$a.click(function(){
			playStop();
			var a = parseInt($pages.find("a.current").attr("i"));
			var b = parseInt($(this).attr("i"));
			if(a!=b){playing(a,b);};
			autoPlay();
		});
		var play = function(){
			var b,a = parseInt($pages.find("a.current").attr("i"));
			if(a==len-1){b=0;}else{b=a+1;};
			playing(a,b);
		};
		var playing = function(a,b){
			$sliders.find("li:eq("+a+")").hide();
			$sliders.find("li:eq("+b+")").fadeIn("fast");
			$pages.find("a:eq("+a+")").removeClass("current");
			$pages.find("a:eq("+b+")").addClass("current");
		};
		//自动播放
		var autoPlay = function(){
			if(timer){
				timerID = window.clearInterval(timerID);
				timerID = window.setInterval(function(){play()},timer);
			};
		};
		var playStop = function(){
			if(timer){
				timerID = window.clearInterval(timerID);
			};
		};
		//鼠标事件绑定
		$this.find("ul[name='sliders'],div[name='turner']").hover(
			function(){
				playStop();
				$turner.show();
			},
			function(){
				autoPlay();
				$turner.hide();
			}
		).mouseout();
	};
};

//友情链接
function linkClass(){
	this.count = function(id){
		var url = OW.sitePath +"ow-includes/ow.ajax.main.asp?ctl=link&act=count";
		OW.ajax({
			url:url,data:"link_id="+id,
			success:function(){
				$dialog.close();
			},
			failed:function(msg){
				$dialog.error('亲，提交失败，请查看以下错误信息',msg).timeout(5);
			}
		});
	};
};

//产品图片画廊
function galleryClass(){
	var data,$gallery,$view,$list,$prev,$next;
	this.init = function(o){
		data     = o.data || "{}",
		$gallery = o.gallery,
		$view    = o.view || $(document.createElement("div")).addClass("gallery-view").attr("create","true"),
		$list    = o.list || $(document.createElement("div")).addClass("gallery-list").attr("create","true");
		var i,jn,json,html,smallImg,bigImg,gaW,liW,vNum;
		var view="",list="",turner="",ok=false;
		try{
			data = OW.rep(data,"&quot;",'"');
			jn   = OW.JSON.parse(data);
			if(jn.length>0){
				ok = true;
			};
		}catch(e){};
		if(ok){
			for(i=0;i<jn.length;i++){
				bigImg = jn[i].url;
				list   = list +'<li><a class="cloud-zoom-gallery" name="cloud_zoom_gallery" bigimg="'+bigImg+'" href="javascript:;" rel="useZoom:\'bigimg_view\',smallImage:\''+bigImg+'\'"><img src="'+bigImg+'" alt="'+jn[i].name+'"></a>';
			};
			turner= '<a class="turner prev" href="javascript:;" style="display:none;"></a><a class="turner next" href="javascript:;" style="display:none;"></a>';
			$list.append('<ul>'+list+'</ul>');
			$list.append(turner);
			$view.append('<a class="cloud-zoom" name="cloud_zoom" id="bigimg_view" rel="adjustY:0,adjustX:5" bigimg="'+jn[0].url+'" href="javascript:;"><img alt="'+jn[0].name+'" class="view" src="'+jn[0].url+'"></a>');
			if($list.attr("create")=="true"){
				$gallery.append($view);
				$gallery.append($list);
			};
			$prev = $gallery.find(".prev");
			$next = $gallery.find(".next");
			gaW   = parseInt($gallery.find(".gallery-list").css("width"));
			liW   = parseInt($gallery.find("li").css("width")) + parseInt($gallery.find("li").css("margin-right"));
			vNum  = parseInt(gaW/liW);
			if(vNum<jn.length){
				$gallery.find(".gallery-list").hover(
				function(){
					if($prev.attr("valid")!="0"){$prev.show();};
					if($next.attr("valid")!="0"){$next.show();};
				},
				function(){$prev.hide();$next.hide();}
				);
			};
			$prev.click(function(){
				var n = parseInt($gallery.find("li[hide='1']").length);
				var m = parseInt($gallery.find("li[hide!='1']").length);
				if(n>0){n = n-1};
				$gallery.find("li:eq("+n+")").attr("hide",0).show(200);
				$gallery.find("li:eq("+(n-1)+")").attr("hide",0).show(200);
				if((m+2)>vNum){
					$next.attr("valid",1).show(200);
				};
				if(n<2){
					$prev.attr("valid",0).hide(200);
				};
			});
			$next.click(function(){
				var n = parseInt($gallery.find("li[hide='1']").length);
				var m = parseInt($gallery.find("li[hide!='1']").length);
				if(m>vNum){
					$gallery.find("li:eq("+n+")").attr("hide",1).hide(200);
					$gallery.find("li:eq("+(n+1)+")").attr("hide",1).hide(200);
				};
				if((m-vNum)<=2){
					$next.attr("valid",0).hide(200);
				};
				if(n>0){
					$prev.attr("valid",1).show(200);
				};
			});
		};
	};
	this.click = function(){
		$gallery.find(".gallery-list").find("a").click(function(){
			$gallery.find(".cloud-zoom").find("img").attr("src",$(this).attr("bigimg"));
			$(this).parents("ul").children("li").removeClass("current");
			$(this).parent("li").addClass("current");
		});
	};
	
	//OW.gallery.cloudZoom('.cloud-zoom,.cloud-zoom-gallery');
	this.cloudZoom = function(obj){
		$(obj).CloudZoom();
	};
};

//用户
function memberClass(){
	var THIS = this;
	this.forgetPassword = function(opt){
		var $form        = opt.form,
		$username        = opt.username,
		$verifycode      = opt.verifycode,
		$verifycodeValue = opt.verifycodeValue,
		$btn             = opt.btn;
		OW.verifyCode({boxer:$verifycode});
		OW.verifyCodeValueBlur($verifycodeValue);
		OW.verifyCodeValueFocus($verifycodeValue,$verifycode);
		OW.enterClick(function(){
			$btn.click();
		});
		$btn.click(function(){
			var valid = true,
			$verifycodeName = $verifycode.find("input[name='verifycode_name']"),
			url= OW.sitePath +"ow-includes/ow.ajax.member.asp?ctl=member&act=forget_password",
			us = OW.trim($username.val()),
			vv = OW.parseVerifyCode($verifycodeValue.val()),
			vn = OW.trim($verifycodeName.val());
			$username.val(us);
			$verifycodeValue.val(vv);
			if(OW.isNull(us)){valid = false; $username.focus();};
			if(OW.isNull(vv) && valid){ valid = false; $verifycodeValue.focus();};
			if(valid){
				var $dialog = OWDialog().posting().position();
				
				OW.ajax({
					url:url,data:"username="+escape(us)+"&verifycode_name="+vn+"&verifycode_value="+vv,
					success:function(){
						$form.html('<div class="success-tip">系统已成功发送了一封关于找回密码的邮件到您的账户邮箱，请注意查收！<br>按邮件的说明即可重新设置您的登陆密码。</div>')
						$dialog.close();
					},
					failed:function(msg){
						OW.verifyCode({boxer:$verifycode});
						$verifycodeValue.val("").focus();
						$dialog.error('亲，提交失败，请查看以下错误信息',msg).position().timeout(5);
					}
				});
			};
		});
	};
	this.forgetPasswordReset = function(opt){
		var uid          = opt.uid,
		username         = opt.username || "",
		hash             = opt.hash,
		$form            = opt.form,
		$password        = opt.password,
		$repassword      = opt.repassword,
		$verifycodeValue = opt.verifycodeValue,
		$verifycode      = opt.verifycode,
		$btn             = opt.btn;
		OW.verifyCode({boxer:$verifycode});
		OW.verifyCodeValueBlur($verifycodeValue);
		OW.verifyCodeValueFocus($verifycodeValue,$verifycode);
		OW.enterClick(function(){$btn.click();});
		$btn.click(function(){
			var valid   = true,
			closeDialog = true,
			$dialog     = OWDialog().posting().position();
			$verifycodeName = $verifycode.find("input[name='verifycode_name']"),
			url= OW.sitePath +"ow-includes/ow.ajax.member.asp?ctl=member&act=forget_password_reset",
			pw = OW.trim($password.val()),
			rp = OW.trim($repassword.val()),
			vv = OW.parseVerifyCode($verifycodeValue.val()),
			vn = OW.trim($verifycodeName.val());
			$password.val(pw);
			$repassword.val(rp);
			$verifycodeValue.val(vv);
			if(OW.isNull(pw)){valid = false; $password.focus();};
			if(OW.isNull(rp) && valid){ valid = false; $repassword.focus();};
			if(OW.isNull(vv) && valid){ valid = false; $verifycodeValue.focus();};
			if((pw != rp) && valid){
				valid = false;
				closeDialog = false;
				$dialog.error("两次输入的密码不一致，请重新输入！").position().timeout(2);
				$repassword.addClass("text-err").val("").focus();
			};
			if(valid){
				OW.ajax({
					url:url,data:"uid="+escape(uid)+"&hash="+escape(hash)+"&password="+escape(pw)+"&verifycode_name="+vn+"&verifycode_value="+vv,
					success:function(){
						OW.cookie.setCookie("last_login_user",username);
						$dialog.success('亲，您已成功设置新密码！').position().timeout(3);
						OW.redirect(OW.loginUrl,2);
					},
					failed:function(msg){
						OW.verifyCode({boxer:$verifycode});
						$verifycodeValue.val("").focus();
						$dialog.error('亲，提交失败，请查看以下错误信息',msg).position().timeout(4);
					}
				});
			}else{
				if(closeDialog){$dialog.close();};
			};
		});
	};
	this.isLogined = function(){
		var url = OW.sitePath +"ow-includes/ow.ajax.member.asp?ctl=member&act=is_logined";
		OW.ajax({
			url:url,data:"",async:false,
			success:function(){if(OW.ajaxData.logined=="true"){OW.logined = true;};}
		});
		return OW.logined;
	};
	this.loginInit = function(opt){
		var valid        = true,
		$username        = opt.username,
		$password        = opt.password,
		$verifycodeValue = opt.verifycodeValue,
		$verifycode      = opt.verifycode,
		username         = OW.cookie.getCookie("last_login_user") || "";
		if(username!=""){$username.val(username);};
		if(OW.trim($username.val())==""){valid = false; $username.focus();};
		if(OW.trim($password.val())=="" && valid){valid = false; $password.focus();};
		if(OW.trim($verifycodeValue.val())=="" && valid){
			valid = false;
			$verifycodeValue.focus();
			OW.verifyCode({boxer:$verifycode});
		};
		OW.verifyCode({boxer:$verifycode});
		OW.verifyCodeValueBlur($verifycodeValue);
		OW.verifyCodeValueFocus($verifycodeValue,$verifycode);
	};
	//登录成功后回调函数
	this.loginSuccessCallBack = "";
	this.login = function(opt){
		var errMsg,url   = OW.sitePath +"ow-includes/ow.ajax.member.asp?ctl=member&act=login",
		valid            = true,
		$dialog          = {},
		$btnLogin        = opt.btnLogin,
		$username        = opt.username,
		$password        = opt.password,
		$verifycode      = opt.verifycode,
		$verifycodeValue = opt.verifycodeValue,
		$verifycodeName  = $verifycode.find("input[name='verifycode_name']"),
		$remember        = opt.remember,
		$success         = opt.success ? opt.success : "",
		us = OW.trim($username.val()),
		pw = OW.trim($password.val()),
		vv = OW.parseVerifyCode($verifycodeValue.val()),
		vn = OW.trim($verifycodeName.val());
		$verifycodeValue.val(vv);
		try{
			$dialog = OWDialog({id:"d_logining"}).posting("登录中...");
		}catch(e){
			return false;
		};
		if(valid){
			OW.setDisabled($btnLogin,true);
		};
		if(us=="" && valid){
			valid = false;
			$username.addClass("text-err").focus();
		}else{
			$username.removeClass("text-err");
		};
		if(pw=="" && valid){
			valid = false;
			$password.addClass("text-err").focus();
		}else{
			$password.removeClass("text-err");
		};
		if(vv=="" && valid){
			valid = false;
			$verifycodeValue.addClass("text-err").focus();
		}else{
			$verifycodeValue.removeClass("text-err");
		};
		if(valid){
			OW.ajax({
				url:url,data:"username="+escape(us)+"&password="+escape(pw)+"&verifycode_name="+vn+"&verifycode_value="+vv,
				success:function(){
					OW.logined = true;
					if($remember.attr("checked")==true){
						OW.cookie.setCookie("last_login_user",us);
					};
					if(OW.isNull($success)){
						$dialog.success("登陆成功，正在进入管理系统...").position();
						window.location.href=OW.sitePath +"ow-ucenter/";
					}else{
						$dialog.close();
						THIS.userStatus({});
						try{THIS.loginWin.close();}catch(e){};
						try{$success.call();}catch(e){};
					};
				},
				failed:function(msg){
					OW.verifyCode({boxer:$verifycode});
					OW.setDisabled($btnLogin,false);
					$verifycodeValue.val("");
					$dialog.error('亲，很抱歉，登陆失败！请查看以下错误信息',msg).position().timeout(3);
				}
			});
		}else{
			$dialog.close();
			OW.setDisabled($btnLogin,false);
		};
	};
	this.loginWin;
	this.loginWindow = function(opt){
		var tpl = '';
		tpl = tpl +'<form class="form-horizontal form-login-window" id="login_win_form" action="javascript:;">';
        tpl = tpl +'<div class="control-group">';
        tpl = tpl +'<label for="username" class="control-label">用户名</label>';
        tpl = tpl +'<div class="controls"><input type="text" class="text text-large" name="username" placeholder="输入用户名" ></div>';
        tpl = tpl +'</div>';
        tpl = tpl +'<div class="control-group">';
        tpl = tpl +'<label for="username" class="control-label">登陆密码</label>';
        tpl = tpl +'<div class="controls"><input type="password" class="text text-large" name="password" placeholder="输入密码" ></div>';
        tpl = tpl +'</div>';
        tpl = tpl +'<div class="control-group control-group-verifycode">';
        tpl = tpl +'<label for="username" class="control-label">验证码</label>';
        tpl = tpl +'<div class="controls"><input type="text" class="text text-large text-verifycode" name="verifycode_value" placeholder="输入验证码" ><span class="verifycode" name="verifycode"></span></div>';
        tpl = tpl +'</div>';
        tpl = tpl +'<div class="control-button">';
        tpl = tpl +'<div class="controls">';
        tpl = tpl +'<label class="checkbox-line" style="display:none;"><input type="checkbox" name="remember" checked="checked">记住我</label>';
        tpl = tpl +'<button type="button" class="btn btn-large btn-primary btn-login" name="btn_login">立即登陆</button>';
        tpl = tpl +'</div>';
        tpl = tpl +'</div>';
		tpl = tpl +'<div class="control-group footer-line">';
        tpl = tpl +'<a href="'+OW.forgetPasswordUrl+'" class="forget-password" target="_blank">忘记密码？</a><a href="'+OW.regUrl+'" class="reg-member" target="_blank">立即注册会员</a><a href="javascript:;" class="unlogin-buy" name="unlogin_buy">不登录，直接购买</a>';
        tpl = tpl +'</div>';
        tpl = tpl +'</form>';
		var $success  = opt.success ? opt.success : {};
		THIS.loginWin = OWDialog({
			id:"d_login_window",
			content:tpl,
			padding:"0px",
			initialize:function(){
				if(OW.shoppingIsNeedLogin){
					$("a[name='unlogin_buy']").remove();
				}else{
					$("a[name='unlogin_buy']").click(function(){
						OW.cookie.setCookie("unlogin_buy","1");
						OW.loginWinClose = true;
						THIS.loginWin.close();
					});
				};
				OW.member.loginInit({
					username:$("#login_win_form").find("input[name='username']"),
					password:$("#login_win_form").find("input[name='password']"),
					verifycode:$("#login_win_form").find("span[name='verifycode']"),
					verifycodeValue:$("#login_win_form").find("input[name='verifycode_value']")
				});
			}
		}).position();
		OW.enterClick(function(){
			THIS.loginWindowLogining(opt);
		});
		$("#login_win_form").find("button[name='btn_login']").click(function(){
			THIS.loginWindowLogining(opt);
		});
	};
	this.loginWindowLogining = function(opt){
		OW.member.login({
			username:$("#login_win_form").find("input[name='username']"),
			password:$("#login_win_form").find("input[name='password']"),
			verifycode:$("#login_win_form").find("span[name='verifycode']"),
			verifycodeValue:$("#login_win_form").find("input[name='verifycode_value']"),
			remember:$("#login_win_form").find("input[name='remember']"),
			btnLogin:$("#login_win_form").find("button[name='btn_login']"),
			success:opt.success
		});
	};
	this.regInit = function(opt){
		var $username = opt.username;
		$username.focus();
	};
	this.reg = function(opt){
		var errMsg,url     = OW.sitePath +"ow-includes/ow.ajax.member.asp?ctl=member&act=reg",
		valid              = true,
		closeDialog        = true,
		$dialog            = OWDialog().posting('提交注册中...'),
		$btnReg            = opt.btnReg,
		$username          = opt.username,
		$email             = opt.email,
		$password          = opt.password,
		$repassword        = opt.repassword,
		$verifycode        = opt.verifycode,
		$verifycodeValue   = opt.verifycodeValue,
		$verifycodeName    = $verifycode.find("input[name='verifycode_name']"),
		$remember          = opt.remember,
		us = OW.trim($username.val()),
		em = OW.trim($email.val()),
		pw = OW.trim($password.val()),
		rp = OW.trim($repassword.val()),
		vv = OW.trim($verifycodeValue.val()),
		vn = OW.trim($verifycodeName.val());
		if(valid){
			OW.setDisabled($btnReg,true);
		};
		if(us=="" && valid){
			valid = false;
			$username.addClass("text-err").focus();
		}else{
			$username.removeClass("text-err");
		};
		if(em=="" && valid){
			valid = false;
			$email.addClass("text-err").focus();
		}else{
			$email.removeClass("text-err");
		};
		if(pw=="" && valid){
			valid = false;
			$password.addClass("text-err").focus();
		}else{
			$password.removeClass("text-err");
		};
		if(rp=="" && valid){
			valid = false;
			$repassword.addClass("text-err").focus();
		}else{
			$repassword.removeClass("text-err");
		};
		if(vv=="" && valid){
			valid = false;
			$verifycodeValue.addClass("text-err").focus();
		}else{
			$verifycodeValue.removeClass("text-err");
		};
		if((pw != rp) && valid){
			valid = false;
			closeDialog = false;
			$dialog.error("两次输入的密码不一致，请重新输入！").position().timeout(2);
			$password.addClass("text-err").val("").focus();
			$repassword.addClass("text-err").val("");
		};
		if(valid){
			OW.ajax({
				url:url,data:"username="+escape(us)+"&password="+escape(pw)+"&email="+escape(em)+"&verifycode_name="+vn+"&verifycode_value="+vv,
				success:function(){
					OW.cookie.setCookie("last_login_user",us);
					$dialog.success("亲，恭喜您，注册成功！").position().timeout(3);
					window.location.href= OW.sitePath +"ow-ucenter/reg.boot.asp";
				},
				failed:function(msg){
					OW.verifyCode({boxer:$verifycode});
					OW.setDisabled($btnReg,false);
					$verifycodeValue.val("").focus();
					$dialog.error("亲，很抱歉，注册失败，请查看以下错误提示信息",msg).position().timeout(4);
				}
			});
		}else{
			if(closeDialog){$dialog.close();};
			OW.setDisabled($btnReg,false);
		};
	};
	this.userStatusSection = "";
	this.userStatus = function(opt){
		var $status = opt.userStatusSection ? opt.userStatusSection : THIS.userStatusSection;
		THIS.userStatusSection = $status;
		OW.uid      = OW.int(OW.cookie.getCookie("uid"));
		OW.username = OW.trim(OW.cookie.getCookie("username"));
		OW.nickname = OW.trim(OW.cookie.getCookie("nickname"));
		if(OW.uid>0 && OW.username!=""){
			if(OW.runMode==2){
				OW.member.isLogined();
			};
			if(OW.logined==true){
				$status.html('<a href="'+ OW.sitePath +'ow-ucenter/" class="username">'+ OW.username +'</a><a class="logout" href="'+ OW.logoutUrl +'">退出</a>');
			};
		};
	};
};

//搜索
function searchClass(){
	this.run = function(isShop){
		var $kw = $("input[name='keywords']"),
		     kw = OW.trim($kw.val()),
			url = OW.searchUrl;
		$kw.val(kw);
		if(kw==""){
			$kw.focus();
		}else{
			url = url.replace("{\$is_shop}",isShop).replace("{\$keyword}",kw).replace("{\$page}",1);
			OW.redirect(url,0);
		};
	};
};

//商城
function shopClass(){
	var THIS = this;
	this.pid    = 0;
	this.productStock = 0;
	//this.productsCount= 0;
	this.productsData = "";
	this.MGPricesHtml = "";
	this.specCount    = 0;
	this.cartAmountSection  = {};
	this.priceSection       = {};
	this.marketPriceSection = {};
	this.myPriceSection     = {};
	this.amountInput        = {};
	this.specSection        = {};
	this.stockTipSection    = {};
	this.cartGoods          = {};
	this.cartPriceSum       = {};
	this.addToFavorite = function(gid){
		gid = OW.int(gid);
		if(!OW.logined){
			OW.member.loginWindow({
				success:function(){OW.shop.addToFavorite(gid);}
			});
			return false;
		};
		var $dialog = OWDialog().posting().shadow(false);
		OW.ajax({
			url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=add_to_favorite",
			data:"gid="+gid,
			success:function(){
				$dialog.success("成功添加至收藏夹！").timeout(2);
			},
			failed:function(msg){
				$dialog.error("亲，很抱歉，添加至收藏夹失败，请查看以下原因！",msg).timeout(4);
			}
		});
	};
	this.cartInit = function(opt){
		var amount,$json,
		$section = opt.cartAmountSection || THIS.cartAmountSection,
		data     = OW.cookie.getCookie("cart");
		THIS.cartAmountSection = $section;
		if(OW.isNull(data)){
			amount = 0;
		}else{
			$json  = OW.JSON.parse(data);
			amount = OW.int($json.length);
		};
		$section.html(amount);
	};
	this.cartPageInit = function(opt){
		var cartData,i,json,s,ss,jsons,jsonss,
		tpl          = opt.tpl,
		$checkAll    = opt.checkAll,
		$btn         = opt.btn,
		$dialog      = OWDialog().loading().position();
		THIS.cartGoods    = opt.section;
		THIS.cartPriceSum = opt.cartPriceSum;
		OW.ajax({
			url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=get_cart_goods",
			success:function(){
				$dialog.close();
				cartData = OW.ajaxData.cart;
				jsons    = "";
				if(OW.isNull(cartData)){
					OW.cookie.remove("cart");
				}else{
					json = cartData;
					for(i=0;i<json.length;i++){
						s = tpl.replace(/{\$gid}/g,json[i].gid).replace(/{\$pid}/g,json[i].pid).replace(/{\$name}/g,json[i].name).replace(/{\$link}/g,json[i].link).replace(/{\$thumbnail}/g,json[i].thumbnail).replace(/{\$spec_value}/g,json[i].spec_value).replace(/{\$moneysb}/g,OW.moneySb).replace(/{\$price}/g,json[i].price).replace(/{\$amount}/g,json[i].amount).replace(/{\$sum}/g,json[i].sum);
						ss = OW.isNull(ss) ? s : ss+s;
						jsons  = '{"gid":"'+json[i].gid+'","pid":"'+json[i].pid+'","m":"'+json[i].amount+'"}';
						jsonss = OW.isNull(jsonss) ? jsons : jsonss+","+jsons;
					};
					THIS.cartGoods.html(ss);
					THIS.cartPriceCount();
					OW.cookie.setCookie("cart","["+jsonss+"]",1000*60*60*24*12);
				};
				//一些计算
				THIS.cartGoods.find("input[name='items[]']").click(function(){
					var $ul = $(this).parent().parent();
					if($(this).attr("checked")==true){
						$ul.addClass("current");
					}else{
						$ul.removeClass("current");
						$checkAll.attr("checked",false);
					};
					THIS.cartPriceCount();
				});
				THIS.cartGoods.find("input[name='amount_input']").blur(function(){
					var m = OW.int($(this).val());
					$(this).val(m);
					THIS.cartPriceCount();
					THIS.gartGoodsAmountChange($(this).attr("gid"),$(this).attr("pid"),m);
				});
				//购买数量-1
				THIS.cartGoods.find("a[name='amount_decrease']").click(function(){
					var $m = $(this).parent().find("input[name='amount_input']"),
					m      = OW.int($m.val())-1;
					if(m<1){ m = 1 };
					$m.val(m);
					THIS.cartPriceCount();
					THIS.gartGoodsAmountChange($m.attr("gid"),$m.attr("pid"),m);
				});
				//购买数量+1
				THIS.cartGoods.find("a[name='amount_increase']").click(function(){
					var $m = $(this).parent().find("input[name='amount_input']"),
					m      = OW.int($m.val())+1;
					$m.val(m);
					THIS.cartPriceCount();
					THIS.gartGoodsAmountChange($m.attr("gid"),$m.attr("pid"),m);
				});
			},
			failed:function(msg){
				$dialog.error("亲，很抱歉，加载购物车数据失败，请刷新页面再试试！",msg).timeout(4);
			}
		});
		$checkAll.click(function(){
			var $ul   = THIS.cartGoods.find("ul[name='item']");
			$checkbox = THIS.cartGoods.find("input[name='items[]']");
			if($(this).attr("checked")==true){
				$ul.addClass("current");
				$checkbox.attr("checked",true);
			}else{
				$ul.removeClass("current");
				$checkbox.attr("checked",false);
			};
			THIS.cartPriceCount();
		});
		$btn.click(function(){
			var gid,pid,amount,json,s;
			if(!OW.logined){
				if(OW.int(OW.cookie.getCookie("unlogin_buy"))!=1){
					OW.member.loginWindow({success:function(){OW.refresh()}});
					return false;
				};
			};
			THIS.cartGoods.find("input[name='items[]']:checked").each(function(){
				gid    = OW.int($(this).attr("gid"));
				pid    = OW.int($(this).attr("pid"));
				amount = OW.int($(this).parent().parent().find("input[name='amount_input']").val());
				s      = '{"gid":"'+gid+'","pid":"'+pid+'","m":"'+amount+'"}';
				json   = OW.isNull(json) ? s : json +","+ s;
			});
			json = "["+ json +"]";
			THIS.cartOrderSubmit({data:json});
		});
	};
	this.cartPriceCount = function(){
		var amount,price,itemSum,
		sum    = 0,
		$input = THIS.cartGoods.find("input[name='items[]']:checked").parent().parent().find("input[name='amount_input']");
		$input.each(function(){
			amount = OW.int($(this).val());
			price  = OW.parseFloat($(this).attr("price"));
			itemSum= OW.parseFloat(price * amount);
			sum    = sum + itemSum;
			$(this).parent().parent().parent().parent().find("[name='item_sum']").html(OW.parsePrice(itemSum));
		});
		THIS.cartPriceSum.html(OW.parsePrice(sum));
	};
	this.cartOrderSubmit = function(opt){
		var data = opt.data,$form,$input,
		tpl      = '<form name="order_data_form" method="post"><input type="hidden" name="order_goods_data" value="" /></form>';
		if(!OW.isObjExist($("form[name='order_data_form']"))){$('body').append(tpl)};
		$form    = $("form[name='order_data_form']");
		$input   = $form.find("input[name='order_goods_data']").val(data);
		$form.attr("action",OW.orderUrl.replace("{$act}","init").replace("{$order_id}","")).submit();
	};
	this.orderInit = function(opt){
		var $order = opt.order,
		$btn       = opt.btn,
		$form      = $order.find("form");
		$btn.click(function(){
			var act,data,forms,isNeedShip,json,orderId,s,ss,$validForm,$input,$dialog,
			valid = true;
			$form.each(function(){
				$validForm = OWValidForm({form:$(this)});
				$validForm.verify();
				$validForm.getFormData();
				if(!$validForm.result){valid = false};
				forms = OW.isNull(forms) ? $validForm.formJsonData : forms +","+ $validForm.formJsonData;
			});
			if(valid){
				$dialog = new OWDialog().posting("亲，您的的订单正在提交，请稍后...").position();
				$input  = $order.find("input[name='item[goods]']");
				$input.each(function(){
					s  = '{"gid":"'+$(this).attr("gid")+'","pid":"'+$(this).attr("pid")+'","m":"'+$(this).attr("amount")+'"}';
					ss = OW.isNull(ss) ? s : ss +","+ s;
				});
				forms = OW.isNull(forms) ? "" : ","+forms;
				json  = '{"goods":['+ss+']'+forms+'}';
				data  = 'order_data='+escape(json);
				isNeedShip = OW.int($order.find("input[name='is_need_ship']").val());
				act   = isNeedShip ? "shipping" : "payment";
				OW.ajax({
					url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=order&act=order",
					data:data,
					success:function(){
						orderId = OW.ajaxData.order_id;
						OW.redirect(OW.orderUrl.replace("{$act}",act).replace("{$order_id}",orderId));
						OW.cookie.remove("cart");
						$dialog.timeout(2);
					},
					failed:function(msg){
						$dialog.error('亲，很抱歉，订单提交失败，请查看以下信息！',msg).position().timeout(4);
					}
				});
			};
		});
	};
	this.orderShipping = function(opt){
		var orderId = opt.orderId,
		costItem    = parseFloat(opt.costItem),
		costFreight = parseFloat(opt.costFreight),
		totalAmount = parseFloat(opt.totalAmount),
		$shipping   = opt.$shipping,
		$costFreight= opt.$costFreight,
		$totalAmount= opt.$totalAmount,
		$btn        = opt.$btn;
		$shipping.find("input[name='delivery']").click(function(){
			costFreight = parseFloat($(this).attr("dly_fee"));
			totalAmount = costItem + costFreight;
			$costFreight.html(OW.parsePrice(costFreight));
			$totalAmount.html(OW.parsePrice(totalAmount));
		});
		$btn.click(function(){
			var data,dlyId,
			$input  = $shipping.find("input[name='delivery']:checked"),
			$dialog = OWDialog().posting();
			if(!OW.isObjExist($input)){
				$dialog.error("请选择交付(送货)方式！").timeout(2);
				return false;
			};
			dlyId  = OW.int($input.val());
			data   = "order_id="+orderId+"&dly_id="+dlyId+"";
			OW.ajax({
				url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=order&act=shipping",
				data:data,
				success:function(){
					OW.redirect(OW.orderUrl.replace("{$act}","payment").replace("{$order_id}",orderId));
					$dialog.close();
				},
				failed:function(msg){
					$dialog.error('亲，很抱歉，交付(送货)方式提交失败，请查看以下信息！',msg).timeout(4);
				}
			});
		});
	};
	this.orderPayment = function(opt){
		var orderId = opt.orderId,
		costItem    = parseFloat(opt.costItem),
		costFreight = parseFloat(opt.costFreight),
		costPay     = parseFloat(opt.costPay),
		totalAmount = parseFloat(opt.totalAmount),
		$payment    = opt.$payment,
		$costFreight= opt.$costFreight,
		$costPay    = opt.$costPay,
		$totalAmount= opt.$totalAmount,
		$btn        = opt.$btn;
		$payment.find("input[name='payment']").click(function(){
			costPay     = parseFloat($(this).attr("pay_fee"));
			totalAmount = costItem + costFreight + costPay;
			$costPay.html(OW.parsePrice(costPay));
			$totalAmount.html(OW.parsePrice(totalAmount));
		});
		$btn.click(function(){
			var data,payId,
			$input  = $payment.find("input[name='payment']:checked"),
			$dialog = OWDialog().posting();
			if(!OW.isObjExist($input)){
				$dialog.error("请选择支付方式！").timeout(2);
				return false;
			};
			payId  = OW.int($input.val());
			data   = "order_id="+orderId+"&pay_id="+payId+"";
			OW.ajax({
				url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=order&act=payment",
				data:data,
				success:function(){
					var pay = OW.ajaxData.is_need_pay_online;
					if(pay){
						OW.redirect(OW.siteUrl +"ow-includes/ow.order_pay.asp?order_id="+orderId);
					}else{
						OW.redirect(OW.orderUrl.replace("{$act}","finish").replace("{$order_id}",orderId));
					};
					$dialog.close();
				},
				failed:function(msg){
					$dialog.error('亲，很抱歉，支付方式提交失败，请查看以下信息！',msg).timeout(4);
				}
			});
		});
	};
	this.buyRecordInit = function(opt){
		THIS.recordTpl          = opt.tpl;
		THIS.recordCountSection = opt.countSection;
		THIS.recordListSection  = opt.listSection;
		THIS.recordPagerSection = opt.pagerSection;
		THIS.recordPageSize     = opt.pageSize ? opt.pageSize : 20;
		THIS.recordPageTpl      = opt.pageTpl ? opt.pageTpl : "";
		var initGet             = opt.initGet===false ? false : true;
		if(OW.isStaticHtml()){
			OW.shop.getBuyRecord(1);
		};
	};
	this.commentInit = function(opt){
		THIS.cmtTpl          = opt.tpl;
		THIS.cmtCountSection = opt.countSection;
		THIS.cmtListSection  = opt.listSection;
		THIS.cmtPagerSection = opt.pagerSection;
		THIS.cmtPageSize     = opt.pageSize ? opt.pageSize : 20;
		THIS.cmtPageTpl      = opt.pageTpl ? opt.pageTpl : "";
		var initGet          = opt.initGet===false ? false : true;
		if(OW.isStaticHtml()){
			OW.shop.getComment(1);
		};
	};
	this.consultationInit = function(opt){
		THIS.cstTpl          = opt.tpl;
		THIS.cstCountSection = opt.countSection;
		THIS.cstListSection  = opt.listSection;
		THIS.cstPagerSection = opt.pagerSection;
		THIS.cstPageSize     = opt.pageSize ? opt.pageSize : 20;
		THIS.cstPageTpl      = opt.pageTpl ? opt.pageTpl : "";
		var initGet      = opt.initGet===false ? false : true;
		$form            = opt.form,
		$verifycode      = opt.verifycode,
		$verifycodeValue = opt.verifycodeValue,
		$submit          = opt.submit,
		$author   = $form.find("input[name='consult_author']").val(OW.nickname),
		$authorT  = $form.find("span[name='t_consult_author']"),
		$content  = $form.find("textarea[name='consult_content']"),
		$contentT = $form.find("span[name='t_consult_content']"),
		$email    = $form.find("input[name='consult_email']"),
		$emailT   = $form.find("span[name='t_consult_email']"),
		$isEmail  = $form.find("input[name='is_answer_to_email']");
		if(OW.logined){
			$author.val(OW.cookie.getCookie("username"));
			$author.parent().parent().hide();
		};
		$content.blur(function(){
			$(this).val(OW.left(OW.trim($(this).val()),250));
		});
		$isEmail.click(function(){
			if($(this).attr("checked")==true){
				$email.parent().parent("dl").show(200);
			}else{
				$email.parent().parent("dl").hide(200);
			};
		});
		OW.verifyCode({boxer:$verifycode});
		OW.verifyCodeValueBlur($verifycodeValue);
		OW.verifyCodeValueFocus($verifycodeValue,$verifycode);
		OW.enterClick(function(){
			$submit.click();
		});
		if(OW.isStaticHtml()){
			OW.shop.getConsultation(1);
		};
		$submit.click(function(){
			var valid = true,
			author    = OW.trim($author.val()),
			content   = OW.trim($content.val()),
			cstType   = OW.int($form.find("input[name='consult_type']:checked").val()),
			email     = OW.trim($email.val()),
			vn        = OW.trim($verifycode.find("input[name='verifycode_name']").val()),
			vv        = OW.trim($verifycodeValue.val());
			if(OW.isNull(content)){
				valid = false;
				$content.addClass("textarea-err").focus();
				$contentT.addClass("t-err").html("请填写咨询内容");
			}else{
				$content.removeClass("textarea-err");
				$contentT.removeClass("t-err").html("");
			};
			if(valid){
				if(OW.isNull(author)){
					valid = false;
					$author.addClass("text-err").focus();
					$authorT.addClass("t-err").html("请填写您的称呼");
				}else{
					$author.removeClass("text-err");
					$authorT.removeClass("t-err").html("");
				};
			};
			if(valid){
				if($isEmail.attr("checked")==true){
					if(OW.isNull(email)){
						valid = false;
						$email.addClass("text-err").focus();
						$emailT.addClass("t-err").html("请填写我的邮箱");
					}else{
						if(!OW.isEmail(email)){
							valid = false;
							$email.addClass("text-err").focus();
							$emailT.addClass("t-err").html("邮箱格式不正确，请填写正确的邮箱！");
						}else{
							$email.removeClass("text-err");
							$emailT.removeClass("t-err").html("");
						};
					};
				};
			};
			if(valid){
				if(OW.isNull(vv)){
					valid = false;
					$verifycodeValue.addClass("text-err").focus();
				}else{
					$verifycodeValue.removeClass("text-err");
				};
			};
			$email.val(email);
			$content.val(content);
			$email.val(email);
			if(valid){
				var url = OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=consult_post",
				data    = "cst_type="+cstType+"&cst_author="+escape(author)+"&cst_content="+escape(content)+"&cst_author_email="+escape(email)+"&gid="+OW.gid+"&verifycode_name="+vn+"&verifycode_value="+vv;
				$dialog = OWDialog().posting().follow($content);
				OW.ajax({
					url:url,data:data,
					success:function(){
						$dialog.success("亲，恭喜，咨询提交成功，请等待客服回复！").timeout(2).removeClose(true);
						OW.delay(2200,function(){
							$content.val('').focus();
							$verifycode.html('');
							$verifycodeValue.val('');
						});
					},
					failed:function(msg){
						$dialog.error('亲，很抱歉，咨询提交失败，请刷新页面再试试！',msg).timeout(4);
						$verifycodeValue.val('').focus();
						OW.verifyCode({boxer:$verifycode});
					}
				});
			};
		});
		$("img[name='avatar'][src='']").attr("src",OW.siteUrl +"ow-content/images/avatar.jpg");
		
	};
	this.goodsInit = function(opt){
		var i,
		$buy     = opt.btnBuy,
		$cart    = opt.btnCart,
		$buyCart = opt.btnBuyCart;
		THIS.pid                = OW.pid;
		THIS.priceSection       = opt.priceSection;
		THIS.marketPriceSection = opt.marketPriceSection;
		THIS.myPriceSection     = opt.myPriceSection;
		THIS.specSection        = opt.specSection;
		THIS.amountInput        = opt.amountInput;
		THIS.amountDecrease     = opt.amountDecrease;
		THIS.amountIncrease     = opt.amountIncrease;
		THIS.stockTipSection    = opt.stockTipSection;
		OW.shop.goodsSpecDisplay();
		OW.shop.getProductsData();
		//计算库存
		THIS.productStock = THIS.productsData[0].stock;
		$("[name='stock_amount']").html(THIS.productStock);
		//显示我的会员价格
		if(OW.logined){
			OW.shop.myPriceDisplay();
		};
		THIS.amountInput.blur(function(){
			var m = OW.int($(this).val());
			if(m>THIS.productStock && THIS.productStock>0){m = THIS.productStock};
			if(m<1){m = 1};
			$(this).val(m);
		});
		//购买数量-1
		THIS.amountDecrease.click(function(){
			var m = OW.int(THIS.amountInput.val())-1;
			if(m<1){m = 1};
			THIS.amountInput.val(m);
		});
		//购买数量+1
		THIS.amountIncrease.click(function(){
			var m = OW.int(THIS.amountInput.val())+1;
			if(m>THIS.productStock && THIS.productStock>0){
				m = THIS.productStock;
			};
			THIS.amountInput.val(m);
		});
		//快速购买
		$buy.click(function(){
			if(!OW.int(THIS.amountInput.val())>0){
				THIS.stockTipSection.html("亲，购买数量不能小于或为0！").show(100);
				return false;
			}else{
				THIS.stockTipSection.html("").hide(100);
			};
			if(!OW.logined){
				if(OW.int(OW.cookie.getCookie("unlogin_buy"))!=1){
					OW.member.loginWindow({success:function(){OW.refresh()}});
					return false;
				};
			};
			if(!THIS.pid>0 || (THIS.pid==OW.pid && THIS.specCount>0)){
				THIS.specSection.parent().addClass("spec-un-selected");
			}else{
				if(OW.int(THIS.amountInput.val()) > THIS.productStock){
					THIS.stockTipSection.html("亲，您所填写的购买数量超过库存了！").show(100);
					return false;
				}else{
					THIS.stockTipSection.html("").hide(100);
				};
				THIS.specSection.parent().removeClass("spec-un-selected");
				THIS.productAmount = OW.int(THIS.amountInput.val());
				THIS.cartOrderSubmit({data:'[{"gid":"'+OW.gid+'","pid":"'+THIS.pid+'","m":"'+THIS.productAmount+'"}]'});
			};
		});
		//立即购买
		$buyCart.click(function(){
			if(!OW.int(THIS.amountInput.val())>0){
				THIS.stockTipSection.html("亲，购买数量不能小于或为0！").show(100);
				return false;
			}else{
				THIS.stockTipSection.html("").hide(100);
			};
			if(!OW.logined){
				if(OW.int(OW.cookie.getCookie("unlogin_buy"))!=1){
					OW.member.loginWindow({success:function(){OW.refresh()}});
					return false;
				};
			};
			if(!THIS.pid>0 || (THIS.pid==OW.pid && THIS.specCount>0)){
				THIS.specSection.parent().addClass("spec-un-selected");
			}else{
				if(OW.int(THIS.amountInput.val()) > THIS.productStock){
					THIS.stockTipSection.html("亲，您所填写的购买数量超过库存了！").show(100);
					return false;
				}else{
					THIS.stockTipSection.html("").hide(100);
				};
				THIS.specSection.parent().removeClass("spec-un-selected");
				THIS.productAmount = OW.int(THIS.amountInput.val());
				THIS.addToCart(OW.gid,THIS.pid,THIS.productAmount);
				OW.redirect(OW.cartUrl,0);
			};
		});
		//加入购物车
		$cart.click(function(){
			if(!OW.int(THIS.amountInput.val())>0){
				THIS.stockTipSection.html("亲，购买数量不能小于或为0！").show(100);
				return false;
			}else{
				THIS.stockTipSection.html("").hide(100);
			};
			if(!OW.logined){
				if(OW.int(OW.cookie.getCookie("unlogin_buy"))!=1){
					OW.member.loginWindow({success:function(){OW.refresh()}});
					return false;
				};
			};
			if(!THIS.pid>0 || (THIS.pid==OW.pid && THIS.specCount>0)){
				THIS.specSection.parent().addClass("spec-un-selected");
			}else{
				if(OW.int(THIS.amountInput.val()) > THIS.productStock){
					THIS.stockTipSection.html("亲，您所填写的购买数量超过库存了！").show(100);
					return false;
				}else{
					THIS.stockTipSection.html("").hide(100);
				};
				THIS.specSection.parent().removeClass("spec-un-selected");
				THIS.productAmount = OW.int(THIS.amountInput.val());
				THIS.addToCart(OW.gid,THIS.pid,THIS.productAmount);
				THIS.cartInit({});
			};
		});
	};
	this.addToCart = function(gid,pid,amount){
		var i,$json,jsonString,goodsJson,
		isExist   = false,
		cartData  = OW.cookie.getCookie("cart");
		gid       = OW.int(gid);
		pid = OW.int(pid);
		amount    = OW.int(amount);
		if(OW.isNull(cartData)){
			jsonString = "[]";
			OW.cookie.setCookie("cart",jsonString,1000*60*60*24*12);
			THIS.addToCart(gid,pid,amount);
		}else{
			goodsJson = {"gid":""+gid+"","pid":""+pid+"","m":""+amount+""};
			$json     = OW.JSON.parse(cartData);
			//检查购物车中是否存在商品了
			for(i=0;i<$json.length;i++){
				if($json[i].gid == gid && $json[i].pid == pid){
					isExist = true;
					$json[i].m = OW.toString(OW.int($json[i].m) + amount);
					jsonString = OW.JSON.toString($json);
					OW.cookie.setCookie("cart",jsonString,1000*60*60*24*12);
					break;
				};
			};
			if(!isExist){
				$json.push(goodsJson);
				jsonString = OW.JSON.toString($json);
				OW.cookie.setCookie("cart",jsonString,1000*60*60*24*12);
			};
			var $dialog = OWDialog().success('成功加入购物车！').timeout(2).shadow(false);
		};
	};
	this.removeCartGoods = function(gid,pid){
		var i,$json,jsonString,
		cartData  = OW.cookie.getCookie("cart"),
		$dialog   = OWDialog().posting();
		if(!OW.isNull(cartData)){
			$json = OW.JSON.parse(cartData);
			for(i=0;i<$json.length;i++){
				if($json[i].gid == gid && $json[i].pid == pid){
					$json = OW.JSON.del(i,$json);
					jsonString = OW.JSON.toString($json);
					OW.cookie.setCookie("cart",jsonString,1000*60*60*24*12);
					break;
				};
			};
		};
		$dialog.success("亲，商品已从购物车删除！");
		OW.refresh();
	};
	this.gartGoodsAmountChange = function(gid,pid,amount){
		var i,$json,jsonString,
		cartData  = OW.cookie.getCookie("cart");
		if(!OW.isNull(cartData)){
			$json = OW.JSON.parse(cartData);
			for(i=0;i<$json.length;i++){
				if($json[i].gid == gid && $json[i].pid == pid){
					$json[i].m = OW.toString(OW.int(amount));
					jsonString = OW.JSON.toString($json);
					OW.cookie.setCookie("cart",jsonString,1000*60*60*24*12);
					break;
				};
			};
		};
	};
	//显示"我的价格"(只有已登录会员才会显示)
	this.myPriceDisplay = function(){
		OW.ajax({
			data:"gid="+escape(OW.gid)+"&pid="+escape(THIS.pid),
			url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=get_my_price",
			success:function(){
				var price = OW.ajaxData.price;
				THIS.myPriceSection.show(200);
				THIS.myPriceSection.find("[name='my_price']").html(OW.parsePrice(price));
			},
			failed:function(msg){
				OWDialog().error('亲，很抱歉，获取您的专属价格数据失败，请刷新页面再试试！',msg).timeout(2);
			}
		});
	};
	//显示商品规格
	this.goodsSpecDisplay = function(){
		var $v,vs,ss,i,j,specId,specName,
		$spec     = THIS.specSection
		$data     = OW.trim($spec.attr("data")),
		dl        = '<dl spec_id="{$spec_id}"><dt>{$spec_name}</dt><dd>{$spec_value}</dd></dl>',
		html      = "";
		if($data!=""){
			$data = OW.JSON.parse($data);
			THIS.specCount = $data.length;
			for(i=0;i<$data.length;i++){
				specId   = $data[i].spec_id;
				specName = unescape($data[i].spec_name);
				ss  = dl.replace("{\$spec_name}",specName).replace("{\$spec_id}",specId);
				$v = $data[i].spec_value;
				vs = "";
				for(j=0;j<$v.length;j++){
					vs = vs +'<li spec_id="'+ specId +'" value_id="'+ $v[j].value_id +'"><a href="javascript:;" spec_id="'+ specId +'" value_id="'+ $v[j].value_id +'" value_image="'+ $v[j].value_image +'"><span>'+ unescape($v[j].value_name) +'</span></a></li>';
				};
				if(vs!=""){vs = '<ul spec_id="'+ specId +'">'+ vs +'</ul>'};
				ss   = ss.replace("{\$spec_value}",vs);
				html = html + ss;
			};
			$spec.html(html);
			$spec.find("a").click(function(){
				THIS.pid = 0;
				if($(this).parent().attr("disabled")=="true"){
					return false;
				};
				var i,j,k,
				valid        = false,
				specId       = $(this).attr("spec_id"),
				valueId      = $(this).attr("value_id"),
				$specDisplay = $("div[name='selected_spec_display']"),
				$specValue   = $specDisplay.find("[name='selected_spec_value']"),
				$json        = OW.shop.productsData;
				$(this).parent().parent().find("li").removeClass("current").attr("selected",false);
				$(this).parent().addClass("current").attr("selected",true);
				$spec.find("dl[spec_id!='"+specId+"']").find("li").removeClass("disabled").attr("disabled",false);
				var valueIds = THIS.getSelectValueId();
				if(valueIds.split(",").length==THIS.specCount){
					//alert("检查库存是否充足");
					THIS.productStock = 0;
					for(i=0;i<$json.length;i++){
						if(valueIds==$json[i].spec_value_id){
							valid = true;
							THIS.productStock = $json[i].stock;
							THIS.pid    = $json[i].pid;
							THIS.priceSection.html(OW.parsePrice($json[i].price));
							THIS.marketPriceSection.html(OW.parsePrice($json[i].market_price));
							THIS.myPriceSection.find("[name='my_price']").html(OW.parsePrice($json[i].my_price));
							THIS.MGPricesHtml = "";
							THIS.specSection.parent().removeClass("spec-un-selected");
							break;
						};
					};
					if(THIS.productStock>0){
						$("[name='stock_amount']").html(THIS.productStock);
					}else{
						$(this).parent().removeClass("current").attr("selected",false).addClass("disabled").attr("disabled",true);
					};
				};
				if(valid){
					$specValue.html(unescape($json[i].spec_value));
					$specDisplay.show(200);
				}else{
					$specValue.html("");
					$specDisplay.hide(200);
				};
				//**测试显示区
				//$("#selected_product").html(THIS.pid);
				//**测试显示区:end
			});
		};
	};
	this.getSelectValueId = function(){
		var valueId = "",
		$li = THIS.specSection.find("li[selected='true']");
		$li.each(function(){
			valueId = OW.isNull(valueId) ? $(this).attr("value_id") : valueId +","+ $(this).attr("value_id");
		});
		return valueId
	};
	this.getProductsData = function(){
		OW.ajax({
			async:false,data:"gid="+escape(OW.gid),url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=get_prodcuts_data",
			success:function(){
				OW.shop.productsData = OW.ajaxData.products_data;
			},
			failed:function(msg){
				OWDialog().error('亲，很抱歉，获取商品规格信息失败，请刷新页面再试试！',msg).timeout(2);
			}
		});
	};
	//查看各会员组价格
	this.getMGPrices = function(){
		var url   = OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=get_mg_prices",
		$mgPrices = $("div[name='member_group_prices']");
		if(OW.isNull(OW.shop.MGPricesHtml)){
			var $dialog = OWDialog().loading("正在获取价格...").position().shadow(false);
			OW.ajax({
				url:url,data:"gid="+escape(OW.gid)+"&pid="+escape(THIS.pid),
				success:function(){
					var i,s='<tr><td class="group-name">{$group}</td><td class="price">'+OW.moneySb+'{$price}</td></tr>',mgp="",msgp="",$mgp,$msgp,html="";
					$mgp  = OW.ajaxData.mgp;
					$msgp = OW.ajaxData.msgp;
					if($msgp==undefined || $msgp=="undefined"){
						$msgp = [];
					};
					html = '<table border="0" cellpadding="0" cellspacing="0" class="table-price"><thead><tr><th>会员</th><th>价格</th></tr></thead>'
					for(i=0;i<$mgp.length;i++){mgp = mgp + s.replace("{\$group}",unescape($mgp[i].group_name)).replace('{\$price}',OW.parsePrice($mgp[i].price));};
					for(i=0;i<$msgp.length;i++){msgp = msgp + s.replace("{\$group}",unescape($msgp[i].group_name)).replace('{\$price}',OW.parsePrice($msgp[i].price));};
					if(mgp!=""){mgp='<tbody class="mg">'+mgp+'</tbody>'};
					if(msgp!=""){msgp='<tbody class="msg">'+msgp+'</tbody>'};
					html = html + mgp + msgp +'</table>';
					$dialog.padding("0px").content(html);
					OW.shop.MGPricesHtml = html;
				},
				failed:function(msg){
					$dialog.error("获取会员组价格数据失败！",msg).position().timeout(2);
				}
			});
		}else{
			var $dialog = OWDialog().content(OW.shop.MGPricesHtml).shadow(false);
		};
	};
	//成交记录
	this.recordTpl          = "";
	this.recordCountSection = "";
	this.recordListSection  = "";
	this.recordPagerSection = "";
	this.recordPageSize     = 20;
	this.recordPageTpl      = "";
	this.getBuyRecord = function(page){
		var $count = THIS.recordCountSection,
		$list      = THIS.recordListSection,
		$pager     = THIS.recordPagerSection;
		page       = OW.int(page);
		var $dialog = OWDialog({id:OW.createDialogID(),shadow:false}).loading().position();
		OW.ajax({
			url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=get_buy_record",
			data:"gid="+escape(OW.gid)+"&page="+page+"&tpl="+escape(THIS.recordTpl)+"&pagesize="+THIS.recordPageSize+"&pagetpl="+escape(THIS.recordPageTpl),
			success:function(){
				$dialog.close();
				var count = OW.int(OW.ajaxData.count),
				list      = OW.ajaxData.list,
				pager     = OW.ajaxData.pager;
				$count.html(count);
				$list.hide().html(unescape(list)).show(200);
				$pager.html(unescape(pager));
			},
			failed:function(msg){
				$dialog.close();
				$list.html('亲，很抱歉，成交记录数据加载失败，请刷新页面再试试！<br>'+msg);
			}
		});
	};
	//评论
	this.cmtTpl          = "";
	this.cmtCountSection = "";
	this.cmtListSection  = "";
	this.cmtPagerSection = "";
	this.cmtPageSize     = 20;
	this.cmtPageTpl      = "";
	this.getComment = function(page){
		var $count = THIS.cmtCountSection,
		$list      = THIS.cmtListSection,
		$pager     = THIS.cmtPagerSection;
		page       = OW.int(page);
		var $dialog = OWDialog({id:OW.createDialogID(),shadow:false}).loading();
		OW.ajax({
			url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=get_comment",
			data:"gid="+escape(OW.gid)+"&page="+page+"&tpl="+escape(THIS.cmtTpl)+"&pagesize="+THIS.cmtPageSize+"&pagetpl="+escape(THIS.cmtPageTpl),
			success:function(){
				$dialog.close();
				var count = OW.int(OW.ajaxData.count),
				list      = OW.ajaxData.list,
				pager     = OW.ajaxData.pager;
				$count.html(count);
				$list.hide().html(unescape(list)).show(200);
				$pager.html(unescape(pager));
				$("img[name='avatar'][src='']").attr("src",OW.siteUrl +"ow-content/images/avatar.jpg");
				$("[name='comment_data_reply']").each(function(){if(OW.isNull($(this).find("[name='reply_content']").html())){$(this).remove();}});
				$("[name='cmt_type']").each(function(){$(this).html(commentType($(this).attr("cmt_type")))});
			},
			failed:function(msg){
				$dialog.close();
				$list.html('亲，很抱歉，评论数据加载失败，请刷新页面再试试！<br>'+msg);
			}
		});
	};
	//咨询
	this.cstTpl          = "";
	this.cstCountSection = "";
	this.cstListSection  = "";
	this.cstPagerSection = "";
	this.cstPageSize     = 20;
	this.cstPageTpl      = "";
	this.getConsultation = function(page){
		var $count = THIS.cstCountSection,
		$list      = THIS.cstListSection,
		$pager     = THIS.cstPagerSection;
		page       = OW.int(page);
		var $dialog = OWDialog({id:OW.createDialogID(),shadow:false}).loading();
		OW.ajax({
			url:OW.sitePath +"ow-includes/ow.ajax.shop.asp?ctl=goods&act=get_consultation",
			data:"gid="+escape(OW.gid)+"&page="+page+"&tpl="+escape(THIS.cstTpl)+"&pagesize="+THIS.cstPageSize+"&pagetpl="+escape(THIS.cstPageTpl),
			success:function(){
				$dialog.close();
				var count = OW.int(OW.ajaxData.count),
				list      = OW.ajaxData.list,
				pager     = OW.ajaxData.pager;
				$count.html(count);
				$list.hide(50).html(unescape(list)).show(200);
				$pager.html(unescape(pager));
				$("img[name='avatar'][src='']").attr("src",OW.siteUrl +"ow-content/images/avatar.jpg");
				$("[name='consult_data_reply']").each(function(){if(OW.isNull($(this).find("[name='reply_content']").html())){$(this).remove();}});
			},
			failed:function(msg){
				$dialog.close();
				$list.html('亲，很抱歉，咨询数据加载失败，请刷新页面再试试！<br>'+msg);
			}
		});
	};
};













