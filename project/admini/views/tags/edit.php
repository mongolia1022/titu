<h2 class="title"><?php echo $pageInfo['submenuName'] ?></h2>
<form name="form1" method="post" action="?p=<?php echo $request['p'] ?>&a=edit&n=<?php echo $request['n'] ?>" enctype="multipart/form-data">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="admintb">
    <tr class="adtbtitle">
      <td width="892"><h3>碎片标签管理：</h3>
        <a href="javascript:history.back(1)" class="creatbt">返回</a></td>
      <td width="72"><div align="right">
          <input name="submit" type="submit" value=" 保存 "  class="savebt"/>
        </div></td>
    </tr>
    <tr>
      <td colspan="2" bgcolor="#FFFFFF"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="4">
          <tr>
            <td width="57">标签名称（程序调用的标志）</td>
            <td><input type="text" name="tagName" class="txt" id="tagName" style="width:96%" value="<?php echo $tags_item->tagName ?>"></td>
          </tr>
          <tr>
            <td width="57">标签标题</td>
            <td width="90%"><input type="text" class="txt" name="title" id="title" style="width:96%" value="<?php echo $tags_item->title ?>"></td>
          </tr>
          <tr>
            <td width="57">标签内容</td>
            <td  valign="top"><?php
		  echo ewebeditor(EDITORSTYLE,'content',$tags_item->content);
		  ?></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
