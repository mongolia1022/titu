<script type="text/javascript">  
function go_search()
{
	document.getElementById('keyword').value = document.getElementById('keyword1').value;
	document.form1.submit();
}
</script>
<style type="text/css">
.txttc { width: 83%; height: 20px; padding: 3px 0 3px 10px; border: 1px solid #ddd; color: #666; }
</style>
<script language="javascript" type="text/javascript" src="../inc/js/window_custom.js"></script>
<span id="test"></span>
<form name="form1" id="form1" action="./index.php?p=<?php echo $request['p'] ?>" method="post">
  <input type="hidden" name="keyword" id="keyword">
</form>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="admintb">
  <form name="orderForm" method="post" action="./index.php?p=<?php echo $request['p'] ?>&a=ordering">
    <tr class="adtbtitle">
      <td><h3>碎片标签管理：</h3>
        <a href="?p=<?php echo $request['p'] ?>&a=create" class="creatbt">创建标签</a>
        <input type="text" id="keyword1" class="prokeyword" >
        <input type="button" value=" 搜 索 " onclick="go_search();" class="creatsb"></td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#FFFFFF"><?php echo $tags->render() ?></td>
    </tr>
  </form>
</table>
