<?php
function_exists('date_default_timezone_set') && @date_default_timezone_set('Etc/GMT-'.TIMEZONENAME);
require_once(ABSPATH.'/inc/class.database.php');
require_once(ABSPATH.'/inc/function.php');
$the_host = trim($_SERVER['HTTP_HOST']);
if(isMobile() && MOBILENAME){
    if($the_host !== MOBILEURL && MOBILEURL){

		header('HTTP/1.1 301 Moved Permanently');	//发出301头部 
    	header('Location: http://'.MOBILEURL);		//跳转到移动域名
	}
	$stylename = MOBILENAME;
}else{
	$stylename = STYLENAME;
}
$_REQUEST = cleanArrayForMysql($_REQUEST);
$_GET     = cleanArrayForMysql($_GET);
$_POST    = cleanArrayForMysql($_POST);
$request  = $_REQUEST;
$menu_arr=array();

$uri=urldecode($_SERVER['REQUEST_URI']);
$uri=preg_replace("/\?[\S\s]+$/i",'',$uri);
$uri=preg_replace("/[\s\'\"]/",'',$uri);
$url_split=explode('/',$uri);
$pathCount = substr_count(ROOTPATH,'/')+1;
$module  = empty($url_split[$pathCount+0]) || substr_count($url_split[$pathCount+0],'.')>0? '' : $url_split[$pathCount+0];
$action  = empty($url_split[$pathCount+1]) || substr_count($url_split[$pathCount+1],'.')>0? 'index' : $url_split[$pathCount+1];
$string  = explode('.',end($url_split));
$prm  = substr_count(end($url_split),'.') ? explode('-',$string[0]) : '';
if(count($prm)>1)
{
	for($i=0;$i<count($prm);$i++)
	{
		$i%2?$request[$prm[$i-1]] = $prm[$i]:'';
	}
}
$action = $request['r'] && $action == 'index'?'view':$action; //无action 则默认为view
//写入Session
if(empty($_SESSION[TB_PREFIX.'doclang'])){
	$_SESSION[TB_PREFIX.'doclang'] = SITELANGUAGE;
}
if(!empty($request['lang'])){
	$_SESSION[TB_PREFIX.'doclang'] = $request['lang'];
}
//写路由语句
if(!empty($module) && $module != 'search')
	$request['p'] = getIdByMenuName($module);
elseif($module == 'search')
	$request['m'] = 'search';
elseif($module == 'pay')
	$request['m'] = 'pay';

$params['id']		=	$request['p']		=isset($request['p'])?intval($request['p']):0;
$params['cid']		=	$request['c']		=isset($request['c'])?intval($request['c']):0;
$params['args']		=	$request['r']		=isset($request['r'])?intval($request['r']):0;
$params['i']		=	$request['i']		=isset($request['i'])?intval($request['i']):0;
						$request['comment']	=isset($request['comment'])?intval($request['comment']):0;
						$request['mdtp']	=isset($request['mdtp'])?intval($request['mdtp']):0;					
$menu_arr=get_model_type($params['id']);

$request['m']		=	!isset($request['m'])?'':$request['m'];
$params['model']	=	empty($request['m'])?$menu_arr['type']:$request['m'];
$request['a']		=	empty($request['a'])?$action:$request['a'];
$params['action']	=	empty($request['a'])?'index':$request['a'];
$params['related_common'] =	empty($menu_arr['related_common'])?$params['model']:$menu_arr['related_common'];

$request['a']=='phpinfo'?exit:'';
$go_404 = $tag['path.root'].'/404.html';

//引入程序主文件
$loadFile=array(
	0=>'/inc/common.php',
	1=>'/inc/class.pager_custom.php',
	2=>'/content/common/common.php',
	3=>'/inc/class.seo.php',
	4=>'/config/doc-global.php',
	5=>'/content/index/__sys.php',
);
foreach($loadFile as $k=>$v){
	require_once(ABSPATH.$v);
}
unset($loadFile);
HTML_load();
//权限判断
if($params['model']!='user' || $params['model']!='index'){
	$model_arr=array( 'article' , 'guestbook' , 'jobs' , 'order' , 'webmap' , 'poll' ,  'mapshow');
	if(intval($_SESSION[TB_PREFIX.'user_roleId'])<intval($menu_arr['level'])&&($params['action']=='view' ||$params['action']=='download' || in_array($menu_arr['type'],$model_arr))){
		redirect(sys_href(0,'user'));exit();
	}
}
//加载 模块主程序
$controller=ABSPATH.'/content/'.$params['model'].'/index.php';
if(is_file($controller)){
	require_once($controller);	
	require_once(ABSPATH.'/content/comment/index.php');
	//执行 Action	
	empty($params['action'])?index():(function_exists($params['action'])?$params['action']():redirect($go_404));
}
else{
	redirect($go_404);
}
//加载 模板风格文件
$part_path=ABSPATH.'/skins/'.$stylename.'/';
$part_common_path=ABSPATH.'/skins/'.$stylename.'/common/';
$loadSkinIndex=$part_path.'index.php';
$loadSkinCommon=$part_path.'common.php';
$loadSkinUserCommon=$part_common_path.'common_user.php';
$loadSkinSearchCommon=$part_common_path.'common_search.php';
$loadSkinOtherCommon=$part_common_path.$params['related_common'];

switch ($params['related_common']){
	case 'index':
		if(is_file($loadSkinIndex))$include=$loadSkinIndex;
		break;
	case 'user':
		if(is_file($loadSkinUserCommon))
			$include=$loadSkinUserCommon;
		else
			$include=$loadSkinCommon;
		break;
	case 'search':
		if(is_file($loadSkinSearchCommon))
			$include=$loadSkinSearchCommon;
		else
			$include=$loadSkinCommon;
		break;
	default:
		if(is_file($loadSkinOtherCommon)) 
			$include=$loadSkinOtherCommon;
		elseif(is_file($loadSkinCommon))
			$include=$loadSkinCommon;
		else
			exit ('<span style="color:RED"><strong>pager error!</strong></span>');
		break;
}
if(!is_file($include))exit('尚未选择模板');
PAGE_load($include);
unset($request);
unset($params);
unset($tag);
unset($path);
unset($data);