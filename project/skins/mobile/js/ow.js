/*
* author:DX.Lin <admin@openwbs.com>
* update:2014-11-05
* http://www.openwbs.com
*/
var OW = new OW_Class();
var OWDialog,OWValidForm;
OW.DIALOG_Class(this.jQuery,this);
OW.VALIDFORM_Class(this.jQuery,this);
function OW_Class(){
	var THIS = this;
	this.isClient = true;
	this.debug    = false;
	this.runMode  = 0;
	this.cacheOpen = false;
	this.htmlCacheOpen = false;
	this.isStaticHtml = function(){
		if(THIS.runMode==2){
			return true;
		}else{
			if(THIS.htmlCacheOpen){
				return true;
			}else{
				return false;
			};
		};
	};
	this.logined  = false;
	this.sitePath = "";
	this.siteUrl  = "";
	this.siteHurl = "";
	this.siteHtmlFileSuffix = "";
	this.ucenterHurl = "";
	this.searchUrl= "";
	this.loginUrl = "";
	this.logoutUrl= "";
	this.regUrl   = "";
	this.forgetPasswordUrl = "";
	this.moneySb  = "";
	this.ctl      = "";
	this.rootpath = "";
	this.urlpath  = "";
	this.page     = "";
	this.uid      = 0 ;
	this.username = "";
	this.nickname = "";
	this.ussKey   = "";
	this.gid      = 0;
	this.pid      = 0;
	this.shoppingIsNeedLogin = 1;
	this.cartUrl  = "";
	this.orderUrl = "";
	//
	this.c1t = "";
	this.c2t = "";
	this.c3t = "";
	this.c4t = "";
	//
	this.currentUrl = "";
	//前台类
	this.client  = "";
	this.link    = "";
	this.ad      = "";
	this.gallery = "";
	this.member  = "";
	this.search  = "";
	this.shop    = "";
	//
	this.cookie  = new Cookie_Class();
	this.JSON    = new JSON_Class();
	//OW.ajaxData;
	this.ajaxData = "";
	this.ajax   = function(opt){
		var $follow= opt.follow,
		async      = opt.async===false ? false : true,
		url        = opt.url,
		data       = opt.data,
		$success   = opt.success || function(){},
		$failed    = opt.failed || function(){};
		$.ajax({
			type:"post",dataType:"html",async:async,url:url+"&return_type=json&r="+OW.random(),data:data,
			error:function(XMLHttpRequest,textStatus,errorThrown){
				var ds = "";
				if(OW.debug){
					ds = ds +"<b>textStatus</b> : "+ textStatus +"<br>";
					ds = ds +"<b>errorThrown</b> : "+ errorThrown +"<br>";
					ds = ds +"<b>responseText</b> : "+ XMLHttpRequest.responseText +"<br>";
					OWDialog({id:OW.createDialogID(),content:"哎啊，服务器开小差了(或许是程序错误)，仔细看看下面的错误信息吧！<div class='server-data'>"+ ds +"</div>"}).timeout(4);
				}else{
					OWDialog({id:OW.createDialogID(),content:"哎啊，服务器开小差了(或许是程序错误)，赶紧通知网站管理员！"}).timeout(4);
				};
				$failed.call();
			},
			success:function(data){
				var i,msg,json,defaults = '{"result":"failed","message":"系统返回错误，操作失败！"}';
				json = data;
				if(OW.isNull(json)){json = defaults;};
				try{
					json = $.parseJSON(json);
				}catch(e){
					json = $.parseJSON(defaults);
				};
				OW.ajaxData = json;
				if(json.result=="success"){
					$success.call(this);
				}else{
					msg = unescape(json.message);
					if(OW.isNull(msg)){
						msg = "";
						for(i=0;i<json.messages.length;i++){msg = msg +""+ unescape(json.messages[i].message) +"<br>";};
					};
					if(OW.debug){msg = msg+"<div class='server-data'>"+data+"</div>"};
					try{$failed(msg).call(this);}catch(e){};
				};
			}
		});
	};
	//去除数组中相同的和为空的值
	this.arrayUnique = function(a){
		var i,j,k=0,exist,arr=[];
		for(i=0;i<a.length;i++){
			if($.trim(a[i])!=""){
				exist = false;
				for(j=0;j<arr.length;j++){
					if($.trim(a[i])==$.trim(arr[j]) || $.trim(arr[j])==""){
						exist = true;
					};
				};
				if(!exist){
					arr[k] = a[i];
					k = k + 1;
				};
			};
		};
		return arr;
	};
	this.bodyScrollTime  = 3600;
	this.bodyScrollClose = false;
	this.bodyScroll = function(){
		OW.bodyScrollTime = OW.bodyScrollTime - 1;
		document.documentElement.scrollTop = document.body.scrollHeight;
		if(!OW.bodyScrollClose && OW.bodyScrollTime>0){
			window.setTimeout(function(){OW.bodyScroll()},200);
		};
	};
	this.closeParentDialog = function(opt){
		var config = opt || {};
		parent.closeDialog(opt);
	};
	//返回date1与date2之间的时间差,若date1在date2之前就返回正整数
	this.dateDiff = function(interval,date1,date2){
		var objInterval = {'D':1000*60*60*24,'H':1000*60*60,'M':1000*60,'S':1000,'T':1};
        interval = interval.toUpperCase();
        var dt1 = Date.parse(date1.replace(/-/g, '/'));
        var dt2 = Date.parse(date2.replace(/-/g, '/'));
        try{
            return Math.round((dt2 - dt1) / eval('(objInterval.' + interval + ')'));
		}catch(e){
			return e.message;
        };
    };
	this.delay = function(time,fn){
		window.setTimeout(function(){fn.call()},time);
	};
	this.echoAdData = function(id,tpl){
		var d = $("#ow_ad_"+id).attr("data");
		if(!OW.isNull(d)){
			json  = OW.JSON.parse(d);
			for(i=0;i<json.length;i++){
				s = tpl;
				s = OW.rep(s,"{$i}",i+1);
				s = OW.rep(s,"{$link}",json[i].link);
				s = OW.rep(s,"{$name}",json[i].name);
				s = OW.rep(s,"{$url}",json[i].url);
				document.write(s);
			};
		};
		$("script[id='"+id+"']").remove();
	};
	//OW.echoImagesData('{$content:images}','<li><img src="{$url}" alt="{$name}"></li>');
	this.echoImagesData = function(d,tpl){
		if(!OW.isNull(d)){
			d     = OW.rep(d,"&quot;",'"');
			json  = OW.JSON.parse(d);
			for(i=0;i<json.length;i++){
				s = tpl;
				s = OW.rep(s,"{$i}",i+1);
				s = OW.rep(s,"{$name}",json[i].name);
				s = OW.rep(s,"{$url}",json[i].url);
				document.write(s);
			};
		};
	};
	//敲enter键触发的事件
	this.enterClick = function(fun){
		$(document).keydown(function(e){
			var keyCode;
			e = e ? e : (window.event ? window.event : null);
			var keyCode = e.keyCode ? e.keyCode : e.which;
			if(keyCode == 13){
				fun.call(this);
			};
		});
	};
	//取得文件名
	//带后缀名 OW.filename(filepath)
	//不带后缀 OW.filename(filepath,{exName:false})
	this.filename = function(filepath){
		var arg,o,l,n,a = filepath.split("/");
		n = a[a.length-1];
		arg = OW.filename.arguments;
		if(arg.length>1){
			o = arg[1];
			if(o.exName==false){
				l = n.lastIndexOf(".");
				if(l>0){n = OW.left(n,l);};
			};
		};
		return n;
	};
	//文件后缀名(不带.)
	this.fileExName = function(filepath){
		filepath = $.trim(filepath);
		if(filepath!=""){
			var a = filepath.split(".");
			return a[a.length-1];
		}else{
			return "";
		};
	};
	this.goBack = function(){history.go(-1);};
	this.iif = function(e,t,f){if(e){return t;}else{return f;};};
	this.int = function(s){
		if(s == "" || s == null || isNaN(s)){
			return 0;
		}else{
			return parseInt(s);
		};
	};
	this.isIE      = function(){return window.navigator.userAgent.indexOf("IE")>=0?true:false;};
	this.isFirefox = function(){return window.navigator.userAgent.indexOf("Firefox")>=0?true:false;};
	this.isWebKit  = function(){return window.navigator.userAgent.indexOf("WebKit")>=0?true:false;};
	this.isChrome  = function(){return window.navigator.userAgent.indexOf("Chrome")>=0?true:false;};
	this.isOpera   = function(){return window.navigator.userAgent.indexOf("Opera")>=0?true:false;};
	this.isEmail   = function(s){if(s.search(OW.rule("email")) != -1){return true;}else{return false;};};
	this.isFlash = function(filepath){
		var ex = OW.fileExName(filepath);
		if(ex=="swf"){return true;}else{return false;};
	};
	this.isImage = function(filepath){
		var ex = OW.fileExName(filepath);
		if(ex=="jpg" || ex=="jpeg" || ex=="gif" || ex=="png" || ex=="bmp"){return true;}else{return false;};
	};
	//是否为空
	this.isNull = function(v){
		var s = $.trim(v);
		if(s==null){return true;}else if(s=='undefined'){return true;}else if(s==''){if(s===false||s===true){return false;}else{return true;};}else{return false;};
	};
	this.isObjExist = function(obj){
		if(obj==null || obj=='undefined' || obj==undefined || obj.html()==null){return false;}else{return true;};
	};
	this.isInArray = function(arr,s){
		var r = false;
		if(arr.length>0){
			for(var i=0;i<arr.length;i++){
				if(s==arr[i]){
					r = true; break;
				};
			};
		};
		return r;
	};
	this.left = function(s,l){
		if(s=="" || s==undefined || l<1){
			return "";
		}else{
			return s.substring(0,l);
		};
	};
	this.listOrderBy = function(opt){
		var $obj = opt.obj;
		$obj.each(function(){
			var orderBy = $(this).attr("orderby"),
			url = OW.listOrderByURL(orderBy);
			if(OW.orderby==orderBy){
				$(this).addClass("current");
			}else{
				$(this).removeClass("current");
			};
			$(this).click(function(){
				OW.redirect(url);
			});
		});
	};
	this.listOrderByURL = function(orderby){
		var url = "";
		if(OW.isNull(OW.rootpath)){
			url = OW.page>0 ? OW.c2t : OW.c1t;
		}else{
			url = OW.page>0 ? OW.c3t : OW.c3t;
		};
		return url.replace("{$rootpath}",OW.rootpath).replace("{$urlpath}",OW.urlpath).replace("{$page}",OW.page).replace("{$typeid}",OW.typeid).replace("{$orderby}",orderby);
	};
	//**鼠标移出时事件*
	//onblur="OW.onblur(this,{rep:'/[^0-9a-zA-Z]*/g',length:20})"
	this.onblur = function(me,opt){
		var v = $(me).val(),rep = opt.rep,length = opt.length;
		if(rep){v = v.replace(eval(rep),"");};
		if(length){v = v.substring(0,length)};
		$(me).val($.trim(v));
	};
	this.openPage = function(url){
		window.location.href = url;
	};
	this.parseFloat = function(s){
		if(OW.isNull(s)){
			return 0;
		};
		return parseFloat(s);
	};
	//去除文本框内容两边的空格
	this.parseFormInputValue = function(opt){
		var value,$form = opt.form;
		$form.find("input").each(function(){
			value = $.trim($(this).val());
			$(this).val(value);
		});
	};
	this.parseUsername = function(username){
		return username.replace(/[^0-9a-zA-Z\.\-\_]*/g,"");
	};
	this.parseMoney = function(f){
		f = OW.parseFloat(f);
		f = f.toFixed(2);
		f = OW.parseFloat(f);
		//var s = f.toString();
//		if(s.indexOf(".")>1){
//			var i = s.split(".")[0],
//			n     = OW.int(OW.left(s.split(".")[1],2)),
//			m     = OW.int(s.split(".")[1].substring(2,3));
//			if(m>4){n = n+1};
//			f     = parseFloat(i +"."+ n);
//		};
		return f;
	};
	this.parsePrice = function(f){
		if(OW.isNull(f) || f=="0"){
			return "0.00";
		};
		f = OW.parseMoney(f);
		f = f.toFixed(2);
		//s = s.toString();
//		if(s.indexOf(".")<1){
//			s = s +".00";
//		}else{
//			if(OW.int(s.split(".")[1].length)==1){
//				s = s +"0";
//			};
//		};
		return f;
	};
	this.random = function(){return parseInt(Math.random()*100000);};
	this.redirect = function(url,time){
		time = OW.int(time);
		time = parseInt(time-1);
		if(time>0){
			$("#redirect_timeout").html(time);
			window.setTimeout(function(){OW.redirect(url,time)},1000);
		}else{
			window.location.href = url;
		};
	};
	this.refresh = function(){
		OWDialog({id:"refresh_"+OW.createDialogID(),content:"页面刷新中...",shadow:false}).padding("13px 20px").position();
		window.location.reload();
	};
	this.pageLoading = function(){
		OWDialog({id:"loading_"+OW.createDialogID(),content:"页面加载中...",shadow:false}).padding("13px 20px").position();
	};
	//OW.rep(s,"{$gid}",json[i].gid);
	this.rep = function(str,rule,s){
		if(OW.isNull(str)){return ""};
		rule = rule.replace(/\$/g,"\\$");
		return eval('str.replace(/'+rule+'/g,s)');
	};
	this.reps = function(str,s,ss){
		if(OW.isNull(str)){return ""};
		return str.replace(s,ss);
	};
	this.rule = function(type){
		switch(type){
			case 'email' : return /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			case 'domain' : return /[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+\.?/;
			case 'site_url' : return "";
			case 'img' : return 'img';
			default : return false;
		};
	};
	/**
	 * OW.setDisabled($("button[name='dialog-submit']"),true);
	   OW.setDisabled($("button[name='dialog-submit']"),false);
	 */
	this.setDisabled = function(o,v){if(v==true){o.addClass("disabled").attr("disabled",true);}else{o.removeClass("disabled").attr("disabled",false);};};
	/**
	 * 标签切换
	   OW.tabSwitch({tabbar:$(".news-header"),container:$(".news-container"),current:1});
	 */
	this.tabSwitch = function(o){
		var i      = o.current || 1,
		$tabbar    = o.tabbar,
		$container = o.container;
		$tabbar.find("[name='tab'][tab='"+i+"']").addClass("current");
		$container.find("[is_tab='true'][tab!='"+i+"']").hide();
		$tabbar.find("[name='tab']").click(function(){
			var ii = OW.int($(this).attr("tab"));
			$(this).addClass("current");
			$tabbar.find("[name='tab'][tab!='"+ii+"']").removeClass("current");
			$container.find("[is_tab='true'][tab!='"+ii+"']").hide(200);
			$container.find("[is_tab='true'][tab='"+ii+"']").show(200);
		});
	};
	this.toString = function(s){
		return s.toString();
	};
	this.trim = function(s){
		return $.trim(s);
	};
	this.verifyCode = function(opt){
		var $boxer  = opt.boxer || $("#verifycode");
		var path    = opt.path || THIS.sitePath;
		var key     = OW.random();
		$boxer.append('<i class="code-loading"></i>');
		$boxer.html('<img src="'+ path +'ow-includes/ow.verifycode.asp?key='+key+'" style="border:1px solid #888; vertical-align:top;" alt="点击刷新" /><input type="hidden" name="verifycode_name" value="'+key+'" /><a class="fresh" href="javascript:;" name="fresh">刷新</a>');
		$boxer.find("img,a[name='fresh']").click(function(){
			OW.verifyCode(opt);
		});
	};
	this.verifyCodeValueBlur = function($vv){
		$vv.blur(function(){$(this).val(OW.parseVerifyCode($(this).val()));});
	};
	this.verifyCodeValueFocus = function($vv,$vc){
		$vv.focus(function(){
			if(OW.isNull($vc.html())){OW.verifyCode({boxer:$vc});};
		});
	};
	this.parseVerifyCode = function(s){
		return OW.left(OW.trim(s).replace(/[^0-9]*/g,""),5);
	};
	//网页可视区域的高度和宽度(不包括滚动条网页区)
	this.webScreenHeight = function(){return parseInt(document.documentElement.clientHeight);};
	this.webScreenWidth = function(){
		if(OW.isFirefox() || OW.isIE() || OW.isWebKit()){
			return parseInt(document.documentElement.clientWidth)-1;
		}else{
			return parseInt(document.documentElement.clientWidth);
		};
	};
	//网页正文全文高和宽
	this.webHeight = function(){return parseInt(document.body.scrollHeight);};
	this.webWidth = function(){return parseInt(document.body.scrollWidth);};
	/**
	 * 弹出窗口
	 * 创建不重复的窗口id
	 */
	this.createDialogID = function(){
		var d = new Date();
		var id = "d"+ d.getHours().toString() + d.getMinutes().toString() + d.getSeconds().toString() + d.getMilliseconds().toString() + parseInt(Math.random()*10000).toString();
		return id;
	};
	this.dialogBigHeight = function(){
		return OW.webScreenHeight() - 48;
	};
	this.dialogBigWidth = function(){
		return OW.webScreenWidth() - 52;
	};
	this.DIALOG_Class = function($,window){
		var PRE = 'OWDialog' + (+ new Date());
		var DIALOG = function(config,ok,cancel){
			var defaults = DIALOG.defaults;
			config = config || {};
			if(typeof config === 'string' || config.nodeType === 1){
				config = {content:config};
			};
			// 合并默认配置
			for(var i in defaults){
				if(config[i] === undefined){
					config[i] = defaults[i];
					//if(i=="id"){config[i] = OW.createDialogID()}else{config[i] = defaults[i];}
				};
			};
			if(!document.getElementById(config.id)){
				if(!config.button || !config.button.push){config.button = [];};
				if(config.ok){config.button.push({id:'ok',value:config.okValue,callback:config.ok,important:true,focus:true});};
				if(config.cancel){config.button.push({id:'cancel',value:config.cancelValue,callback:config.cancel});};
				return new DIALOG.fn.constructor(config);
			};
		};
		DIALOG.fn = DIALOG.prototype = {
			constructor:function(config){
				var dom;
				this.config = config;
				this.dom = dom = this.dom || this.createHTML(config);
				this.button.apply(this,config.button);
				this.title(config.title).content(config.content).iframe(config.iframe).size(config.height,config.width).timeout(config.timeout);
				this.reset();
				this.zIndex();
				this.addEvent();
				this.dom.dialog.show();
				config.initialize && config.initialize.call(this);
				return this;
			},
			createHTML:function(c){
				$("body").append(DIALOG.template.replace(/{tpl:([^}]+)}/g,function($0,$1){
					var value = c[$1];
					return typeof value === 'string' ? value : '';
				}));
				var dom = {};
				dom.dialog  = $("#"+c.id);
				dom.shadow  = $("#"+c.id+"_shadow");
				dom.title   = $("#"+c.id+"_title");
				dom.content = $("#"+c.id+"_content");
				dom.close   = $("#"+c.id+"_close");
				dom.buttons = $("#"+c.id+"_buttons");
				dom.timeout = $("#"+c.id+"_timeout");
				if(c.shadow){$("#"+c.id+"_shadow").show();};
				if(!c.close){$("#"+c.id+"_close").hide();};
				OW.move(document.getElementById(c.id+"_titleBar"),document.getElementById(c.id));
				return dom;
			},
			button:function(){
				var This      = this;
				var $buttons  = this.dom.buttons;
				var listeners = this.Listeners = this.Listeners || {};
				var ags = [].slice.call(arguments);
				var i,value,id,isNewButton,button;
				for(i=0;i<ags.length;i++){
					val = ags[i];
					value  = val.value;
					id     = val.id || value;
					isNewButton = !listeners[id];
					button = isNewButton ? document.createElement('button') : listeners[id].button;
					button.className = 'btn';
					if(!listeners[id]){listeners[id]={};};
					if(value){$(button).html(value);};
					if(val.important){$(button).addClass("btn-primary");};
					//删除此按钮
					if(val.remove){$(button).remove();}
					if(val.callback){
						listeners[id].callback = val.callback;
					};
					button[PRE + 'callback'] = id;
					//是否无效按钮
					if(val.disabled){
						$(button).attr("disabled",true);
						$(button).addClass("disabled");
					}else{
						$(button).attr("disabled",false);
						$(button).removeClass("disabled");
					}
					//是否是新按钮
					if(isNewButton){
						listeners[id].button = button;
						$buttons.append(button);
					};
					//聚焦到此按钮
					if(val.focus){
						$(button).focus();
					};
				};
				if($buttons.find("button").length<1){$buttons.hide()};
				return this;
			},
			title:function(title){
				var $title = this.dom.title;
				if(title){
					$title.html(title);
					$title.show();
				}else{
					$title.hide();
				};
				return this;
			},
			content:function(content){
				this.dom.content.html(content);
				return this;
			},
			fontSize:function(size){
				this.dom.content.css("font-size",size);
				return this;
			},
			success:function(c){
				c = OW.isNull(c) ? "" : c;
				this.dom.content.addClass("ow-dialog-content-success").html(c);
				this.timeout(4);
				return this;
			},
			error:function(text,msg){
				var t = OW.isNull(text) ? "" : '<h5 class="error-text">'+ text +'</h5>';
				var s = OW.isNull(msg) ? "" : '<dl class="error-msg"><dt>错误信息</dt><dd>'+ msg +'</dd></dl>';
				var c = t + s;
				this.dom.content.addClass("ow-dialog-content-error").html(c);
				this.timeout(4);
				return this;
			},
			loading:function(text){
				text = OW.isNull(text) ? "亲，我正在努力加载数据，请稍候..." : text;
				this.dom.content.html('<div class="ow-dialog-loading">'+ text +'</div>');
				return this;
			},
			posting:function(text){
				text = OW.isNull(text) ? "亲，我正在提交保存数据，请稍候..." : text;
				this.dom.content.html('<div class="ow-dialog-posting">'+ text +'</div>');
				return this;
			},
			top:function(){
				var top = window,
				test = function(name){
					try {
						var doc = window[name].document;	// 跨域|无权限
						doc.getElementsByTagName; 			// chrome 本地安全限制
					}catch(e){
						return false;
					};
					return window[name].artDialog
					// 框架集无法显示第三方元素
					&& doc.getElementsByTagName('frameset').length === 0;
				};
				if(test('top')){
					top = window.top;
				} else if(test('parent')){
					top = window.parent;
				};
				return top;
			},
			iframe:function(url){
				var This = this;
				var id = this.config.id;
				if(url){
					this.dom.content.css("overflow","hidden");
					var iframe;
					iframe = This.top().document.createElement('iframe');
					iframe.src = url +"&dialog_id="+id;
					iframe.name = This.config.id+"_iframe";
					iframe.setAttribute('frameborder',0,0);
					iframe.setAttribute('frameborder',0,0);
					iframe.setAttribute('allowTransparency',true);
					iframe.setAttribute('dialog',true);
					//**
					$iframe = $(iframe);
					$iframe.addClass("ow-dialog-iframe").attr("id",""+id+"_iframe");
					This.dom.content.html(iframe);
					this.dom.iframe = iframe;
				};
				return this;
			},
			padding:function(string){
				this.dom.content.css("padding",string);
				return this;
			},
			size:function(h,w){
				var $title   = this.dom.title;
				var $buttons = this.dom.buttons;
				h = OW.int(h);
				w = OW.int(w);
				if($title.css("display")!="none"){
					h = h - OW.int($title.height());
				};
				if($buttons.css("display")!="none"){
					h = h - 40;//parseInt($buttons.height());
				};
				if(h>0){
					this.dom.content.css({height:h+"px"});
					this.dom.content.find("iframe[name='dialog-iframe']").css({height:h+"px"});
				};
				if(w>0){
					this.dom.content.css({width:w+"px"});
					this.dom.content.find("iframe[name='dialog-iframe']").css({width:w+"px"});
				}else{
					w = OW.int(OW.webScreenWidth()) - 80;
					this.dom.content.css("max-width",w+"px");
					this.dom.content.find("iframe[name='dialog-iframe']").css("max-width",w+"px");
				};
				return this;
			},
			follow:function(e){
				var $dialog = this.dom.dialog,
				$elem  = $(e),
				width  = $elem.attr("offsetWidth"),
				height = $elem.attr("offsetHeight"),
				offset = $elem.offset(),
				left   = offset.left,
				top    = offset.top;
				var dw = parseInt($dialog.width()),
				ww = OW.webScreenWidth();
				if((left+dw-20)>ww){
					left = ww - dw - 100;
				};
				$dialog.css({position:"absolute",left:left+width/2,top:top+height});
				return this;
			},
			position:function(opt){
				opt = opt || "";
				var $dialog  = this.dom.dialog;
				var $title   = this.dom.title;
				var closeW   = this.dom.close.css("display")!="none" ? parseInt(this.dom.close.width()) : 0;
				var left     = parseInt(opt.left || (OW.webScreenWidth() - parseInt($dialog.width()) - closeW)/2);
				var scrollTop= parseInt(document.documentElement.scrollTop);
				var mTop     = (OW.webScreenHeight() - parseInt($dialog.height()))/2;
				var top      = parseInt(opt.top || (scrollTop + mTop)) + 2;
				if(left<0){left=left*2;};
				if(top<10){top=10;};
				$dialog.css({position:"absolute",left:left,top:top});
				return this;
			},
			reset:function(){
				if(this.config.follow){
					this.follow(this.config.follow);
				}else{
					this.position(this.config.position);
				};
				return this;
			},
			shadow:function(show){
				if(show){
					this.dom.shadow.show();
				}else{
					this.dom.shadow.hide();
				};
				return this;
			},
			shadowBackground:function(color){
				this.dom.shadow.css("background",color);
				return this;
			},
			close:function(){
				var $dialog = this.dom.dialog;
				var bc = this.config.beforeClose;
				var ac = this.config.afterClose;
				this.removeEvent();
				if(bc && bc.call(this) === false){return this;};
				this.dom.shadow.remove();
				$dialog.remove();
				if(ac && ac.call(this) === false){return this;};
			},
			removeClose:function(isClose){
				var isC = isClose ? isClose : true;
				if(isC){
					this.dom.close.hide();
				};
			},
			click:function(id){
				var fn = this.Listeners[id] && this.Listeners[id].callback;
				return typeof fn !== 'function' || fn.call(this) !== false ? this.close() : this;
			},
			//经过time秒后关闭
			timeout:function(time){
				var This = this,
				timer = this.TIMER;
				timer && clearTimeout(timer);
				if(time!==null){
					this.dom.timeout.html(this.config.timeTip.replace("{tpl:time}",time));
					time = parseInt(time-1);
					if(time>=0){
						this.TIMER = window.setTimeout(function(){This.timeout(time);},1000);
					}else{
						This.close();
					};
				};
				return this;
			},
			//事件代理
			addEvent:function(){
				var This = this,
				$dom    = this.dom,
				$dialog = this.dom.dialog;
				$dialog.bind('click',function(event){
					var callbackID,target=event.target;
					//IE BUG
					if(target.disabled){return false;};
					if(target === $dom.close[0]){
						This.click('cancel');
						return false;
					}else{
						callbackID = target[PRE + 'callback'];
						callbackID && This.click(callbackID);
					};
				}).bind('mousedown',function(){
					//This.zIndex();
				});
			},
			//卸载事件代理
			removeEvent:function(){
				this.dom.dialog.unbind();
			},
			//多窗口拖动层
			zIndex:function(){
				var dom = this.dom,
				index = OWDialog.defaults.zIndex++;
				//设置叠加高度
				dom.shadow.css('zIndex',index+1);
				dom.dialog.css('zIndex',index+2);
				return this;
			}
		};
		DIALOG.fn.constructor.prototype = DIALOG.fn;
		DIALOG.defaults = {
			id:'dialog',//id
			title:null,//标题
			content:'<div class="ow-dialog-loading">loading ...</div>',
			iframe:null,
			close:true,//右上角的关闭是否存在
			beforeClose:null,//关闭前回调函数
			afterClose:null,//关闭后回调函数
			shadow:true,//是否有半透明遮罩层
			button:null,//自定义按钮
			ok:null,//确定按钮回调函数
			okValue:'确定',//确定按钮文本
			cancel:null,//取消按钮回调函数
			cancelValue:'取消',//取消按钮文本
			initialize:null,//对话框初始化后执行的函数
			beforeClose:null,//对话框关闭前执行的函数
			width:'auto',//内容宽度
			height:'auto',//内容高度
			padding:'15px 20px',//内容与边界填充距离
			timeout:null,//自动关闭时间
			timeTip:'<b>{tpl:time}</b> 秒后自动关闭',
			follow:null,//让对话框跟随某元素
			position:null,//位置
			zIndex:1900//对话框叠加高度值(重要：此值不能超过浏览器最大限制)
			
		};
		DIALOG.template = '<div class="ow-dialog" role="dialog" id="{tpl:id}" style="display:none;">'+
			  '<div class="ow-dialog-wrapper">'+
				  '<table border="0" cellpadding="0" cellspacing="0" class="ow-dialog-inner">'+
					'<tbody>'+
					  '<tr>'+
						'<td class="ow-dialog-header">'+
						'<div class="ow-dialog-titleBar" id="{tpl:id}_titleBar">'+
							'<div class="ow-dialog-title" id="{tpl:id}_title"></div>'+
							'<a class="ow-dialog-close" id="{tpl:id}_close" href="javascript:;"></a>'+
						'</div>'+
						'</td>'+
					  '</tr>'+
					  '<tr>'+
						'<td class="ow-dialog-main">'+
						'<div class="ow-dialog-content" id="{tpl:id}_content"></div>'+
						'</td>'+
					  '</tr>'+
					  '<tr>'+
						'<td colspan="2" class="ow-dialog-footer">'+
						'<div class="ow-dialog-buttons" id="{tpl:id}_buttons"></div>'+
						'</td>'+
					  '</tr>'+
					'</tbody>'+
				  '</table>'+
			  '</div>'+
			  '<div class="ow-dialog-timeout" id="{tpl:id}_timeout"></div>'+
			'</div>'+
			'<div class="ow-dialog-shadow" id="{tpl:id}_shadow" style="display:none;"></div>';
			
		OWDialog = DIALOG;
	};
	this.move = function(m,o){
		var x,y,s,d;
		s = o.style;
		d = document;
		m.onselectstart = function(){return false;};
		m.onmousedown = function(e){
			e = e || event;
			x = e.clientX-o.offsetLeft;
			y = e.clientY-o.offsetTop;
			d.onmousemove = function(e){
				e = e || event;
				s.left = e.clientX - x + "px";
				s.top = e.clientY - y + "px";
			};
			d.onmouseup = function(){d.onmouseup=d.onmousemove="";}
		};
	};
	//表单验证
	this.VALIDFORM_Class = function($,window){
		var VALIDFORM = function(config,ok,cancel){
			var defaults = VALIDFORM.defaults;
			config = config || {};
			if(typeof config === 'string' || config.nodeType === 1){
				config = {content:config};
			};
			// 合并默认配置
			for(var i in defaults){
				if(config[i] === undefined){
					config[i] = defaults[i];
				};
			};
			return new VALIDFORM.fn.constructor(config);
		};
		VALIDFORM.fn = VALIDFORM.prototype = {
			constructor:function(config){
				this.config   = config;
				this.result   = false;
				this.formData     = "";
				this.formJsonData = "";
				config.initialize && config.initialize.call(this);
				return this;
			},
			getFormData:function(){
				var i,json,jsons,n,v,s,ss,
				formId = this.config.form.attr("form_id"),
				$elems = this.config.form.find("input:text,input:password,input:hidden,input:radio:checked,input:checkbox:checked,textarea,select");
				$elems.each(function(){
					n  = $(this).attr("name");
					v  =  escape($(this).val());
					s  = n +"="+ v;
					ss = OW.isNull(ss) ? s : ss +"&"+ s;
					json  = '"'+n+'":"'+v+'"';
					jsons = OW.isNull(jsons) ? json : jsons +","+ json;
				});
				jsons = !OW.isNull(jsons) ? '"form_'+formId+'":{'+jsons+'}' : "";
				this.formData = ss;
				this.formJsonData = jsons;
			},
			getVerifyCodeData:function(){
				this.getVerifyCodeData = "verifycode_name="+ this.config.form.find("input[name='verifycode_name']") +"&verifycode_value="+ this.config.form.find("input[name='verifycode_value']");
			},
			verify:function(){
				var valid = true;
				var name,dtype,errmsg,value,tips,$tip,$focus,
				$form   = this.config.form;
				$elems  = $form.find("input:not(:checkbox,:radio),textarea,select");
				$radios = $form.find("input:checkbox,input:radio");
				$elems.each(function(){
					name  = $(this).attr("name");
					dtype = $(this).attr("datatype") || "";
					errmsg= $(this).attr("errmsg") || "";
					tips  = $(this).attr("tips") || "";
					value = $(this).val();
					$tip  = $form.find("span[name='t_"+name+"']");
					if(dtype=="*"){
						if(OW.isNull(value)){
							if(!OW.isObjExist($focus)){$focus = $(this)};
							$(this).focus();
							$tip.addClass("t-err").html(errmsg);
							valid = false;
						}else{
							$(this).attr("valid_focus","false");
							$tip.removeClass("t-err").html(tips);
						};
					};
				});
				$radios.each(function(){
					name  = $(this).attr("name");
					dtype = $(this).attr("datatype") || "";
					errmsg= $(this).attr("errmsg") || "";
					tips  = $(this).attr("tips") || "";
					value = $(this).val();
					$tip  = $form.find("span[name='t_"+name+"']");
					if(dtype=="*"){
						if($form.find("input[name='"+name+"']:checked").length>=1){
							$tip.removeClass("t-err").html(tips);
						}else{
							$tip.addClass("t-err").html(errmsg);
							$(this).focus();
							valid = false;
						};
					};
				});
				if(valid==false){$focus.focus()};
				this.result = valid;
			}
		};
		VALIDFORM.fn.constructor.prototype = VALIDFORM.fn;
		VALIDFORM.defaults = {
			form:null,
			initialize:null
		};
		OWValidForm = VALIDFORM;
	};
};
jQuery.fn.extend({
	delayRemove:function(time){
		var $this = this;
		$this.hide(time);
		window.setTimeout(function(){$this.remove();},time);
	}
});
/*
OW.cookie
*/
function Cookie_Class(){
	var $C = this;
	this.cookiePre     = "";//cookie前缀
	this.cookieDomain  = "";
	this.cookiePath    = "";
	this.cookieSecure  = false;
	/**
	* 参数列表顺序：name,value,expires,path,domain,secure
	OW.cookie.setCookie("myinfo","linx:1071322670:openwbs@qq.com");
	OW.cookie.setCookie("myinfo","linx:1071322670:openwbs@qq.com",1000*60*60*24*10); 1000毫秒*60秒*60分*24小时=1天
	OW.cookie.setCookie("myinfo","linx:1071322670:openwbs@qq.com",1000*60*60*24*10,"/openwbs/");
	OW.cookie.setCookie("myinfo","linx:1071322670:openwbs@qq.com",1000*60*60*24*10,"/openwbs/","openwbs.com",false);
	**/
	this.setCookie = function(){
		var args = $C.setCookie.arguments;
		var argc = $C.setCookie.arguments.length;
		var path = OW.isNull(args[4]) ? $C.cookiePath : args[4],
		domain   = OW.isNull(args[5]) ? $C.cookieDomain : args[5],
		secure   = OW.isNull(args[6]) ? $C.cookieSecure : args[6];
		if(argc < 2){return false;};
		var name = $C.cookiePre + args[0];
		var cookies = name + "=" + $C.encode(args[1]);
		if(argc >= 3){
			var date = new Date();
			date.setTime(date.getTime()+args[2]);
			cookies += "; expires=" + date.toGMTString();
		};
		cookies += ((OW.isNull(path)) ? "" : ("; path=" + path));
		cookies += ((OW.isNull(domain)) ? "" : ("; domain=" + domain));
		cookies += ((args[5] == true) ? "; secure" : "");
	    if(cookies.length <= 4000){
			document.cookie = cookies;
			return true;
		}else{
			if(confirm("Cookie exceeds 4KB and will be cut!")){
				document.cookie = cookies;
				return true;
			};
		};
	};
	//OW.cookie.getCookie("my");
	//OW.cookie.getCookie("my:name");
	this.getCookie = function(name){
		var subname = "";
		if(name.indexOf(":")>0){
			subname = name.split(":")[1];
			name    = name.split(":")[0];
		};
		var nameEQ = $C.cookiePre + name + "=";
        var arr = document.cookie.split(';');
		var cookie,cookieValue,cookieArray;
		for(var i=0;i<arr.length;i++){
			//cookie = arr[i];
			cookie = unescape(arr[i]);
			while(cookie.charAt(0)==' '){cookie=cookie.substring(1,cookie.length)}
			if(cookie.indexOf(nameEQ) == 0){
				cookieValue = $C.decode(cookie.substring(nameEQ.length,cookie.length));
				//alert(cookieValue);
				if(subname!=""){
					cookieArray = cookieValue.split("&");
					cookieValue = "";
					for(var ii=0;ii<cookieArray.length;ii++){
						if(subname==cookieArray[ii].split("=")[0]){
							cookieValue=cookieArray[ii].split("=")[1];
						};
					};
				};
				return cookieValue;
			};
		};
		return "";
	};
	this.remove = function(name){
		$C.setCookie(name,"");
	};
	this.encode = function(s){ return unescape(s);};
	this.decode = function(s){ return unescape(unescape(s));};
};

