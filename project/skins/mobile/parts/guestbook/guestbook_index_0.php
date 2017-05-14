<?php
    // 为方便并保证您以后的快速升级 请使用SHL提供的如下全局数组
	
	// 数组定义/config/doc-global.php
	
	// 如有需要， 请去掉注释，输出数据。
	/*
	echo '<pre>';
		print_r($tag);
	echo '</pre>';
	*/
?>

<script language="javascript">
<!--
function validator()
{
 	if(document.getElementById('name').value=="")
	{alert("请输入您的姓名!"); document.getElementById('name').focus(); return false;}
	if(document.getElementById('telephone').value=="")
	{alert("请输入您的联系电话!");document.getElementById('telephone').focus();return false;}
	if(document.all['content'].value=="")
	{alert("请输入您的留言内容!");document.all['content'].focus();return false;}
}
-->
</script>
<form id="form1" name="form1" method="post" action="<?php echo sys_href($params['id'],'form_action');?>" onsubmit="return validator()">
<div class="om-goods-consultation">
                    
                    
                    <div class="section post-section" id="post_consultation_form">
                        <div class="header">亲，需要咨询吗</div>
                        <div class="section">
                            <dl>
                                <dt>您的称呼：</dt>
                                <dd class="input-text"><input type="text" class="text text-large" name="name" value=""><span name="t_consult_author" class="t-normal"></span></dd>
                            </dl>
                            <dl>
                                <dt>咨询内容</dt>
                                <dd class="input-text"><textarea class="textarea" name="content"></textarea><span name="t_consult_content" class="t-normal"></span></dd>
                            </dl>                            
                            <dl class="get-answer-email">
                                <dt>我的邮箱(接收客服的回复)</dt>
                                <dd class="input-text"><input type="text" class="text text-large" name="contact" value=""><span name="t_consult_email" class="t-normal"></span></dd>
                            </dl>
                            <?php echo sys_push('','<dl>
                                <dt>{name}</dt>
                                <dd class="input-text"><input type="text" class="text text-large" name="custom[]" value=""><span name="t_consult_author" class="t-normal"></span></dd>
                            </dl>')?>
                            <dl>
                                <dt>防灌水验证码</dt>
                                <dd><input type="text" class="text text-large text-short-mini text-verifycode" name="checkcode" placeholder="验证码" ><span class="verifycode" name="verifycode"><img src="<?php echo URLREWRITE? '/':'./'; ?>inc/verifycode.php" /></span></dd>
                            </dl>
                        </div>
                        <div class="footer"><button type="submit" name='Submit' class="btn btn-primary" >提交咨询</button><label><input type="checkbox" name="is_answer_to_email" checked="checked" value="true">将客服的回复发到我的邮箱</label></div>
                    </div>
                </div>

</form>
