<?php
function index()
{
	global $tags,$db,$request;
	if($_POST)
	{
		$_SESSION[TB_PREFIX.'keyword'] = $request['keyword'];
		!checkSqlStr($request['keyword'])? $request['keyword'] = $request['keyword'] : exit('非法字符');	
		$sql = 'SELECT * FROM `'.TB_PREFIX.'tags` WHERE title LIKE "%'.$request['keyword'].'%" AND channelId='.$request['p'];
	}
	else if($_SESSION[TB_PREFIX.'keyword'] && $request['mdtp'])
	{
		$request['keyword'] = $_SESSION[TB_PREFIX.'keyword'];		
		$sql = 'SELECT * FROM `'.TB_PREFIX.'tags` WHERE title LIKE "%'.$request['keyword'].'%" AND channelId='.$request['p'];
	}
	else
	{
		$_SESSION[TB_PREFIX.'keyword'] = '';
		$sql = 'SELECT * FROM `'.TB_PREFIX.'tags` WHERE channelId='.$request['p'];
	}
	$sb = new sqlbuilder('mdt',$sql,'id DESC',$db,20);
	
	$url=array('delete'=>'./index.php?p='.$request['p'].'&a=deleteAll','move'=>'./index.php?p='.$request['p'].'&a=move');
	$sql = "SELECT * FROM `".TB_PREFIX."menu` WHERE type='tags' AND id!=".$request['p'];
	$move_options = $db->get_results($sql);
	$tags = new DataTable($sb,'标签列表页面',true,$url,$move_options);
	$tags->add_col('编号','id','db',40,'"$rs[id]"');
	$tags->add_col('标签名称','tagName','db',0,'"<a href=\"./index.php?a=edit&p=$rs[channelId]&n=$rs[id]\">$rs[tagName]</a>"');
	$tags->add_col('标签标题','title','db',0,'"$rs[author]"');
	$tags->add_col('调用方法','func','text',400,'"&#60;?php echo doc_tags(\'$rs[tagName]\',\'title\')?&#62;//content为调用内容"');
	$tags->add_col('时间','dtTime','db',140,'');
	$tags->add_col('操作','edit','text',140,'"<a href=\"./index.php?a=destroy&p=$rs[channelId]&n=$rs[id]\" onclick=\"return confirm(\'您确认要删除该标签?一旦删除，将不可恢复。\');\">[删除]</a>|<a href=\"./index.php?a=edit&p=$rs[channelId]&n=$rs[id]\">[修改]</a>"');
}
function edit()
{
	global $tags_item,$db,$request;
	if(empty($request['title']))
	{
		$sql='SELECT * FROM '.TB_PREFIX.'tags WHERE id='.$request['n'];
		$tags_item = $db->get_row($sql);
	}
	else
	{
		$sql='SELECT count(id) FROM '.TB_PREFIX.'tags WHERE tagName="'.$request['tagName'].'" AND id <> '.$request['n'];
		if($db->get_var($sql)>0)
		{
			alertGo('标签名称不可重复');
		}
		$tags = new tags();
		$tags->get_request($request);
		$tags->id=$request['n'];
		$tags->channelId=$request['p'];
		$tags->content	= $request['content'];
		$tags->save();
		redirect_to($request['p'],'index');
	}
}
function create()
{
	global $result,$db,$request;
	if($_POST)
	{
		$sql='SELECT count(id) FROM '.TB_PREFIX.'tags WHERE tagName="'.$request['tagName'].'"';
		if($db->get_var($sql)>0)
		{
			alertGo('标签名称不可重复');
		}					
		$tags = new tags();
		$tags->addnew();
		$tags->get_request($request);	
		$tags->channelId=$request['p'];
		$tags->content	=$request['content'];	
		$tags->dtTime	= date('Y-m-d H:i:s');	
		$tags->save();
		//数据更新后提交到搜索引擎
		docPing($request['p'],mysql_insert_id());
		redirect_to($request['p'],'index');
	}
}
function destroy()
{
	global $db,$request;
	if(!empty($request['n']))
	{
		$sql='DELETE FROM '.TB_PREFIX.'tags WHERE id='.$request['n'].' LIMIT 1';
		if($db->query($sql))
		{
			redirect_to($request['p'],'index');
		}
		else {
			echo '删除失败！';
		}
	}
}
function ordering()
{
	global $db,$request;
	$ordering = $request['ordering'];
	foreach($ordering as $key=>$value)
	{
		if(empty($value))$value=0;
		$sql ='UPDATE '.TB_PREFIX.'tags SET ordering='.$value.' WHERE id='.$key;
		$db->query($sql);
	}
	redirect_to($request['p'],'index');
}
function deleteAll()
{
	global $db,$request;
	$delete_date = explode(",",$request['ids']);
	foreach($delete_date as $value)
	{
		$sql="SELECT guid FROM ".TB_PREFIX."tags WHERE id=$value LIMIT 1";
		$guid = $db->get_var($sql);
		$sql="DELETE FROM ".TB_PREFIX."tags WHERE id=$value LIMIT 1";
		$db->query($sql);
	}
	redirect_to($request['p'],'index');
}
function move()
{
	global $db,$request;
	$move_cate=$request['move_to'];
	$delete_date = explode(",",$request['ids']);
	foreach($delete_date as $value)
	{
		$sql = "UPDATE ".TB_PREFIX."tags SET channelId=".$move_cate." WHERE id=$value LIMIT 1";
		$db->query($sql);
	}
	redirect_to($request['p'],'index');
}
?>