/*
OW.JSON
*/
function JSON_Class(){
	//JSON字符串转换为JSON对象
	//OW.JSON.parse()
	this.parse = function(s){
		//return JSON.parse(s);
		return $.parseJSON(s);
	};
	//JSON对象转换为JSON字符串
	//OW.JSON.toString()
	this.toString = function(o){
		return JSON.stringify(o);
	};
	this.toJSONString = function(o){
		return JSON.stringify(o);
	}
	//JSON删除操作 OW.JSON.del(0,json.theskus)等于delete json.theskus[0];
	this.del = function(index,dataArray){
		index=parseInt(index);
		var len=dataArray.length;
		for(var i=0;i<len;i++){
			if(i==index){
				for(var j=i+1;j<len;j++){
					dataArray[j-1]=dataArray[j];//当前索引值后的数据都向前移
				};
				dataArray.length--;//移完之后,自身长度减1
			};
		};
		return dataArray;
	};
};

/*
http://www.JSON.org/json2.js
2010-11-17
*/
this.JSON = {};
(function(){
    "use strict";
    function f(n){return n < 10 ? '0' + n : n;};
    if(typeof Date.prototype.toJSON !== 'function'){
        Date.prototype.toJSON = function(key){
            return isFinite(this.valueOf()) ? this.getUTCFullYear() + '-' + f(this.getUTCMonth() + 1) + '-' + f(this.getUTCDate()) + 'T' + f(this.getUTCHours())     + ':' + f(this.getUTCMinutes()) + ':' + f(this.getUTCSeconds()) + 'Z' : null;
        };
        String.prototype.toJSON = Number.prototype.toJSON = Boolean.prototype.toJSON = function(key){return this.valueOf();};
    };
    var cx = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
        escapable = /[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,
        gap,indent,meta = {'\b': '\\b','\t': '\\t','\n': '\\n','\f': '\\f','\r': '\\r','"' : '\\"','\\': '\\\\'},rep;
    function quote(string){
        escapable.lastIndex = 0;
        return escapable.test(string) ? '"' + string.replace(escapable,function(a){var c = meta[a];return typeof c === 'string' ? c : '\\u' + ('0000' + a.charCodeAt(0).toString(16)).slice(-4);}) + '"' : '"' + string + '"';
    };
    function str(key, holder){
        var i,k,v,length,mind = gap,partial,value = holder[key];
        if(value && typeof value === 'object' && typeof value.toJSON === 'function'){value = value.toJSON(key);};
        if(typeof rep === 'function'){value = rep.call(holder, key, value);};
        switch (typeof value){
        case 'string':
            return quote(value);
        case 'number':
            return isFinite(value) ? String(value) : 'null';
        case 'boolean':
        case 'null':
            return String(value);
        case 'object':
            if(!value){ return 'null'; }
            gap += indent;
            partial = [];
            if(Object.prototype.toString.apply(value) === '[object Array]'){
                length = value.length;
                for(i = 0; i < length; i += 1){partial[i] = str(i, value) || 'null';};
                v = partial.length === 0 ? '[]' : gap ? '[\n' + gap + partial.join(',\n' + gap) + '\n' + mind + ']' : '[' + partial.join(',') + ']';
                gap = mind;
                return v;
            };
            if(rep && typeof rep === 'object'){
                length = rep.length;
                for(i = 0; i < length; i += 1){k = rep[i];if(typeof k === 'string'){v = str(k, value);if(v){partial.push(quote(k) + (gap ? ': ' : ':') + v);};};};
            }else{
                for(k in value){if(Object.hasOwnProperty.call(value, k)){v = str(k, value);if(v){partial.push(quote(k) + (gap ? ': ' : ':') + v);};};};
            };
            v = partial.length === 0 ? '{}' : gap ? '{\n' + gap + partial.join(',\n' + gap) + '\n' + mind + '}' : '{' + partial.join(',') + '}';
            gap = mind;
            return v;
        };
    };
    if(typeof JSON.stringify !== 'function'){
        JSON.stringify = function(value, replacer, space){
            var i;gap = '';
            indent = '';
            if(typeof space === 'number'){for(i = 0; i < space; i += 1){indent += ' ';}}else if(typeof space === 'string'){indent = space;}
            rep = replacer;
            if(replacer && typeof replacer !== 'function' && (typeof replacer !== 'object' || typeof replacer.length !== 'number')){throw new Error('JSON.stringify');};
            return str('', {'': value});
        };
    };
    if(typeof JSON.parse !== 'function'){
        JSON.parse = function(text, reviver){
            var j;
            function walk(holder, key){
                var k, v, value = holder[key];
                if(value && typeof value === 'object'){
                    for(k in value){if(Object.hasOwnProperty.call(value, k)){v = walk(value, k);if(v !== undefined){value[k] = v;}else{delete value[k];};};};
                };
                return reviver.call(holder, key, value);
            };
            text = String(text);
            cx.lastIndex = 0;
            if(cx.test(text)){text = text.replace(cx,function(a){return '\\u' + ('0000' + a.charCodeAt(0).toString(16)).slice(-4);});};
            if(/^[\],:{}\s]*$/.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, '@').replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, ']').replace(/(?:^|:|,)(?:\s*\[)+/g, ''))){
                j = eval('(' + text + ')');
                return typeof reviver === 'function' ? walk({'': j}, '') : j;
            };
            throw new SyntaxError('JSON.parse');
        };
    };
}());
function closeDialog(opt){
	var config  = opt || {};
	var refresh = config.refresh===true ? true : false;
	var $iframe = $("iframe[dialog='true']");
	var id = $iframe.attr("id").replace("_iframe","");
	$("#"+id+",#"+id+"_shadow").delayRemove(100);
	if(refresh){OW.refresh();};
};


