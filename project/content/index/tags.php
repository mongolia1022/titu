<?php
/**
 * @copyright DOCCMS By grysoft QQ:767912290
 */
function doc_tags($tagName='',$style='title'){
	global $db,$tag;
	if(!in_array($style,array('title','content')))	return '$style error!';
	$sql="SELECT `".$style."` FROM ".TB_PREFIX."tags  WHERE tagName = '".$tagName."'  LIMIT 1"; 	
	$results = $db->get_var($sql);
	if($results){
		return $results;
	}else{ 
		return '暂无数据！';
	}
}