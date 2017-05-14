<?php
/**
 * @author grysoft <767912290@qq.com>
 * @copyright (c) 2016, www.doccms.com, grysoft :)
 * May you share freely, never taking more than you give.
 */
session_start();
error_reporting(E_ALL ^ E_NOTICE);
header('Content-Type: text/html; charset=utf-8');
define('THISISADMINI',true);
$dirName=dirname(__FILE__);
define('SITELANGUAGE','cn');
if(empty($_SESSION[TB_PREFIX.'doclang'])){
	$_SESSION[TB_PREFIX.'doclang'] = SITELANGUAGE;
}
if(!empty($_GET['lang']) && in_array($_GET['lang'],array('cn','en'))){
	$_SESSION[TB_PREFIX.'doclang'] = $_GET['lang'];
}
$docConfigLock = $dirName.'/config/doccms.lock';
$docConfig=$dirName.'/config/doc-config-'.$_SESSION[TB_PREFIX.'doclang'].'.php';
if(!is_file($docConfig)||filesize($docConfig)==0||filesize($docConfig)==3||!is_file($docConfigLock)){require_once($dirName.'/inc/nosetup/setup.html');exit;}else{require_once($docConfig);}
require_once(ABSPATH.'/admini/config/qd-config.php');
require_once(ABSPATH.'/loader/load.php');