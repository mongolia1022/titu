--<br>--
DROP TABLE IF EXISTS `##_article`;
--<br>--
CREATE TABLE `##_article` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `pageId` int(11) NOT NULL default '0' COMMENT '文章分页',
  `title` varchar(255) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要',
  `content` text NOT NULL,
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '创建时间',
  `originalPic` varchar(255) NOT NULL default '' COMMENT '上传原图',
  `indexPic` varchar(255) NOT NULL default '' COMMENT '上传小图',
  `counts` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--<br>--
INSERT INTO `##_article` VALUES ('1', '1', '0', '关于我们', '稻壳网，稻壳Cms，稻壳，关于我们，CMS，内容，管理，系统', '2012年06月01日，原 深喉咙Cms 团队[2006年前曾用名XmlOL技术在线]重组，并决定将旗下原有知名企业建站内容管理系统 深喉咙Cms 进行全新定义，将其在保持原有功能特色基础上进行全新开发，使其更加专业、通用、易用，满足不同使用者的需求。2012年08月08日，经过2个月时间筛选斟酌，正式将新Cms 用名确定为 DocCms，版本代号为 DocCms X。', '<h4>\r\n	为什么叫 DocCms [ 中文名：稻壳Cms ]？\r\n</h4>\r\n<p>\r\n	2012年06月01日，原 深喉咙Cms 团队[2006年前曾用名XmlOL技术在线]重组，并决定将旗下原有知名企业建站内容管理系统 深喉咙Cms 进行全新定义，将其在保持原有功能特色基础上进行全新开发，使其更加专业、通用、易用，满足不同使用者的需求。2012年08月08日，经过2个月时间筛选斟酌，正式将新Cms 用名确定为 DocCms ；\r\n</p>\r\n<p>\r\n	DocCms ，官方将其中文名音译为 " 稻壳Cms "。 doc 为英文单词 " document " 的缩写，可译为 "公文、资料、文档、文件等"，使用过微软公司世界著名的企业办公软件 Office 的人对此都应该不会感到陌生，因为 Office 产品家族中最被人们常用的软件之一 Word 文件的后缀名，即为 " .doc \" ，因此我们选择使用 DocCms 作为我们新产品的现用名寓意自然也是不言而喻…\r\n</p>\r\n<div style=\"padding:12px 0;text-align:center;\">\r\n	<img src=\"/upload/Image/20121006/56001349493126.png\" border=\"0\" height=\"119\" width=\"670\" /> \r\n</div>\r\n<p>\r\n	说来也巧，当2012年08月08日团队将此名子确定下来后，第一时间告知了对原深喉咙Cms发展作出过特殊重大贡献者之一的 " 雅风[英文ID：yophoo]，深喉咙Cms用户 " 童靴后，团队负责人 可非 和 雅风 在QQ上的几句闲聊，雅风随口问的新中文名叫什么好？并说不如直接就叫 " 稻壳Cms " 算了(ps：雅风是东北人，可能对稻米比较有感情 ; )，很快得到了 可非 童靴的响应，并将其告知团队其它同事并征求大家意见通过后即确定并很快的注册了 " 稻壳 " 商标。此后还开玩笑问雅风要多少创意版权费时，雅风果也大方的笑说给五十万就够了哈哈，因此我们也希望 稻壳Cms 能有一天在为大家带来方便和价值的同时，能够取得成功，并且 为雅风果 兑现版权费一说 ^^。\r\n</p>\r\n<h4>\r\n	DocCms X 能做什么？\r\n</h4>\r\n<p>\r\n	[音译：稻壳Cms]，是一款将于2012年11月11日正式发布，定位于为企业、站长、开发者、网络公司、VI策划设计公司、SEO推广营销公司、网站初学者等用户 量身打造的一款全新企业建站、内容管理系统，服务于企业品牌信息化建设，也适应用个人、门户网站建设！\r\n</p>\r\n<h4>\r\n	稻壳网——是什么？和 DocCms X 的关系？\r\n</h4>\r\n<p>\r\n	<a target=\"_blank\" href=\"http://www.doooc.com\">Doooc.com —— [ 中文名：稻壳网</a> ] 基于 DocCms X 的多用户网站托管、推广平台，致力于为 DocCms 粉丝打造一款高效、便捷、专业 且具有分享精神的一站式信息化全案推广营销平台。使企业品牌信息化建设、推广工作变得不再复杂，并可与 DocCms X 单用户版本实现数据互用互通，为广大粉丝创造出一款与众不同的特色Cms产品，并为广大用户创造出最大的商业价值 。\r\n</p>', '2012-11-06 23:25:58', '', '', '50');

--<br>--

INSERT INTO `##_article` VALUES ('2', '22', '0', '', 'DocCms 授权 协议 版权 声明', '版权所有 (c) 2006-2012, Doccms.com,Shlcms.com,Doooc.com 保留所有权力.DocCms 由 稻壳网 Dev Team 独立开发,全部核心技术归属 稻壳网 Dev Team（DocCms,ShlCms 在中国国家版权局著作权登记号为:2010SR008829）', '<p>\r\n	DocCms X 1.0&nbsp;[音译：稻壳Cms] Php Cms系统免费开源协议声明：\r\n</p>\r\n<hr />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	一、版权所有 (c) 2006-2012, Doccms.com,Shlcms.com,Doooc.com Dev Team &nbsp;保留所有权力.\r\n</p>\r\n<p>\r\n	<br />\r\n二、DocCms 由 稻壳网 Dev Team 独立开发,全部核心技术归属 稻壳网 Dev Team（DocCms,ShlCms 在中国国家版权局著作权登记号为:2010SR008829）\r\n</p>\r\n<p>\r\n	官方网站为 <a href="http://www.doccms.com">http://www.doccms.com</a>&nbsp;；官方论坛为 <a href="http://www.doccms.net">http://www.doccms.net</a>&nbsp;；DocCms for doooc地址为 <a href="http://www.doooc.com">http://www.doooc.com</a>&nbsp;；\r\n</p>\r\n<p>\r\n	本授权协议适用于 DocCms 任何版本，稻壳网 Dev Team 拥有对本授权协议的最终解释权和修改权。\r\n</p>\r\n<p>\r\n	<br />\r\n三、DocCms企业信息化建站系统\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;1 、DocCms,ShlCms 著作权已在中华人民共和国国家版权局注册，著作权登记号为: 2010SR008829 并受到法律和国际公约保护。如果您需要采用DocCms系统的部分程序构架其他程序系统，请务必取得我们的同意和授权，否则我们将追究责任并索赔相关损失！修改后的代码，未经书面许可，严禁公开发布，更不得利用其从事盈利业务；<br />\r\n&nbsp; &nbsp; &nbsp;2 、所有用户均可查看DocCms 的全部源代码,也可以根据自己的需要对其进行修改!但无论如何，既无论用途如何、是否经过修改或美化、修改程度如何，只要您使用 DocCms 的任何整体或部分程序算法，都必须保留程序后台部分页脚处的 DocCms 名称和 <a href="http://www.doccms.com">http://www.doccms.com</a> 和 <a href="http://www.doooc.com">http://www.doooc.com</a> 的链接地址；<br />\r\n&nbsp; &nbsp; &nbsp;3 、未经商业授权，不得<span style="white-space:normal;">以除稻壳Cms和DocCms以外其它任何品牌</span>将本软件用于商业用途(企业网站或以盈利为目的经营性网站)，否则我们将保留追究法律责任的权力。有关 DocCms 授权包含的服务范围，技术支持等，请参看 <a href="http://www.doccms.com">http://www.doccms.com<span>/BusinessService/</span></a>；\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp;注：对于违反以上条款，或以任何目的复制或发行 DocCms 的组织或个人，我们将依法追究其法律责任。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	四、本授权协议适用于稻壳Cms所有版本，稻壳Cms开发团队拥有对本授权协议的最终解释权，以下为协议许可的权利和约束：&nbsp;<br />\r\n&nbsp;&nbsp;I 协议许可的权利&nbsp;<br />\r\n&nbsp; &nbsp; 1. 您可以在完全遵守本最终用户授权协议的基础上，按官方免费开源协议将本软件合法的应用于商业用途，而不必支付软件版权授权费用；&nbsp;<br />\r\n&nbsp; &nbsp; 2. 您可以在协议规定的约束和限制范围内修改<span style="white-space:normal;">稻壳Cms</span>源代码(如果被提供的话)或界面风格以适应您的网站要求，但必须将后台界面和源代码信息里保留<span style="white-space:normal;">稻壳Cms官方版权</span>；<br />\r\n&nbsp; &nbsp; 3. 您拥有使用本软件构建的网站中全部网站资料、文章及相关信息的所有权，并独立承担与网站内容的相关法律义务；&nbsp;<br />\r\n&nbsp; &nbsp; 4. 提交商业应用真实资料备案后，您可以将本软件应用于相应商业用途，关于商业应用备案详情请参考<a href="http://www.doccms.com/Supporting/">http://www.doccms.com/Supporting/</a>。<br />\r\n<br />\r\n&nbsp;&nbsp;II 协议规定的约束和限制&nbsp;<br />\r\n&nbsp; &nbsp; 1. 未提交商业应用真实资料备案之前，不得<span style="white-space:normal;">以除稻壳Cms和DocCms以外其它任何品牌</span>将本软件用于商业用途（包括但不限于以赚取佣金为目的的网站制作、风格模板定制、功能定制等）。商业应用备案相关说明请登陆<a href="http://www.doccms.com/Supporting/" style="white-space:normal;">http://www.doccms.com/Supporting/</a>查阅；&nbsp;<br />\r\n&nbsp; &nbsp; 3. 无论如何，即无论用途如何、是否经过修改或美化、修改程度如何，只要使用<span style="white-space:normal;">稻壳Cms</span>的整体或任何部分，未经书面许可，网站管理后台页面的相应版权信息及http://www.doccms.com或其他相应官方网址链接都必须保留，而不能清除或修改，一旦发现，责任必纠；&nbsp;<br />\r\n&nbsp; &nbsp; 4. 禁止在<span style="white-space:normal;">稻壳Cms</span>的整体或任何部分基础上以发展任何派生版本、修改版本或第三方版本用于重新分发，一旦发现，官方必追纠相关方法律责任；&nbsp;<br />\r\n&nbsp; &nbsp; 5. 如果您未能遵守本协议的条款，您的授权将被终止，所被许可的权利将被收回，并承担相应法律责任。&nbsp;<br />\r\n<br />\r\n&nbsp;&nbsp;III 有限担保和免责声明&nbsp;<br />\r\n&nbsp; &nbsp; 1. 本软件及所附带的文件是作为不提供任何明确的或隐含的赔偿或担保的形式提供的；&nbsp;<br />\r\n&nbsp; &nbsp; 2. 用户出于自愿而使用本软件，您必须了解使用本软件的风险，在未购买相应产品技术服务之前，我们不承诺提供任何形式的技术支持、使用担保，也不承担任何因使用本软件而产生问题的相关责任；&nbsp;<br />\r\n&nbsp; &nbsp; 3. <span style="white-space:normal;">稻壳Cms</span>开发团队不对使用本软件构建的网站中的文章或信息承担责任。<br />\r\n&nbsp; &nbsp;&nbsp;<br />\r\n五、有关<span style="white-space:normal;">稻壳Cms</span>最终用户授权协议、商业授权与技术服务的详细内容，均由<span style="white-space:normal;">稻壳Cms</span>官方网站独家提供。<span style="white-space:normal;">稻壳Cms</span>开发团队拥有在不事先通知的情况下，修改授权协议和备案规则的权力，修改后的协议或备案规则对自改变之日起的新授权用户生效。&nbsp;<br />\r\n<br />\r\n六、电子文本形式的授权协议如同双方书面签署的协议一样，具有完全的和等同的法律效力。您一旦开始安装<span style="white-space:normal;">稻壳Cms</span>，即被视为完全理解并接受本协议的各项条款，在享有上述条款授予的权力的同时，受到相关的约束和限制。协议许可范围以外的行为，将直接违反本授权协议并构成侵权，我们有权随时终止授权，责令停止损害，并保留追究相关责任的权力。<br />\r\n<br />\r\n七、免责声明:\r\n</p>\r\n<p>\r\n	<span style="white-space:normal;">&nbsp; &nbsp;&nbsp;</span>1 、利用本软件构建的网站的任何信息内容以及导致的任何版权纠纷和法律争议及后果，官方不承担任何责任。<br />\r\n<span style="white-space:normal;">&nbsp; &nbsp;&nbsp;</span>2 、损坏包括程序的使用(或无法再使用)中所有一般化,特殊化,偶然性的或必然性的损坏(包括但不限于数据的丢失,自己或第三方所维护数据的不正确修改,和其他程序协作过程中程序的崩溃等),官方不承担任何责任。\r\n</p>', '2012-10-29 15:08:07', '', '', '20');

--<br>--

INSERT INTO `##_article` VALUES ('3', '4', '0', 'DocCms X 商业授权证书', '', 'DocCms 由 稻壳网 Dev Team 独立开发,全部核心技术归属 稻壳网 Dev Team（DocCms,ShlCms 在中国国家版权局著作权登记号为:2010SR008829）', '<img src=\"/upload/Image/20121026/20121026020732_47559.jpg\" alt=\"\" />', '2012-10-26 10:08:35', '', '', '83');

--<br>--

INSERT INTO `##_article` VALUES ('4', '18', '0', '', 'doccms 商业 授权 服务 购买', 'DocCms X 本身为免费开源Cms系统，官方不对用户进行强制性购买，只要不用做非法目的和修改版权后进行二次传播官方皆认为合法，当然为了支持DocCms的发展和更好的保护您的合法权益，我们也建议需要进行商业应用的用户购买DocCms商业授权，例如：政府单位、教育机构、协会团体、企业等，以便在遇到相关法律知识纠纷时保证您的合法权益。', '<style>\r\n.sevicetable { width: 100%; margin: 5px 0; border: 1px solid #dcdcdc; border-collapse: separate; border-spacing: 2px; }\r\n.sevicetable td { padding: 6px; text-align: center; color: #16395f; background: #fafafa; }\r\n.sevicetable th { font-weight:normal;padding: 6px 12px; text-align: left; color: #0882c1; background: #f5f5f5; }\r\n.grouptitle th { font-size:14px;font-weight: bold; color: #000; background: #f5f5f5; border-top:1px solid #dcdcdc;border-bottom:1px solid #dcdcdc; }\r\n.grouptitle th{text-shadow:0 1px 0 #fff;-webkit-box-shadow:0 1px 0 #fff;-moz-box-shadow:0 1px 0 #fff;background:-webkit-gradient(linear,left top,left bottom,from(#fafafa),to(#f0f0f0));background:-moz-linear-gradient(#fafafa,#f0f0f0);}\r\n.sevicetable .help { display: inline-block; width: 16px; height: 16px; overflow: hidden; text-indent: -9999px; vertical-align: middle; background: url(/upload/Image/20121026/20121026020732_47561.png) no-repeat; }\r\n.sevicetable .note { color: #999; margin-top: 5px; line-height: 1.5; }\r\n.sevicetable .note p { margin-bottom: 5px; line-height: 1.5; }\r\n.sevicetable caption{font-size:14px;font-weight:bold;text-align:left;margin-bottom:10px;}\r\n.main h4{ padding:20px 0; font-size:16px; text-align:center; font-weight:normal; color:#FDD90B;}\r\n.main p{ padding:6px 0; text-indent:24px;}		\r\n.main{ line-height:26px; padding:15px;}\r\n.main a{ color:#FDD90B;}\r\n.shangye{font-size:22px;font-family:\"微软雅黑\";font-weight:normal;}\r\n</style>\r\n<script>function showtip(id)\r\n{\r\n	if(document.getElementById(id).style.display == \'none\') \r\n	{\r\n		document.getElementById(id).style.display = \'block\'; \r\n	}\r\n	else \r\n	{\r\n		document.getElementById(id).style.display = \'none\';\r\n	}\r\n}</script>\r\n<h1 class=\"shangye\">\r\n	商业授权价格及服务\r\n</h1>\r\n<hr />\r\n<p style=\"font-size:13px;font-family:\'微软雅黑\';\">\r\n	购买商业应用制授权联系方式 &nbsp;销售热线: 15538801588 或&nbsp;0371-66052229（本电话不接受技术咨询） &nbsp; &nbsp; Email : sell@doccms.com\r\n</p>\r\n<table class=\"sevicetable\">\r\n	<caption style=\"font-size:15px;font-family:\' 微软雅黑\';\">商业使用授权</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th width=\"110\">\r\n				商业应用授权价格\r\n			</th>\r\n			<td colspan=\"5\">\r\n				<p>\r\n					¥388.00 &nbsp;&nbsp; [ DocCms本身为免费开源程序，授权与免费并无功能差别，仅为需要者提供，如需购买，请参考尾部说明 ]\r\n				</p>\r\n(只购买商业授权表示您可以合法地在商业网站上使用doccms，不包括售后服务和版权信息替换，如需服务，请参见下表)\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n				去除版权授权价格\r\n			</th>\r\n			<td colspan=\"5\">\r\n				<p>\r\n					¥1888.00&nbsp; [ DocCms本身为免费开源程序，授权与免费并无功能差别，仅为需要者提供，如需购买，请参考尾部说明 ]\r\n				</p>\r\n(只购买去除商业授权表示您可以在去除相关版权信息的情况下合法地在商业网站上使用doccms，并不意味着您可以替换为其它版权并进行再次传播，如需服务，请参见下表)\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p style=\"font-size:13px;font-family:\'微软雅黑\';\">\r\n	说明：<br />\r\n1、DocCms X 本身为免费开源Cms系统，官方不对用户进行强制性购买，只要不用做非法目的和修改版权后进行二次传播官方皆认为合法，当然为了支持DocCms的发展和更好的保护您的合法权益，我们也建议需要进行商业应用的用户购买DocCms商业授权，例如：政府单位、教育机构、协会团体、企业等，以便在遇到相关法律知识纠纷时保证您的合法权益。<br />\r\n2、以下情况不属于服务范围<br />\r\n○ 自行修改或使用非原始DocCms程序代码产生的问题；<br />\r\n○ 自行对数据库进行直接操作导致数据库出错或者崩溃；<br />\r\n○ 插件的安装以及由于安装插件造成的故障；<br />\r\n○ 服务器、虚拟主机原因造成的系统故障；<br />\r\n○ 二次开发或定制。<br />\r\n3、服务网站数量<br />\r\n一份DocCms拷贝安装为一个服务网站，同一域名下安装多套DocCms则视为多个服务网站。\r\n</p>', '2012-11-06 23:21:30', '', '', '4');

--<br>--

INSERT INTO `##_article` VALUES ('5', '6', '0', '', '', '', '<p>\r\n	DocCms X 开发团队\r\n</p>\r\n<p>\r\n	BUG 反馈：767912290@qq.com\r\n</p>\r\n<hr />\r\n<p>\r\n	<strong><span style=\"font-size:16px;\">官方qq交流群</span></strong>\r\n</p>\r\n<p>\r\n官方交流群： <strong><span style=\"color:#ff0000;\">142737672(新)</span></strong> \r\n</p>\r\n<hr />\r\n<p>\r\n	<b><span style=\"font-size:16px;\">联系我们</span><br />\r\n</b> \r\n</p>\r\n<p>\r\n	<b>用户反馈：</b> <img src=\"/upload/Image/20121026/20121026020732_47560.png\" /> <span><a href=\"mailto:support@doccms.com\"> support#doccms.com</a></span> \r\n</p>\r\n<p>\r\n	<b>商业合作：</b> <img src=\"/upload/Image/20121026/20121026020732_47560.png\" /> <span><a href=\"mailto:hongli@doccms.com\">hongli#doccms.com</a></span> \r\n</p>\r\n<p>\r\n	<b>媒体联络：</b> <img src=\"/upload/Image/20121026/20121026020732_47560.png\" /> <span><a href=\"mailto:hongli@doccms.com\"> hongli#doccms.com</a></span> \r\n</p>\r\n<p>\r\n	<b>人才招聘：</b> <img src=\"/upload/Image/20121026/20121026020732_47560.png\" /> <span><a href=\"mailto:hr@doccms.com\"> hr#doccms.com</a></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n（发邮件前请将 # 替换为 @）<br />', '2012-11-07 10:47:34', '', '', '10');

--<br>--
DROP TABLE IF EXISTS `##_calllist`;
--<br>--
CREATE TABLE `##_calllist` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `callId` varchar(200) NOT NULL default '' COMMENT '调用相关的频道栏目',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--<br>--
INSERT INTO `##_calllist` VALUES ('1', '2', '8,9');
--<br>--

DROP TABLE IF EXISTS `##_comment`;
--<br>--
CREATE TABLE `##_comment` (
  `id` int(11) NOT NULL auto_increment,
  `recordId` int(11) NOT NULL default '0' COMMENT '被评论记录ID',
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `name` varchar(50) NOT NULL default '' COMMENT '评论标题',
  `content` text COMMENT '评论内容',
  `email` varchar(60) NOT NULL default '' COMMENT '邮件',
  `homepage` varchar(60) NOT NULL default '' COMMENT '主页',
  `ip` varchar(50) NOT NULL default '',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `auditing` tinyint(4) NOT NULL default '0' COMMENT '审核',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  `memberId` int(11) NOT NULL default '0' COMMENT '会员ID',
  `memberTableName` varchar(255) NOT NULL default '',
  `answerId` int(11) NOT NULL default '0' COMMENT '评论者ID',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
DROP TABLE IF EXISTS `##_download`;
--<br>--
CREATE TABLE `##_download` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `title` varchar(255) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要',
  `fileSize` varchar(200) NOT NULL default '',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `content` text,
  `filePath` varchar(200) NOT NULL default '' COMMENT '上传文件路径',
  `counts` int(11) NOT NULL default '0' COMMENT '点击数',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--

INSERT INTO `##_download` VALUES ('1', '14', '深喉咙（ShlCms）Php免费开源企业网站生成系统 ver4.2', '', '深喉咙CMS全称为深喉咙企业网站生成系统，曾用名：深喉咙网站管理系统、深喉咙企业网站系统、SHLCMS、Deepthroat等，本协议中简称深喉咙CMS。', '', '2012-10-26 10:27:04', '<p>深喉咙企业网站生成系统(深喉咙CMS)是一套Web工具软件，主要用于中小企业web站点的搭建和管理，安装步骤简单快捷，不需要编程，也能在短时间内独立完成一个web站点，系统的功能模块和模版风格可根据企业需要添加或更换，每套系统均有独立的后台控制面板，网站管理员输入系统口令后，可通过浏览器对企业站点远程管理及日常内容更新和维护。<br /></p>', 'http://www.shenhoulong.com/SHLCMS42/', '0', '0');

--<br>--

INSERT INTO `##_download` VALUES ('2', '14', '稻壳Cms（DocCms X）Php免费开源企业建站系统 ver x1.0', '', '', '', '2012-10-29 15:44:30', 'DocCms X —— [ 音译：稻壳Cms ] 是一款将于2012年11月11日正式发布，定位于为企业、站长、开发者、网络公司、VI策划设计公司、SEO推广营销公司、网站初学者等用户 量身打造的一款全新企业建站、内容管理系统，服务于企业品牌信息化建设，也适应用个人、门户网站建设！', 'http://www.doccms.com/DocCmsX10/', '0', '0');

--<br>--
DROP TABLE IF EXISTS `##_flash`;
--<br>--
CREATE TABLE `##_flash` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '' COMMENT '标题',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要',
  `url` varchar(200) NOT NULL default '' COMMENT '摘要',
  `picpath` varchar(200) NOT NULL default '' COMMENT '图片路径',
  `group_id` int(11) NOT NULL default '0' COMMENT '广告分组id',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--<br>--
INSERT INTO `##_flash` VALUES ('1', 'DocCms x1.0 企业建站，让您赢在起跑线~', 'DocCms x1.0 企业建站，让您赢在起跑线~', 'http://www.doccms.com/', '/upload/201210/20121031171907156.jpg', '1', '0', '2012-11-08 16:46:34');
--<br>--
INSERT INTO `##_flash` VALUES ('2', '新功能，新视觉，新体验就在DocCms x1.0', '新功能，新视觉，新体验就在DocCms x1.0', 'http://www.doccms.com/', '/upload/201210/20121031171858463.jpg', '1', '0', '2012-11-08 16:45:45');
--<br>--
INSERT INTO `##_flash` VALUES ('3', 'ShlCms华丽转身，来到DocCms时代！', 'ShlCms华丽转身，来到DocCms时代！', 'http://www.doccms.com/', '/upload/201210/20121031171850519.jpg', '1', '0', '2012-11-08 16:47:44');
--<br>--
INSERT INTO `##_flash` VALUES ('4', 'DocCms 关注用户体验，提升服务品质！', 'DocCms 关注用户体验，提升服务品质！', 'http://www.doccms.com/', '/upload/201210/20121031171841120.jpg', '1', '0', '2012-11-08 16:49:03');
--<br>--
DROP TABLE IF EXISTS `##_flash_group`;
--<br>--
CREATE TABLE `##_flash_group` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL default '' COMMENT '分组标题',
  `summary` text COMMENT '摘要',
  `type` varchar(50) NOT NULL default 'focus' COMMENT '广告模式',
  `boxId` varchar(255) NOT NULL default '' COMMENT '盒子ID',
  `pattern` varchar(255) NOT NULL default '' COMMENT '主题风格',
  `times` int(11) NOT NULL default '0' COMMENT '切换时间间隔',
  `adTrigger` varchar(50) NOT NULL default 'click' COMMENT '切换模式',
  `auto` tinyint(1) NOT NULL default '0' COMMENT '自动切换',
  `width` int(11) NOT NULL default '0' COMMENT '图片宽度',
  `height` int(11) NOT NULL default '0' COMMENT '图片高度',
  `txtHeight` varchar(50) NOT NULL default 'default' COMMENT '文字高度',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
INSERT INTO `##_flash_group` VALUES ('1', '首页banner', '', 'focus', 'myFocus', 'mF_liuzg', '4', 'click', '0', '1000', '300', 'default', '2012-11-11 00:00:00');

--<br>--
DROP TABLE IF EXISTS `##_guestbook`;
--<br>--
CREATE TABLE `##_guestbook` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '' COMMENT '留言人',
  `contact` varchar(16) NOT NULL default '' COMMENT '联系方式',
  `custom` text COMMENT '自定义字段',
  `content` text COMMENT '留言内容',
  `content1` text COMMENT '管理员回复',
  `channelId` int(11) NOT NULL default '0' COMMENT '频道Id',
  `ip` varchar(40) NOT NULL default '' COMMENT '留言人IP',
  `uid` int(11) NOT NULL default '0' COMMENT '会员ID',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '留言日期',
  `auditing` tinyint(4) NOT NULL default '0' COMMENT '审核0未审核1审核',
  `isPublic` int(11) NOT NULL default '0' COMMENT '是否公开',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--

INSERT INTO `##_guestbook` VALUES ('1', '韩非子', 'QQ：77657577', '', '你好，我是稻壳网和稻壳Cms忠实粉丝，我想请问一下，如何把深喉咙Cms的模板移植到新版本的稻壳Cms下，并可以正常使用，谢谢。', '韩非子，你好，稻壳Cms是深喉咙Cms的后续作品，只是出于标准统一和后期运维以及考虑到为用户创造一个质量更加高的Cms产品，官方将其重构且更换商标，模板的大部分使用方法还是不变的，升级时您只需根据官方帮助文档指导，将相应标签替换以及系统模板文件替换即可，详情参考官方帮助文档和升级说明。', '5', '123.111.1.100', '0', '2012-10-27 09:43:28', '1', '1');

--<br>--

INSERT INTO `##_guestbook` VALUES ('2', '可非果', 'QQ：77657577', '', 'DocCms X 官方的氓流果，请问DocCms X未来是收费的吗？如何收费？有什么服务？', '嗯，我是氓流果，我以官方负责人代表的资格正式回复您的问题，DocCms X 企业建站系统未来将继续秉承前作ShlCms免费开源Cms系统对广大用户免费方针不变。但伴随中国知识产权保护法律的完善，部分企业出于自身放心使用需要，我们也针对相关事宜为您提供了相应的服务，详情请参考官网http://www.doccms.com/BusinessService/信息查看。', '5', '123.111.1.100', '0', '2012-10-27 12:05:57', '1', '1');

--<br>--
DROP TABLE IF EXISTS `##_jobs`;
--<br>--
CREATE TABLE `##_jobs` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `title` varchar(255) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要',
  `jobKind` varchar(100) NOT NULL default '' COMMENT '工作性质如全职',
  `requireNum` int(11) NOT NULL default '0' COMMENT '招聘人数',
  `experience` varchar(50) NOT NULL default '' COMMENT '工作经验',
  `address` varchar(200) NOT NULL default '',
  `lastTime` varchar(50) NOT NULL default '' COMMENT '招聘截止日',
  `salary` varchar(50) NOT NULL default '',
  `educational` varchar(50) NOT NULL default '' COMMENT '教育水平',
  `isHouse` varchar(50) NOT NULL default '',
  `content` text,
  `telphone` varchar(50) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--

INSERT INTO `##_jobs` VALUES ('1', '20', 'Php开发工程师', '', '', '全职', '3', '3年', '郑州', '2026-02-01', '8000￥', '大专', '否', '<p>\r\n	1、美术院校相关专业毕业，有较强的美术功底；油画专业优先； 2、熟练使用Photoshop/Fireworks、Illustrator等相关工具；<br />\r\n3、具有良好的插画设计能力；<br />\r\n4、从事网页及网络广告设计,有网络行业美术设计工作经验者优先;<br />\r\n5．善于团队协作，实际动手能力强;\r\n(注：以上信息为DocCms X官方为用户添加的测试数据，仅供参考，<br />\r\n具体招聘请咨询稻壳网或DocCms官方，<a href=\"http://www.doooc.com\" target=\"_blank\">http://www.doooc.com</a>或<a href=\"http://www.doccms.com\" target=\"_blank\">http://www.doccms.com</a>)\r\n</p>', '0371-66052229', 'hr@doccms.com', '2012-10-29 14:24:50', '0');

--<br>--

INSERT INTO `##_jobs` VALUES ('2', '20', '稻壳网平面设计师', '', '', '全职', '2', '二年以上', '郑州', '2026-10-01', '7000￥', '大专', '否', '<p>\r\n	1、美术院校相关专业毕业，有较强的美术功底；油画专业优先；<br />\r\n2、熟练使用Photoshop/Fireworks、Illustrator等相关工具；<br />\r\n3、具有良好的插画设计能力；<br />\r\n4、从事网页及网络广告设计,有网络行业美术设计工作经验者优先;<br />\r\n5．善于团队协作，实际动手能力强;<br />\r\n(注：以上信息为DocCms X官方为用户添加的测试数据，仅供参考，<br />\r\n具体招聘请咨询稻壳网或DocCms官方，<a href=\"http://www.doooc.com\" target=\"_blank\">http://www.doooc.com</a>或<a href=\"http://www.doccms.com\" target=\"_blank\">http://www.doccms.com</a>)\r\n</p>', '0371-66052229', 'hr@doccms.com', '2012-10-29 14:09:08', '0');

--<br>--

INSERT INTO `##_jobs` VALUES ('3', '20', '稻壳网产品总监', '', '', '全职', '1', '3年', '郑州', '2026-02-01', '8000￥', '大专', '否', '<p>\r\n	岗位职责：<br />\r\n1、负责产品的设计前的市场调研；<br />\r\n2、根据产品规划、内外部需求、产品的功能、性能特点，进行产品定义，把握设计方向，设计出符合市场、客户需求的产品；<br />\r\n3、协同内部相关各部门，负责制定产品开发计划，保证需求的充分实现；<br />\r\n4、配合销售制订产品销售策略，支持市场销售业务；<br />\r\n5. 对用户需求、市场需求和业务需求进行调研分析，不断优化产品，提升产品质量，提高用户活跃度.<br />\r\n(注：以上信息为DocCms X官方为用户添加的测试数据，仅供参考，<br />\r\n具体招聘请咨询稻壳网或DocCms官方，<a href=\"http://www.doooc.com\" target=\"_blank\">http://www.doooc.com</a>或<a href=\"http://www.doccms.com\" target=\"_blank\">http://www.doccms.com</a>)\r\n</p>', '0371-66052229', 'hr@doccms.com', '2012-10-29 14:09:57', '0');

--<br>--

INSERT INTO `##_jobs` VALUES ('4', '20', '稻壳网产品经理', '', '', '全职', '2', '二年以上', '郑州', '2026-02-01', '5000￥', '大专', '否', '<p>\r\n	岗位职责：<br />\r\n1、了解地方站相关频道的运营定位及相关频道的竞争环境、人群定位等相关数据。<br />\r\n2、制定频道推广策略，提供有创意的推广手段和内容设计，包括广告创意、活动创新等。<br />\r\n3、结合区域微博达人用户进行各类推广项目策划与设计。<br />\r\n<br />\r\n任职资格：<br />\r\n1、本科及以上学历，2年以上互联网产品相关工作经验，两年以上社区（互动）产品的策划、设计、执行、维护经验，或有技术背景更好，多年从事同一社区应用的优先；&nbsp;<br />\r\n2、对互联网产品市场有一定的分析能力（环境、群体、数据和需求），掌握项目管理相关知识，能够进行产品类项目管理并能带动小组高效工作；&nbsp;<br />\r\n3、沟通表达能力强，工作认真负责，执行力强，有耐心，擅于与人沟通，能够承受一定的工作压力。<br />\r\n(注：以上信息为DocCms X官方为用户添加的测试数据，仅供参考，<br />\r\n具体招聘请咨询稻壳网或DocCms官方，<a href=\"http://www.doooc.com\" target=\"_blank\">http://www.doooc.com</a>或<a href=\"http://www.doccms.com\" target=\"_blank\">http://www.doccms.com</a>)\r\n</p>', '0371-66052229', 'hr@doccms.com', '2012-10-29 14:08:58', '0');

--<br>--

INSERT INTO `##_jobs` VALUES ('5', '20', '稻壳网市场总监', '', '', '全职', '1', '3年', '郑州', '2026-02-01', '10000￥', '大专', '否', '<p>\r\n	1、高层管理职位，协助决策层制定公司发展战略，负责其功能领域内短期及长期的公司决策和战略，对公司中长期目标的达成产生重要影响；<br />\r\n2、负责策划公司年度市场工作目标和营销方案；<br />\r\n3、负责开拓市场业务，进行相关的宣传推广，包括管理以及进度的推进，建立公司的市场运作体制；<br />\r\n4、分析和预测销售市场、把握市场趋势，为决策提供准确的相关信息，开拓和发展销售市场；<br />\r\n5、规划和管理市场活动的预算，合理有效、最大限度地使用预算执行广告和市场活动。\r\n(注：以上信息为DocCms X官方为用户添加的测试数据，仅供参考，<br />\r\n具体招聘请咨询稻壳网或DocCms官方，<a href=\"http://www.doooc.com\" target=\"_blank\">http://www.doooc.com</a>或<a href=\"http://www.doccms.com\" target=\"_blank\">http://www.doccms.com</a>)\r\n</p>', '0371-66052229', 'hr@doccms.com', '2012-10-29 14:13:24', '0');

--<br>--

INSERT INTO `##_jobs` VALUES ('6', '20', '稻壳网财务总监', '', '', '全职', '1', '3年', '郑州', '2026-02-01', '7000￥', '大专', '否', '<p>\r\n	1、负责公司帐务的处理以及管理工作；<br />\r\n2、负责公司日常费用支出以及合同签定的审核工作；<br />\r\n3、完善财务管理制度并监督执行，保证公司资产安全； <br />\r\n4、控制预算、严控成本费用； <br />\r\n5、完善财务核算制度，负责组织公司的核算工作，组织编制和审核会计、统计报表，为公司指标考核提供依据；<br /> \r\n6、建立财务数据分析体系，负责定期编制及组织实施公司经营管理及财务报表分析、成本费用分析报告等工作； <br /> \r\n7、负责财政、税务、审计、统计等国家行政部门的协调联络工作；<br />\r\n8、协助上级管理财务部的日常工作；完成上级交办的其他日常事务性工作。<br />\r\n</p>', '0371-66052229', 'hr@doccms.com', '2012-10-29 14:19:57', '0');

--<br>--
DROP TABLE IF EXISTS `##_jobs_resume`;
--<br>--
CREATE TABLE `##_jobs_resume` (
  `id` int(11) NOT NULL auto_increment,
  `parentId` int(11) NOT NULL default '0' COMMENT '父级id',
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目id',
  `name` varchar(50) NOT NULL default '' COMMENT '姓名',
  `sex` varchar(4) NOT NULL default '' COMMENT '性别',
  `birthday` varchar(50) NOT NULL default '' COMMENT '出生日期',
  `nation` varchar(50) NOT NULL default '' COMMENT '民族',
  `isMarried` varchar(50) NOT NULL default '' COMMENT '婚姻状况',
  `nowJob` varchar(100) NOT NULL default '' COMMENT '目前工作',
  `nowAddress` varchar(200) NOT NULL default '' COMMENT '现住地址',
  `residence` varchar(200) NOT NULL default '' COMMENT '户口所在地',
  `educational` varchar(100) NOT NULL default '' COMMENT '教育水平',
  `height` varchar(50) NOT NULL default '' COMMENT '身高',
  `finishSchool` varchar(100) NOT NULL default '' COMMENT '毕业院校',
  `finishTime` varchar(50) NOT NULL default '' COMMENT '毕业时间',
  `speciality` varchar(100) NOT NULL default '' COMMENT '所学专业',
  `experience` varchar(100) NOT NULL default '' COMMENT '工作经验',
  `selfAppreciation` text COMMENT '自我评价',
  `languageSkill` varchar(50) NOT NULL default '' COMMENT '所会外语',
  `email` varchar(200) NOT NULL default '' COMMENT '电子邮件',
  `telphone` varchar(50) NOT NULL default '' COMMENT '电话',
  `mobile` varchar(50) NOT NULL default '' COMMENT '手机',
  `address` varchar(200) NOT NULL default '' COMMENT '通信地址',
  `resume` text COMMENT '个人简历',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--<br>--
DROP TABLE IF EXISTS `##_linkers`;
--<br>--
CREATE TABLE `##_linkers` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `links` int(11) NOT NULL default '0' COMMENT '链接类型0图片1文字',
  `title` varchar(100) NOT NULL default '' COMMENT '链接标题',
  `linkAddress` varchar(150) NOT NULL default '' COMMENT '链接地址',
  `originalPic` varchar(255) NOT NULL default '' COMMENT '原图',
  `smallPic` varchar(255) NOT NULL default '' COMMENT '小图',
  `description` text COMMENT '链接摘要',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--<br>--

INSERT INTO `##_ VALUES` ('1', '16', '0', '稻壳网', 'http://www.doooc.com', '/upload/201210/20121026214447472.jpg', '', '', '0000-00-00 00:00:00', '0');
--<br>--

INSERT INTO `##_linkers` VALUES ('2', '16', '0', 'DocCms X 1.0', 'http://www.doccms.com', '/upload/201210/20121027093046643.jpg', '/upload/201210/s_20121027093046643.jpg', '', '2012-10-27 09:30:46', '0');
--<br>--

INSERT INTO `##_linkers` VALUES ('3', '16', '0', '路之易', 'http://www.loooe.com', '/upload/201210/20121027093126573.jpg', '/upload/201210/s_20121027093126573.jpg', '', '2012-10-27 09:31:26', '0');
--<br>--

INSERT INTO `##_linkers` VALUES ('4', '16', '0', '稻壳网官方论坛', 'http://www.doccms.net', '/upload/201210/20121027093303513.jpg', '/upload/201210/s_20121027093303513.jpg', '', '2012-10-27 09:33:03', '0');

--<br>--
INSERT INTO `##_linkers` VALUES ('5', '16', '0', 'ShlCms网站系统', 'http://www.shlcms.com', '/upload/201210/2012102709345595.jpg', '/upload/201210/s_2012102709345595.jpg', '', '2012-10-27 09:34:55', '0');
--<br>--

INSERT INTO `##_linkers` VALUES ('6', '16', '0', 'ShlCms官方论坛', 'http://www.shlcms.net', '/upload/201210/20121027093534554.jpg', '/upload/201210/s_20121027093534554.jpg', '', '2012-10-27 09:35:34', '0');
--<br>--

INSERT INTO `##_linkers` VALUES ('7', '16', '1', '路易网', 'http://www.loooe.com', '', '', '', '2012-10-27 17:12:12', '0');
--<br>--

INSERT INTO `##_linkers` VALUES ('8', '16', '1', '稻壳网', 'http://www.doooc.com', '', '', '', '2012-10-27 17:12:40', '0');
--<br>--

DROP TABLE IF EXISTS `##_list`;
--<br>--
CREATE TABLE `##_list` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `title` varchar(255) NOT NULL default '' COMMENT '新闻标题',
  `style` varchar(50) NOT NULL default '' COMMENT '标题样式',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要',
  `author` varchar(50) NOT NULL default '' COMMENT '作者',
  `source` varchar(60) NOT NULL default '' COMMENT '来源名称',
  `counts` int(11) NOT NULL default '0' COMMENT '点击数',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '创建时间',
  `editTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '修改时间',
  `recommend` int(11) NOT NULL default '0' COMMENT '文章推荐',
  `content` text COMMENT '文章标识',
  `sourceUrl` varchar(255) NOT NULL default '' COMMENT '来源地址',
  `originalPic` varchar(100) NOT NULL default '' COMMENT '原图',
  `indexPic` varchar(100) NOT NULL default '' COMMENT '首页缩略图',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  `hassplitpages` int(11) NOT NULL default '0' COMMENT '分页标记 0无 1有',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--<br>--

INSERT INTO `##_list` VALUES ('1', '8', '原ShlCms团队[中文名：深喉咙Cms]重建', '@@@', '', '2012年06月01日，原ShlCms 团队[中文名：深喉咙Cms]重建，新团队原始成员由 孙阳、张印、陈霜霜、张博、张立宪、冯光普、候高峰、倪俊 共 8 人核心成员。', 'DocCms官方', 'DocCms X', '11', '2012-10-08 17:06:05', '0000-00-00 00:00:00', '0', '<p>\r\n	2012年06月01日，原ShlCms 团队[中文名：深喉咙Cms]重建，新团队原始成员由 孙阳、张印、陈霜霜、张博、张立宪、冯光普、候高峰、倪俊 共 8 人核心成员。\r\n</p>\r\n<p>\r\n	[文章来源：<a href=\"http://www.doccms.com/UpdateLog/n1.html\" target=\"_blank\">http://www.doccms.com/UpdateLog/n1.html</a>]\r\n</p>', 'http://www.doccms.com/UpdateLog/n1.html', '', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('2', '8', '原ShlCms团队更名为DocCms开发团队[中文名：稻壳Cms]', '@@@', '', '2012年08月08日，原ShlCms团队正式将名称更换为DocCms开发团队，中文名：稻壳Cms 开发团队； 同日，官方正式决定将放弃的原ShlCms [ 中文名：深喉咙Cms ]相关产品更名为 DocCms [ 中文名：稻壳Cms ]，并注册"稻壳"相关商标； 在确定相关商标和新Cms产品名称后，官方正式对外公布，官方未来经营的三个产品 稻壳Cms、稻壳网、稻壳社区，并确定于2012年11月份推出三个产品的测试上线。', 'DocCms官方', 'DocCms X', '4', '2012-10-08 17:07:14', '0000-00-00 00:00:00', '0', '<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	2012年08月08日，原ShlCms团队正式将名称更换为DocCms开发团队，中文名：稻壳Cms 开发团队；\r\n</p>\r\n<p>\r\n	同日，官方正式决定将放弃的原ShlCms [ 中文名：深喉咙Cms ]相关产品更名为 &nbsp;DocCms [ 中文名：稻壳Cms ]，并注册"稻壳"相关商标；\r\n</p>\r\n<p>\r\n	在确定相关商标和新Cms产品名称后，官方正式对外公布，官方未来经营的三个产品 &nbsp;稻壳Cms、稻壳网、稻壳社区，并确定于2012年11月份推出三个产品的测试上线。\r\n</p>\r\n<p>\r\n	<span><span>[文章来源：</span><a href=\"http://www.doccms.com/UpdateLog/n2.html\" target=\"_blank\">http://www.doccms.com/UpdateLog/n2.html</a><span>]</span></span><span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<span></span> \r\n<p>\r\n	<br />\r\n</p>', 'http://www.doccms.com/UpdateLog/n2.html', '', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('3', '8', 'DocCms X1.0 开发功能目标敲定', '@@@', '', '2012年08月18日，官方基于之前已开展的工作基础上，敲定新产品DocCms X 1.0产品开发目标。主要完成四大目标，第一、统一标准；第二、全新UE设计和体验；第三、与稻壳网同步；第四、完善老功能和增加实用新功能。', 'DocCms官方', 'DocCms X', '17', '2012-10-08 17:08:15', '0000-00-00 00:00:00', '0', '<p>\r\n	2012年08月18日，官方基于之前已开展的工作基础上，敲定新产品DocCms X 1.0产品开发目标。主要完成四大目标，第一、统一标准；第二、全新UE设计和体验；第三、与稻壳网同步；第四、完善老功能和增加实用新功能。\r\n</p>\r\n<p>\r\n	<span><span>[文章来源：</span><a href=\"http://www.doccms.com/UpdateLog/n3.html\" target=\"_blank\">http://www.doccms.com/UpdateLog/n3.html</a><span>]</span></span><span></span> \r\n</p>', 'http://www.doccms.com/UpdateLog/n3.html', '', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('4', '8', 'DocCms X + 稻壳网 官方社区版块确定并推出测试版', '@@@', '', '2012年09月20日，稻壳Cms官方正式完成 DocCms X + 稻壳网 官方新论坛版块建设工作，并将网站 http://www.doccms.net 推出测试应用上线。接受广大用户对新论坛版块儿相关建设工作的建议和完善，为2012年11月份DocCms X 和 稻壳网 的正式应用上线做好准备。', 'DocCms官方', 'DocCms X', '16', '2012-10-08 17:08:39', '0000-00-00 00:00:00', '0', '<p>\r\n	2012年09月20日，稻壳Cms官方正式完成 DocCms X + 稻壳网 官方新论坛版块建设工作，并将网站 <a href=\"http://www.doccms.net\" target=\"_blank\">http://www.doccms.net</a> 推出测试应用上线。接受广大用户对新论坛版块儿相关建设工作的建议和完善，为2012年11月份DocCms X 和 稻壳网 的正式应用上线做好准备。\r\n</p>\r\n<p>\r\n	<span><span>[文章来源：</span><a href=\"http://www.doccms.com/UpdateLog/n4.html\" target=\"_blank\">http://www.doccms.com/UpdateLog/n4.html</a><span>]</span></span><span></span> \r\n</p>', 'http://www.doccms.com/UpdateLog/n4.html', '', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('5', '8', 'DocCms官方网站与官方论坛将于2012.11.01日正式推出！', '@@@', 'DocCms 官方 论坛 网站 稻壳', '最新消息，稻壳Cms官方网站与官方论坛将于2012.11.01日正式测试推出与广大用户见面，届时欢迎广大用户提出您宝贵的意见供我们改进，同时，DocCms X 与稻壳网也将在不久的将来会与大家见面， 敬请期待~', 'DocCms官方', 'DocCms X', '13', '2012-10-25 11:02:35', '0000-00-00 00:00:00', '0', '<p>\r\n	最新消息，稻壳Cms官方网站与官方论坛将于2012.11.01日正式测试推出与广大用户见面，届时欢迎广大用户提出您宝贵的意见供我们改进，同时，DocCms X 与稻壳网也将在不久的将来会与大家见面， 敬请期待~\r\n</p>\r\n<p>\r\n	<span><span>[文章来源：</span><a href=\"http://www.doccms.com/UpdateLog/n5.html\" target=\"_blank\">http://www.doccms.com/UpdateLog/n5.html</a><span>]</span></span><span></span> \r\n</p>', 'http://www.doccms.com/UpdateLog/n5.html', '', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('6', '8', 'DocCms 官方微博正式开放，欢迎广大用户关注！', '@@@', 'doccms 官方 微博 开放', '最新消息，稻壳Cms和稻壳网官方微博[ http://weibo.com/doccms 和 http://weibo.com/doooc ]已正式开放，欢迎广大用户关注，官方也会经常在官方微博第一时间为大家提供一些官方动向信息并接受广大粉丝的建议，同时在闲瞎之余也会与广大粉丝在官方微博进行互动。当然如果官方有正式的活动也会在微博上与广大粉丝讨论，DocCms官方感谢您的参与！', 'DocCms官方', 'DocCms X', '32', '2012-10-25 11:02:35', '0000-00-00 00:00:00', '0', '<p>\r\n	最新消息，稻壳Cms和稻壳网官方微博[ <a href=\"http://weibo.com/doccms\" target=\"_blank\">http://weibo.com/doccms</a> 和 <a target=\"_blank\" href=\"http://weibo.com/doooc\">http://weibo.com/doooc</a> ]已正式开放，欢迎广大用户关注，官方也会经常在官方微博第一时间为大家提供一些官方动向信息并接受广大粉丝的建议，同时在闲瞎之余也会与广大粉丝在官方微博进行互动。当然如果官方有正式的活动也会在微博上与广大粉丝讨论，DocCms官方感谢您的参与！\r\n</p>\r\n<p>\r\n	<span><span>[文章来源：</span><a href=\"http://www.doccms.com/UpdateLog/n6.html\" target=\"_blank\">http://www.doccms.com/UpdateLog/n6.html</a><span>]</span></span> \r\n</p>', 'http://www.doccms.com/UpdateLog/n6.html', '', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('7', '9', '企业网站与电子商务网站购买欲望和购买目标', '@@@', '企业网站，电子商务，购买，目标', '作为消费者，你能否有这样的阅历：你在当当网买了三年的书，但从来没有重视过图书频道主页，没有留心过图书专题Banner，也几乎没有用过图书导航目录。', '稻壳网', '稻壳网', '10', '2012-10-25 14:08:51', '0000-00-00 00:00:00', '0', '<h4>\r\n	作为消费者，你能否有这样的阅历：你在当当网买了三年的书，但从来没有重视过图书频道主页，没有留心过图书专题Banner，也几乎没有用过图书导航目录。\r\n</h4>\r\n<p>\r\n	你只用一个功用：查找。上淘宝，你能够也是这样：查找，然后过滤、排序，直至采办。<br />\r\n作为产物司理，你在计划网站导航、查找、频道主页、专题这四大站内进口时，你能否想过，它们面临的是不一样用户群；这不一样的用户群中，有人只重视产物价钱，而有人独特重视产物分析和谈论？<br />\r\n描绘电商网站的起点，就是晓得和细分你的用户，比方新用户和老用户。对用户细分另一个重要维度：就是自动用户和被迫用户：<br />\r\n自动用户：有采办愿望以及清晰采办方针，决议计划较独立，不易受搅扰；<br />\r\n被迫用户：有采办愿望但无清晰采办方针，需求被引导和影响；\r\n</p>\r\n<p>\r\n	关于自动用户，拿传统书店打比方吧，来后直奔方针书架或是问导购员xxx书放到什么地方，买上就走。<br />\r\n互联网的场景就是这样的：你是李开复的粉丝，一天他引荐一本书《我的成功不能仿制》，想必你会直奔当当，然后search，然后参加购物车。<br />\r\n仍是那家书店，若是你碰上它的周年庆，想必会进去逛逛，由于必定有扣头，这种闲逛行动，就是被迫用户。\r\n</p>\r\n<p>\r\n	我下面均以购书网站打比方，由于它典型、好知道。\r\n</p>\r\n<p>\r\n	<strong>从入站流量说起</strong><br />\r\n若是一个用户经过某书名进入到你的网站，当然了，着陆页(Landing Page)在图书具体页。这类用户，你的网站主页和产物导航，朴实成了铺排，由于他是自动用户:方针清晰。\r\n</p>\r\n<p>\r\n	若是一个用户经过品牌广告进入到网站主页，那么你应该引荐一些能够和他关联的书。比方他从某医学网站过来的，主页榜首二屏可以考虑是医学或摄生类；若是是旅游网站过来的，应该是…。由于他是被迫用户：方针不清晰，你需求引导他。\r\n</p>\r\n<p>\r\n	当然了，这对网站的描绘需求太高，当前除了亚马逊，当当也没有走到这一步：个性化。<br />\r\n你去京东上看了一款电源插座，然后你再去亚马逊主页，奇特的引荐发生了…，技能完成能够是根据http referer头，即前一个页面里的商品种类。\r\n</p>\r\n<p>\r\n	有一种破例，若是用户查找网站称号，然后再进入该网站，你真的不晓得他是自动仍是被迫，由于许多用户就是不愿意记域名，比方amazon(这就是为什么闻名网站在查找引擎热榜上都是抢手词)。他进入网站后，能够直奔search框，或在主页开端发愣。\r\n</p>\r\n<p>\r\n	<strong>关于主页</strong><br />\r\n当你晓得本来有自动用户和被迫用户之分后，能够一种挫折感情不自禁：我描绘这么富丽的主页，还每天任劳任怨地更新，居然少有问津？你可以做一种折中嘛：榜首屏人工引荐，其它几屏简略的机器引荐。<br />\r\n还有一种说法：我主页引荐都是热销品，占我每天销售额的20%，所以主页许多人都在重视。我不由要问，你真的断定他们不是从查找进入，然后发生采办？\r\n</p>\r\n<p>\r\n	若是你的网站70%都是老用户，会隔三差五回来逛逛，关于这类被迫用户，主页引荐商品的关联性和质量，就独特要害了，独特是Banner栏和限时抢购等。像排行榜类节目，完全是对准被迫型用户的。<br />\r\n互联网购物用户，传闻70%都没有清晰的采办方针。\r\n</p>\r\n<p>\r\n	<strong>关于导航和查找</strong><br />\r\n导航和查找，是任何电商网站的站内最中心进口。由于品类的不同，侧重点有所不一样，对标准和功用需求高的商品，以导航为主，比方鞋类、家电、手机类。<br />\r\n像图书这类海量无标准商品，通常仍是查找为主、导航为辅(以导航和查找流量散布可以看出)。\r\n</p>\r\n<p>\r\n	关于图书这类网站，若是用户经过目录导航进入到列表页，这类用户一定是被迫型用户：没有清晰的采办方针。他买什么，首要决定于商品列表榜首、二页的排序，即引荐次序。所谓引荐，就是商品的关联性，在不熟悉用户偏好情况下，通常是近期销量、好评度、上架时刻、点击量、收藏量等归纳起来的一个权重值。\r\n</p>\r\n<p>\r\n	当然了，这也有一个问题，就是引荐的总是抢手书、新书，那些经典老书就被萧瑟了。出一个经典老书频道？或是在图书具体页里有一模块：关联经典老书？或是，爽性等着晓得它的买主，search到它。\r\n</p>\r\n<p>\r\n	关于描绘师，描绘导航列表页时，可以给用户引荐一些专题或促销活动；而查找列表页，最棒干干净净，防止噪音，让用户更快地决议计划、下单(列表页都是过渡页)。\r\n</p>\r\n<p>\r\n	<strong>关于商品具体页</strong><br />\r\n无论是经过导航仍是查找，结尾进入商品具体页。当用户对该商品发生采办愿望后，他最有能够的目的，就是寻觅替代品(好像价位手机)或是附加品(如关联图书、iPad顺便的皮套)，也就是商品的"关联引荐"商品。\r\n</p>\r\n<p>\r\n	寻觅替代品：有采办愿望，但还没有清晰采办方针，他是以被迫用户身份进到具体页的。商品的的具体分析材料、商品谈论对他很灵敏，由于他处于商品晓得期间。<br />\r\n寻觅附加品：有采办愿望，一起现已清晰了采办方针，他是以自动用户身份进到具体页的。商品的具体分析材料他不是太重视，而价钱对他比拟灵敏，由于他处于采办决议计划期间。\r\n</p>\r\n<p>\r\n	关于从促销进到具体页的用户,大多数都是有采办愿望但无采办方针，他除了重视价钱自身，对商品具体信息也需求较高，由于从用户采办决议计划进程来看，一定是对商品自身有满足的晓得后，才会考虑下单。\r\n</p>\r\n<p>\r\n	关于从查找进到具体页的用户，就要细分了。从商品全名进入的(如"二号首长2″)，和从商品特点进入的(如"官场小说")，一个自动型，一个是被迫型(你来引荐一本给我吧，不过要"官场小说"哦)。\r\n</p>\r\n<p>\r\n	所以我一直在着重引荐体系是电商网站的中心基础设施。其间，从人的特点视点是个性化引荐，从商品的特点视点是关联引荐。<br />\r\n引荐体系，首要是对准被迫型消费者。比来盛行的社会化电子商务网站，如蘑菇街、秀丽说，都是对准被迫型消费者。这类网站实质是供给导购效劳，也就是淘宝客形式。像一淘这类比价网站，首要是对准自动型消费者。<br />\r\n你在亚马逊查找"二号首长2″，奇特的关联性引荐呈现了,如"省委班子"，但当当呢，距离啊…\r\n</p>\r\n<p>\r\n	<strong>关于促销和专题</strong><br />\r\n促销活动，首要是增强消费者的采办愿望，但对有清晰采办方针的用户，吸引力并不大。它首要是对准被迫型用户，所以，将这类被迫型用户的采办愿望，转变成清晰的采办方针，就要靠引荐体系了。专题就是一种引荐方法，比方春天了，"送给给老爸的摄生书"。\r\n</p>\r\n<p>\r\n	关于直奔查找的自动型用户，促销往往束手无策。若是你有一个淘宝店，90%流量都来自站外查找，若是你站内促销，估量作用不会太达观(淘宝双十一时咱们验证过)。\r\n</p>\r\n<p>\r\n	已然大多数自动型用户对网站主页Banner栏(促销进口)视若无睹，那么在商品具体页，可以考虑植入文字栏促销，由于它会强化处于"商品晓得、比拟"期间消费者的采办决计。对直接从商品具体页落地的用户，也会有协助。\r\n</p>\r\n<p>\r\n	电商网站的销售额布局，能够40%来自站内查找，40%来自目录导航，10%的主页、频道主页及专题，10%的关联引荐。<br />\r\n主页和关联引荐，占全站流量和销量比越高，阐明用户越被迫、越忠实(你引荐什么他就买什么)。<br />\r\n若是站内流量进口首要是查找，你就真得考虑你的用户构成了，估量八成都是新用户。<br />\r\n传闻amazon引荐体系发生的销售额占30%以上。\r\n</p>\r\n<p>\r\n	<strong>一句话总结：</strong><br />\r\n在产物描绘时，关于自动型用户，要晋升采办功率；关于被迫型用户，要强化关联引荐。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	[文章来源：<a href=\"http://www.doooc.com/index/content/t-%E4%BC%81%E4%B8%9A%E7%BD%91%E7%AB%99%E4%B8%8E%E7%94%B5%E5%AD%90%E5%95%86%E5%8A%A1%E7%BD%91%E7%AB%99%E8%B4%AD%E4%B9%B0%E6%AC%B2%E6%9C%9B%E5%92%8C%E8%B4%AD%E4%B9%B0%E7%9B%AE%E6%A0%87-b-6-id-12.shtml\" target=\"_blank\">稻壳网—企业网站与电子商务网站购买欲望和购买目标</a>]\r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>', 'http://www.doooc.com/index/content/t-企业网站与电子商务网站购买欲望和购买目标-b-6-id-12.shtml', '/upload/201210/201210251556023.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('8', '9', '2012 行业精英眼中的网站设计', '@@@', '稻壳网，网站，设计，精英', '"2011年，在网站描绘界最令你难忘的是什么？"我曾对业界精英们提出过这样的疑问。其间呈现了一个极端高频的词（猜猜？），而每小我都有许多话要说。当然，在看完以下的这些言辞，咱们十分欢送你大声的说出在2011年中令你形象深入的转变。', '稻壳网', '稻壳网', '6', '2012-10-25 14:19:02', '0000-00-00 00:00:00', '0', '<h4>\r\n	"2011年，在网站描绘界最令你难忘的是什么？"我曾对业界精英们提出过这样的疑问。其间呈现了一个极端高频的词（猜猜？），而每小我都有许多话要说。当然，在看完以下的这些言辞，咱们十分欢送你大声的说出在2011年中令你形象深入的转变。\r\n</h4>\r\n<p>\r\n	由衷的感谢各位能抽出时辰，答复这个问题。咱们收集了来自世界各地的作者、描绘师、顺序开发员、UI&amp;UX 描绘师、演讲人及来自各个专业社区的教授教授。（以下排名不分先后）\r\n</p>\r\n<p>\r\n	<strong>"网页的描绘办法不再受宽度的限制。呼应性描绘更好的协助咱们了解网站。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Steve Fisher——在Yellow Pencil作业室担任用户体会总监。世界闻名交互描绘师，演讲人以及开源传道者。一同任加拿大平面描绘师协会网站副总裁。<br />\r\n关于我来说2011年最显着的特点是互联网职业渐渐走向老练 。网页的描绘办法不再受宽度的限制。呼应性描绘（Responsive design）不只有助于晋升咱们关于网站的了解，一同也能加强客户对其的晓得。笼统咱们所要表达的内容，使之成为简练易懂的信息，一同从视觉作用来看网站的描绘，这些都很好的告知了咱们描绘的决定因素。本年的一系列改动，让我感到史无前例的振作。\r\n</p>\r\n<p>\r\n	<strong>"我期望在2012年'呼应性描绘'并不只仅一个抢手关键字，而是成为作为描绘人员所需具有的根底才干。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Sarah Parmenter——创立"You Know Who"描绘作业室，专心于网站用户界面描绘及iPhone和iPad使用顺序开发。<br />\r\n呼应性描绘和内容战略的鼓起，在2011年中最令我难忘，可以说它们是本年两大名贵的产业。我期望在2012年"呼应性描绘"并不只仅一个抢手关键字，而是成为作为描绘人员所需具有的根底才干，让更多的人晓得到咱们网站内容的重要性，并且中止选用"Lorem Ipsum"这种文字排版描绘办法。\r\n</p>\r\n<p>\r\n	<strong>"中心描绘实际上意味着：交流与问题处理，小我觉得如今咱们在这一层面上做的越来越好。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Vitaly Friedman——Smashingmagazine.com网站联合创始人兼首席主编，在线杂志描绘师。<br />\r\n本年，最令我形象深入的是关于呼应性描绘的承受程度大幅上升。跟着年代的变迁，在2012年咱们开端从头考虑，细细酌量咱们的网页描绘路途，在以林林总总挪动设备为王道的今日，关于行将面对的新应战，咱们该怎么找到处理方案。<br />\r\n中心描绘实际上意味着：交流与问题处理，而小我觉得如今咱们在这一层面上已做的越来越好。咱们见证了呼应性形式在网页描绘各部分中的树立——无论是音频/视频，仍是导航、表单、广告等，点滴的前进都那么令人振作。我深信，2012年会给咱们带来更多新式技能，而这关于改进web用户体会无疑又是一次浓墨重彩。我十分等待这个时辰的到来！\r\n</p>\r\n<p>\r\n	<strong>"2012年打破了惯例东西运用的办法。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Paul Irish——前段开发人员，Google Chrome开发联络员，jQuery开发团队成员，Modernizr、CSS3 Please和HTML5 Boilerplate首席开发人员。<br />\r\n从博客到网页端使用顺序，关于怎么将咱们的最佳作用成功的运用于咱们的作业并前进其功率还存有很大的开展空间。关于浏览器的内部运转需求构成一个明晰的概念，这样有助于最佳技能的辨认，然后创造出最佳的用户体会。与此一同，比方：Sass &amp; Compass, CodeKit, LiveReload 和ImageOptim这样的东西还能协助咱们处理网页浏览器撑持问题。我对2012年的到来现已刻不容缓了，咱们将创造出何种愈加抱负的用户体会。\r\n</p>\r\n<p>\r\n	<strong>"纯CSS logo（yak!）"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Harry Roberts——网页开发者、作家、描绘师，Smashing Magazine教授小组成员。<br />\r\n大多数人以为2011年关于网页描绘来说，是以适应性网页描绘、CSS测验、纯CSS logo（yak!）以及翻滚视差为代表的一年。而我以为，2011年的CSS充满活力，兼具实效性与前端高功能。或许有人觉得它以一个烦闷无聊的完毕完毕了这一年。但我却看到了web开发中一个更具应战性，更风趣，一同也更有用的一面。跟着用户界面变得愈加杂乱，咱们需求找到一条始终坚持简略代码的办法；一同，跟着挪动设备的多元化开展，咱们需求找到一条能让代码始终坚持高功能的办法。尽管大多数人仍沉溺于媒体查询（Media Query）和CSS3中，而我却预备从头开端，从头投入到CSS规划模块化、增强其可扩展性以及前端开发中。\r\n</p>\r\n<p>\r\n	<strong>"咱们都开端在考虑一些一同的问题，比方：1024像素宽的桌面。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Jonathan Snook——闻名Web开发与描绘师，从事 Web 前端描绘，后台开发以及 Adobe AIR 桌面使用的开发。<br />\r\n这一年中，最令我难忘的无疑是咱们关于怎么树立网站这一问题的思想观念的转变和改造。咱们都开端在考虑一些一同的问题，比方：1024像素宽的桌面。挪动和平板设备的大举喷井，迫使咱们去思索往后的描绘之路，以及该以何种更好的办法服务于咱们所呈现的内容。\r\n</p>\r\n<p>\r\n	<strong>"职业中呈现的不一样开展方向，令我兴奋不已。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Janna Hagan——从事网页描绘与开发。取得2011年.net年度青年描绘师称谓。<br />\r\n在2011年中最令我难忘的是HTML5与CSS3呼应性描绘的鼓起。职业中呈现的不一样开展方向以及在这一年中科技的迅速开展带来的一系列改动，都令咱们兴奋不已。改动与开展是不可避免的，咱们有必要用构思性的姿势去拥抱它。\r\n</p>\r\n<p>\r\n	<strong>"2011是挪动之年。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Paul Boag ——网站描绘公司Headscape创始人之一。从1994年起就迈入网站制造行当。常常于.net magazine，smashing magazine和web designer depot上宣布观念文章。<br />\r\n回忆2011年，在挪动互联网的热潮冲击下，呼应式网页描绘的呈现处理了由此带来的许多应战。如今不必额定付费就能在各种挪动终端上拜访各类网页了。最棒的是，新建的网页简直可以兼容一切挪动终端（无论是旧版或许升级版），其本钱运比原先的办法低。就小我而言，这可是一大前进。\r\n</p>\r\n<p>\r\n	<strong>"2011推翻了我一向的网页描绘思路。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Veerle Pieters ——比利时平面及网页描绘师。Duoh! n.v.的创始者之一。<br />\r\n某种程度上而言，2011年由于挪动网络的鼓起，推翻了我一向的网页描绘思路。当我在描绘的时分，我会尽能够的考虑到挪动这个概念。依据每个网站或许项意图类型以及其他元素，是可以做出完好的呼应式网页的。当然这就对我的思想定势带来的必定的应战，我要打破惯例贵，把那些条条框框的忌讳抛到脑后，立异就应该是这样，成功的著作就是这样炼出来的。<br />\r\n当然在创造过程中，仍是要谨记一些根本规范，会遇到像CSS代码这样的小妨碍。这就促进我在编码时，要更斗胆立异，我回绝故步自封。要描绘出一个彻底呼应式网页，我有必要尽能够地丢掉那些忌讳关键，这才是我的风格。其间的应战就是，需求在根本规范与特性发扬间坚持平衡。咱们可以在描绘中参加动画作用，这就是一种新思路。\r\n</p>\r\n<p>\r\n	<strong>"···你不可避免···"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Aaron Weyenberg ——网页描绘师、挪动使用顺序开发者。现作为TED大会演讲人之一。<br />\r\n2011年网页描绘里让我形象深入的是，呼应式描绘逐渐火起来了。曩昔几年，比较其他主题，有关呼应式网页描绘的东西、插件、资源、教育课程、研讨会小我觉得是最多的。尽管我如今无法承认这项技能的长时间实效性会怎么，可是它就是必需的——作为描绘师就愈加需求它了，你有必要学会且通晓这项技能，这样当接到项目时才干疾速反应是不是适合用这个技能。\r\n</p>\r\n<p>\r\n	<strong>"越来越多的网页描绘师挑选了滑动式规划而摒弃了固定排版式规划。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Eivind Uggedal ——wasitup.com及mediaqueri.es网站的创立者。<br />\r\n上一年1月当我创立的mediaqueri.es网站上线时，我还没想过呼应式网页描绘会在2011年如此大热。不只仅是我主张的一些网站都运用了这项技能，越来越多的网页描绘师挑选了滑动式规划而摒弃了固定排版式规划。咱们也发现了像The Botson Globe和Barack Obama这样高端的网站都改成了呼应式或自适应式版别从头上线了。\r\n</p>\r\n<p>\r\n	<strong>"若是你是网页创立团队的一分子，你不能够不为这些大事件欣喜若狂。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Peter Gasston ——从事于Top 10网站的开发。出书《The Book of CSS3: A Developer's Guide to the Future of Web Design》一书。常常于.Net杂志、CSS3.info网站上宣布文章。<br />\r\n我想说微软发布IE10是2011年一桩大事件，不只由于它跟着IE9接踵而来，更是由于IE10预览版在测验期间就现已显现出疾速、规范规范的功能了。并且，IE10是装备了Windows 8 tablet OS 操作系统——这标志着微软对敞开网页技能的决心，一同也是在向外界标明微软不服输。我深信关于敞开规范的剧烈竞赛，最大的受益者是用户，因而2011年我小我觉得形象最深入的就是这件事。\r\n</p>\r\n<p>\r\n	2011年，对咱们这个职业而言应该是很值得纪念：将来的使用软件从桌面到浏览器的网页搬迁，HTML5正在向世人证明它是跨平台使用开发的最佳挑选，另起炉灶的微软又发布了好的浏览器等等。若是你是网页创立团队的一分子，你不能够不为这些大事件欣喜若狂。我有发掘新浏览器特征的喜好，经过许多运用顶级及试验性的CSS,HTML和JavaScript的演示，肯定可以满意咱们的好奇心。\r\n</p>\r\n<p>\r\n	绝望仍是有的，比方互联网关联职业的迸发，致使浏览器言语呈现越来越多新的规范和特征， 使得一些人变得越发浮躁，缺少耐性，喜爱走捷径：他们表明不再撑持旧的浏览器，或许对不撑持关联功能的浏览器不再做过多的演示和典范（当这些浏览器不能履行关联特征时也不会保修）。所以仍是等待2012年网站创立的会更好吧。\r\n</p>\r\n<p>\r\n	<strong>"2011年是描绘年。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Aarron Walter ——《Designing for Emotion》一书作者，MailChimp首席用户体会描绘师。<br />\r\ngoogle从头描绘了Gmail，阅读器Reader, google地图Maps, google查找Search及其他门户网站，也是第一次看上去是google的描绘师而不是工程师影响着这些网站界面的开展。Facebook喜获许多描绘人才，在F8研讨会上预先展现了他们以故事为根底的新页面。跟着他们收买地理位置同享服务商Gowalla，新的一年Facebook的描绘方向无疑会发作耳濡目染的改动。上一年10月乔布斯的离世对整个描绘界影响颇大，让描绘师这一人物从头回归世人的视野，重燃了描绘师们的创造热心。2011咱们铭记描绘，2012咱们必将大展身手。\r\n</p>\r\n<p>\r\n	<strong>"乃至，还能更好。"<br />\r\n</strong> \r\n</p>\r\n<p>\r\n	Lea Verou ——网页前端技能开发人员，热衷于JavaScript、CSS3技能的开发。一同创立了Fresset公司。<br />\r\n2011年，业界开展不错。呼应式网页描绘从一个新鲜的酷炫玩意开展到每个网站的必需，CSS大热，CSS和JavaScript预处理变成了干流，新的页面技能结尾得以可行，新的使用顺序界面使许多不能够成为了能够，曩昔需求插件或许端代码，如今都不需求了。<br />\r\n但是，令我形象最深入的还不是个另外技能，而是整个职业的开展规划。咱们总会开发出新的东西，让咱们作业的更好，我以为曩昔几年特别是2011年，应该是历史上第一次浏览器的剧烈竞赛招引了网页开发者的注重，很欣喜的是咱们发现竞赛的方针不是相互厮杀，而是都在撑持敞开网页规范。<br />\r\n若是要向网页描绘师描绘曩昔二十几年咱们的生计，他们应该很难信任。那就让咱们中止诉苦，让他们晓得咱们现已走在了很前端，咱们现已做的很好了。乃至，还能更好。请系好安全带，跟着咱们一同，由于前进的列车立刻就要开动了。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span>[文章来源：</span><a href=\"http://www.doooc.com/index/content/t-2012+%E8%A1%8C%E4%B8%9A%E7%B2%BE%E8%8B%B1%E7%9C%BC%E4%B8%AD%E7%9A%84%E7%BD%91%E7%AB%99%E8%AE%BE%E8%AE%A1-b-6-id-13.shtml\" target=\"_blank\">2012 行业精英眼中的网站设计</a><span>]</span> \r\n</p>', 'http://www.doooc.com/index/content/t-2012+行业精英眼中的网站设计-b-6-id-13.shtml', '/upload/201210/2012102515575452.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('9', '9', '稻壳网浅谈WEB前端 如何成为一名优异的web前端工程师', '@@@', '稻壳网，前端，Web，工程师', '跟着互联网的迅猛开展和遍及，一个新式的职业逐步显现出来，它就是web前端。\r\n其实，"前端"这个词是2005年才逐步在国内鼓起的，在这几年中，web前端开发也逐步被开发人员注重，相应的也产生了一个新职位–前端工程师，Web前端开发技能包罗三个要素：HTML、CSS和JavaScript。', '稻壳网', '稻壳网', '5', '2012-10-25 14:29:06', '0000-00-00 00:00:00', '0', '<p>\r\n	跟着互联网的迅猛开展和遍及，一个新式的职业逐步显现出来，它就是web前端。\r\n</p>\r\n<p>\r\n	其实，"前端"这个词是2005年才逐步在国内鼓起的，在这几年中，web前端开发也逐步被开发人员注重，相应的也产生了一个新职位–前端工程师，Web前端开发技能包罗三个要素：HTML、CSS和JavaScript。\r\n</p>\r\n<p>\r\n	在web 1.0年代，用户运用互联网首要是阅读信息，那么，程序员在开发网站时用table+asp 根本上就能搞定全部，可是，跟着互联网的不断开展，简简略单的阅读信息现已不能满意用户的需要，应运而生的 web2.0 就需要网站不只是被阅读还要有让用户留言等交互功用，从此，前端的制造从静态html变换成了动态html即DHTML。也有人说，前端开发就是本来担任写静态页面的初级程序员，其实，前端开发不仅仅是写静态页面，首要 咱们要弄清楚那有些算是前端，那有些算是后端，用户的数据在刺进数据库之前的有些都可以算是前端，前端是HTML、CSS和客户端脚本的一种集成，即一个页面中包罗html+css+javascript(或其它客户端脚本)，它是用户直观体会和后台数据之间的一个不可或缺的桥梁，能做好前端开发作业的人员他必定是半个程序员，为什么这么说呢？首要，他需要了解用户的需要，对数据有必定的剖析才能，其次，他写js脚本有必要有一种编程思维，无论是在事务处理方面 仍是在代码标准方面都要有杰出的习气。\r\n</p>\r\n<p>\r\n	既然是前端 用户体会很重要，约瑟夫.派恩和詹姆士.吉尔摩在《体会经济》一书中提出其观念：所谓"体会"就是公司以商品为道具，以效劳为舞台，以顾客为中间，创造出可以使消费者全部参加、让消费者感到值得回想的活动。关于普通用户来说，无论你的后台是J2EE+Oracl的强壮组合仍是ASP+Access的简略组合，前端的用户体会却给了用户直观的形象。一个好的用户体会不仅能赢得用户的喜爱，增进用户的好感，还能给网站带来更多的效益。将来的用户体会有能够向声控、触控、体感等方向开展。可见，在web前端开发常识体系上既要有广度，又要有深度，web前端开发是从描绘和制造中独立出来的相对特别的作业，包括的常识面很广，既有详细的技能，又有笼统的理念。也可以简略地说，它的首要功能就是把网站的界面更好地出现给用户。\r\n</p>\r\n<p>\r\n	<strong>怎么成为一名优异的web前端工程师呢？</strong> \r\n</p>\r\n<p>\r\n	榜首、有必要熟练把握根本的web前端技能，比方：css、js、html、jquery 等等。\r\n</p>\r\n<p>\r\n	第二、有必要把握网站的功能优化、SEO、UE、效劳器端、兼容性、存在的bug等。\r\n</p>\r\n<p>\r\n	第三、学会用东西辅佐开发。\r\n</p>\r\n<p>\r\n	第四、有杰出的代码标准编写习气\r\n</p>\r\n<p>\r\n	web前端的远景宽广，爱好是最棒的教师。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span>[文章来源：</span><a href=\"http://www.doooc.com/index/content/t-%E7%A8%BB%E5%A3%B3%E7%BD%91%E6%B5%85%E8%B0%88WEB%E5%89%8D%E7%AB%AF+%E5%A6%82%E4%BD%95%E6%88%90%E4%B8%BA%E4%B8%80%E5%90%8D%E4%BC%98%E5%BC%82%E7%9A%84web%E5%89%8D%E7%AB%AF%E5%B7%A5%E7%A8%8B%E5%B8%88-b-6-id-14.shtml\" target=\"_blank\">稻壳网浅谈WEB前端 如何成为一名优异的web前端工程师</a><span>]</span><span></span> \r\n</p>', 'http://www.doooc.com/index/content/t-稻壳网浅谈WEB前端+如何成为一名优异的web前端工程师-b-6-id-14.shtml', '/upload/201210/20121025160601506.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('10', '9', '稻壳网谈网站策划重点和行业知识梳理', '@@@', '稻壳网，网站，策划，行业', '进行一个网站的描绘之前，清晰网站描绘的特性和特色是很重要的。下面分析网站建造全体策划描绘的一些根底知识。网站描绘包罗的内容是十分多的，大体分两个方面：\r\n\r\n一方面是运用制造网站的软件，如Dreamweaver，进行网页描绘、文字排版、链接的描绘、动态网页的描绘等。注重前期还要运用Photoshop或许是Fireworks等平面描绘软件完结平面描绘、静态无声图片描绘，依据需求，还可以运用Flash完结动画作用。\r\n另一方面是网站的延伸描绘。它是指脱离软件，在网站建造之前与之后进行的网站建造与策划，首要包罗', '稻壳网', '稻壳网', '1', '2012-10-25 14:30:03', '0000-00-00 00:00:00', '0', '<h4>\r\n	进行一个网站的描绘之前，清晰网站描绘的特性和特色是很重要的。下面分析网站建造全体策划描绘的一些根底知识。网站描绘包罗的内容是十分多的，大体分两个方面：\r\n</h4>\r\n<p>\r\n	一方面是运用制造网站的软件，如Dreamweaver，进行网页描绘、文字排版、链接的描绘、动态网页的描绘等。注重前期还要运用Photoshop或许是Fireworks等平面描绘软件完结平面描绘、静态无声图片描绘，依据需求，还可以运用Flash完结动画作用。\r\n</p>\r\n<p>\r\n	另一方面是网站的延伸描绘。它是指脱离软件，在网站建造之前与之后进行的网站建造与策划，首要包罗网站的主题定位和阅览群的定位、智能交互、制造策划、形象包装、宣扬推行等。\r\n</p>\r\n<p>\r\n	特征栏意图描绘\r\n</p>\r\n<p>\r\n	当清晰网站的主题和特性后，下一步就要环绕主题制造相应的内容。首要挑选相应的网站体裁，也就是说给网站定位。\r\n</p>\r\n<p>\r\n	以下为一些常见的网络栏意图体裁，期望对读者有必定的启示。\r\n</p>\r\n<p>\r\n	(1)关于商业类的一些网站节目\r\n</p>\r\n<p>\r\n	公司简介、公司动态、在线查找、购物消耗、网上招聘、产物分析、在线加盟、股市信息、盛行情报、阳光效劳、撑持下载、网上布告等。\r\n</p>\r\n<p>\r\n	(2)关于文娱生计类的一些网站节目\r\n</p>\r\n<p>\r\n	国画画廊、古典音乐、兵器博物馆、古今佳句名言、游戏排行榜、游戏地狱、金庸客栈、象棋世家、能吃是福、GIF动画库、陶艺园地、漫画六合、中国足球、拍摄沙龙、诙谐轻松、体育饱览、电子贺卡、旅行六合、电影世界、影视偶像、地理星空、MIDI金曲、宠物猫、儿歌专集等。\r\n</p>\r\n<p>\r\n	VI形象必不可少\r\n</p>\r\n<p>\r\n	所谓VI，浅显地讲就是经过视觉来一致网站的形象。一个好的公司网站和实体公司相同，也需求全体的形象包装和描绘。精确的、有构思的VI(Visual Identity，视觉辨认)描绘，对网站的宣扬推行有事半功倍的作用。在网站主题和称号断定后，需求思考的就是网站的VI形象了。其实，现实生计中的VI策划举目皆是，例如，肯德基公司全球一致的标记、颜色和产物包装，给人的形象极为深入。\r\n</p>\r\n<p>\r\n	接下来，分析一下网站VI形象的一些首要内容。\r\n</p>\r\n<p>\r\n	1. 网站Logo的描绘\r\n</p>\r\n<p>\r\n	网站Logo就是网站的标记。网站Logo是站点特征和内在的集中体现，要害想让阅览者看见Logo，就能联想起对应的站点。当前国内、世界的网站十分多，跟别的网站进行Logo链接交流是很有必要的。简略地说就是在他人的网站上放一个本人网站的Logo，用来链接到本人的网站。若Logo很引人注重图话，网站的阅览量就能相应地添加。\r\n</p>\r\n<p>\r\n	Logo标记的描绘构思来自用户本人的网站的称号和内容，可所以中文、英文字母，也可所以符号、图画，还可所以动物或许人物等。例如：baidu公司就是以"Baidu"加一个小脚丫及中文字"baidu"作为象征性标记的，很吸引人。\r\n</p>\r\n<p>\r\n	描绘 Logo 不单要思考在电脑高分辨率屏幕上的显现作用，还应该思考到网站开展到必定程度时，相应的推行活动所要到达的作用，使其在应用于各种媒体时，也能充沛发扬Logo的视觉作用。别的，应思考到网络Logo在传真、报纸、杂志等传媒介质上的单色作用与反白作用、在织物上的纺织作用、在车体上的油漆作用、制造徽章时的金属作用、墙面立体的外型作用等。\r\n</p>\r\n<p>\r\n	2. 网站的规范颜色\r\n</p>\r\n<p>\r\n	不可否认，网站给人的第一形象来自视觉作用，断定网站的规范颜色是适当重要的一步。不一样的颜色调配将发生不一样的视觉作用，能够会影响到阅览者的心情。网站颜色的挑选和断定，是依据网站所挑选的体裁和用户的小我性格特色所决议的。\r\n</p>\r\n<p>\r\n	"规范颜色"就是指能体现网站形象和延伸内在的颜色。例如：麦当劳的赤色条块、163邮箱主页的天蓝色等，都给人很恰当、很调和的视觉作用。\r\n</p>\r\n<p>\r\n	一个网站的规范颜色通常不超越三种，太多则会让人目不暇接。规范颜色要用于网站的标记、标题、主菜单和主色块，给人以全体一致的感受。当然其他颜色也可以运用，但仅仅作为装点和烘托，绝不能喧宾夺主。通常适合于网站规范色的颜色有：蓝色、黄/橙色、黑/灰/白色三大系列。\r\n</p>\r\n<p>\r\n	主张：\r\n</p>\r\n<p>\r\n	1. 建造网站之前，必定要晓得网站所要传达的信息和品牌。挑选可以加强这些信息的颜色。例如：在描绘一个着重稳健的金融机构的网站时，首选冷色系，柔软的颜色，如蓝色、灰色或许绿色。在这样的情况下，若是运用暖色系或生动的色系，能够会损坏该网站品牌。\r\n</p>\r\n<p>\r\n	2. 还要晓得此网站的阅览集体。文明差异能够会使颜色发生非预期的反响。一起，还要晓得，不一样区域与不一样年龄层对颜色的反响也会有所不一样。\r\n</p>\r\n<p>\r\n	3. 网站的描绘不要运用过多的颜色。主色系及润饰色共挑选四或五个颜色就够了，太多的颜色会招致混杂，相同也会涣散阅览者的注重力。\r\n</p>\r\n<p>\r\n	4. 在阅览的有些运用比照色。由于若是颜色太挨近，无法发生满足的比照作用，也会阻碍阅览者阅览。通常白底黑字的阅览作用最棒。\r\n</p>\r\n<p>\r\n	5. 通常在描绘网站时，选用灰色阶来测验比照。当用户在处置黑色、白色和灰色以外的颜色的时分，有时分会很难决议每个颜色的相对值，为了要承认色盘能供给满足的比照，可以树立一个仿真网站，并将它转换成灰色阶。\r\n</p>\r\n<p>\r\n	6. 描绘网站时，挑选颜色也要注重时效性。同一个颜色很简略就充满整个商场，且消耗者很快就会对盛行颜色感到麻痹。换一个视点来看，用户可以运用几十年前的盛行颜色，导致大家的复古之情。\r\n</p>\r\n<p>\r\n	7. 在用软件描绘网页的时分，挑选颜色时请思考功用性的颜色，别忘了将要害信息有些设置为功用性的颜色，如标题和超链接等。\r\n</p>\r\n<p>\r\n	8. 还要注重网站色差问题。每一个网站开发人员都晓得，即使是网络通用颜色，在跨平台显现的时分也会不一样。\r\n</p>\r\n<p>\r\n	在颜色的运用过程中，还应注重的一个问题是：由于国家、种族、宗教和崇奉的不一样，以及地理位置、文明涵养的差异等，不一样的人群对颜色的喜爱有着很大的差异。所以在描绘时需求思考首要用户群的构成和布景。\r\n</p>\r\n<p>\r\n	通常来说，不一样的颜色所传达的意义亦有不一样，例如：\r\n</p>\r\n<p>\r\n	赤色：代表了热心、浪漫、火焰、暴力、侵犯。赤色在许多文明中代表的是中止的信号，用于正告或制止一些举措。\r\n</p>\r\n<p>\r\n	紫色：代表了发明、谜、忠实、奥秘、稀有。紫色在某些文明中与逝世有关。\r\n</p>\r\n<p>\r\n	蓝色：代表了忠实、安全、保存、安静、冷酷、哀痛。\r\n</p>\r\n<p>\r\n	绿色：代表了天然、安稳、生长、吃醋。绿色在某些文明中与环保有关。\r\n</p>\r\n<p>\r\n	黄色：代表了亮堂、光芒、疾病、窝囊。\r\n</p>\r\n<p>\r\n	黑色：代表了才能、精巧、现代感、逝世、病态、凶恶。\r\n</p>\r\n<p>\r\n	白色：代表了纯真、单纯、洁净、真理、平和、冷漠、匮乏。\r\n</p>\r\n<p>\r\n	3. 描绘规范字体\r\n</p>\r\n<p>\r\n	规范字体是指用于标记、标题、主菜单的特有字体。通常网站默许的字体是宋体。当然为了体现网站的"与众不一样"，可以依据需求挑选一些独特字体。例如：为了体现专业，可以运用粗仿宋体;体现描绘精巧，可以用广告体;体现亲热随意，可以用手写体等。总归，要依据本人网站所表达的内容，挑选恰当的字体。\r\n</p>\r\n<p>\r\n	当前常见的中文字体就有二三十种，常见的英文字体有近百种，网络上还有许多专用的英文艺术字体可以下载，所以要寻觅一款满足的字体，并不艰难。需求阐明的是：要运用非默许字体，就必须把文字内容设置成图片的格局，由于一有些阅览者的计算机里没有装置这些字体，无法正常显现，这样辛苦描绘的著作便会付诸东流。\r\n</p>\r\n<p>\r\n	宣扬广告定位\r\n</p>\r\n<p>\r\n	网站的宣扬标语在不一样程度上会体现网站的精力、网站的方针，即用一句话乃至一个词来高度归纳了网站的内容，类似于实际生计中的广告金句。例如，动感地带的广告语"我的地盘，听我的"、麦当劳的"我就喜爱"。\r\n</p>\r\n<p>\r\n	当然，公司若是有本人的宣扬语，就可以直接用做网站的宣扬标语，若是是推行产物型的网站，最棒运用产物的宣扬广告语。\r\n</p>\r\n<p>\r\n	布局布局的定位\r\n</p>\r\n<p>\r\n	断定网站的布局，就是在清晰方针的根底上，完结网站的构思构思，即整体描绘方案。这是在体裁选定之后很重要的一步，要做到主题鲜明杰出、关键清晰，就要以简略清晰的语言和画面体现站点的主题。调集全部手法充沛体现站点的特性和情味，体现出网站的特色。\r\n</p>\r\n<p>\r\n	网站应具有的基本成分包罗以下几项内容：\r\n</p>\r\n<p>\r\n	(1)页头：精确无误地标识用户的站点和公司标记。\r\n</p>\r\n<p>\r\n	(2)联系方式：如公司的地址、电话和E-mail地址。\r\n</p>\r\n<p>\r\n	(3)版权信息：声明版权所有者等。\r\n</p>\r\n<p>\r\n	要全部细心地计划和架构一个网站，通常可以选用树状布局，把每个页面的内容纲要列出来。特别当用户要制造的网站比较大时，计划架构好网站就十分重要了，一起还要思考到今后能够的扩充性，以免做好后又要对架构一改再改，浪费资源与精力。\r\n</p>\r\n<p>\r\n	纲要列出来后，还要思考页面与页面之间的链接联系，是星型、树型，仍是网型链接，当然这也是分辨一个网站好坏的重要标记。链接紊乱、层次不清的站点会形成阅览艰难的问题，影响内容的发扬。\r\n</p>\r\n<p>\r\n	为了进步阅览功率，便利材料的寻觅，通常的网站布局常选用"蒲公英"式，即所有的首要链接都在主页上，主次超链接相互之间的链接是可逆的，如图1-7所示的"蒲公英"式，其间，"盛行动态"、"最新专辑"、"在线听歌"、"音乐教室"、"星光灿烂"为大版块，查找引擎、歌曲排行、友情链接在主页上做一个简略的功用或许链接就可以了。\r\n</p>\r\n<p>\r\n	布局断定下来之后，就可以有条不絮地往下进行，布局会为网站将来的开展打下杰出的根底。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span>[文章来源：</span><a href=\"http://www.doooc.com/index/content/t-%E7%A8%BB%E5%A3%B3%E7%BD%91%E8%B0%88%E7%BD%91%E7%AB%99%E7%AD%96%E5%88%92%E9%87%8D%E7%82%B9%E5%92%8C%E8%A1%8C%E4%B8%9A%E7%9F%A5%E8%AF%86%E6%A2%B3%E7%90%86-b-6-id-15.shtml\" target=\"_blank\">稻壳网谈网站策划重点和行业知识梳理</a><span>]</span> \r\n</p>', 'http://www.doooc.com/index/content/t-稻壳网谈网站策划重点和行业知识梳理-b-6-id-15.shtml', '/upload/201210/20121025155922517.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('11', '9', '如何提高网页速度优化 提高用户体验', '@@@', '网站，网页，优化，速度，体验', '网站的加载速度是许多web工程师都面对的问题，关于一个网站来说，加速网站拜访速度不光进步了用户体会，而且关于SEO也有很大的影响。网页的加载速度快了，搜索引擎蜘蛛抓取的页面也就多了，然后增加了录入、增长了流量。那么在网页速度优化方面应该从哪些方面下手呢？', '稻壳网', '稻壳网', '4', '2012-10-25 14:31:05', '0000-00-00 00:00:00', '0', '<h4>\r\n	<strong>1.网页速度优化</strong> \r\n</h4>\r\n<p>\r\n	<span></span><span>[文章来源：</span><a href=\"http://www.doooc.com/index/content/t-%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E7%BD%91%E9%A1%B5%E9%80%9F%E5%BA%A6%E4%BC%98%E5%8C%96+%E6%8F%90%E9%AB%98%E7%94%A8%E6%88%B7%E4%BD%93%E9%AA%8C-b-6-id-16.shtml\" target=\"_blank\">如何提高网页速度优化 提高用户体验</a><span>]</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	网站的加载速度是许多web工程师都面对的问题，关于一个网站来说，加速网站拜访速度不光进步了用户体会，而且关于SEO也有很大的影响。网页的加载速度快了，搜索引擎蜘蛛抓取的页面也就多了，然后增加了录入、增长了流量。那么在网页速度优化方面应该从哪些方面下手呢？\r\n</p>\r\n<p>\r\n	1)尽可能的削减页面中的dom元素，铲除网页中一些冗余的代码。若是需求的化，咱们可以把代码中的注释去掉，乃至空行空格之类的也去掉。这样可以加速浏览器的加载速度和烘托速度。\r\n</p>\r\n<p>\r\n	2)CSS Sprites，可以把网站中一些比拟通用的图片进行兼并，然后运用CSS布景定位技能来调用图片的不一样有些，这样可以大大的削减HTTP的恳求。\r\n</p>\r\n<p>\r\n	3)为图片指定宽度与高度，为每一个图片都指定一个width特点与height特点，浏览器会预先留出既定的方位，图片下边的代码可以持续加载而不必等候。\r\n</p>\r\n<p>\r\n	4)优化图片的巨细，将每一张图片都保管成web所用格局，并将质量优化到50-65之间。颜色丰厚的图片运用jpg格局，颜色单一的图片运用gif格局，需求设置透明度的图片运用png格局。\r\n</p>\r\n<p>\r\n	5)运用浏览器缓存，为一些不常常改变的文件设置一个相对较长的过期时刻，留在缓存中的文件就不必再向服务器宣布HTTP恳求了，这样削减了浏览器向服务器宣布的HTTP恳求数。\r\n</p>\r\n<p>\r\n	6)在服务器端启用GZIP紧缩，当启用了GZIP后，网站服务器向客户端传输数据之前，是颠末紧缩了的，然后减小了浏览器的负载量。\r\n</p>\r\n<p>\r\n	7)将css款式表放在html页面头部进行预加载，尽量不要在款式中运用css表达式。\r\n</p>\r\n<p>\r\n	8)将js代码放在html页面底部最终加载。\r\n</p>\r\n<p>\r\n	9)尽量不要再html页面中刺进iframe。\r\n</p>\r\n<p>\r\n	<strong>2.网页加载及烘托</strong> \r\n</p>\r\n<p>\r\n	2.1.网页加载次序\r\n</p>\r\n<p>\r\n	1)IE下载的次序是从上到下，烘托的次序也是从上到下，下载和烘托是一同进行的。\r\n</p>\r\n<p>\r\n	2)在烘托到页面的某一有些时，其上面的一切有些都现已下载完结（并不是说一切相关联的元素都现已下载完）\r\n</p>\r\n<p>\r\n	3)若是遇到语义解释性的标签嵌入文件（JS脚本，CSS款式），那么此刻IE的下载进程会启用独自衔接进行下载。而且在下载后进行解析，解析进程中，中止页面一切往下元素的下载，堵塞加载。\r\n</p>\r\n<p>\r\n	4)当引证了JS的时分，浏览器发送1个js request就会一向等候该request的回来。因为浏览器需求1个安稳的DOM树结构，而JS中很有可能有代码直接改变了DOM树结构，比方运用 document.write 或 appendChild,乃至是直接运用的location.href进行跳转，浏览器为了避免出现JS修正DOM树，需求从头构建。\r\n</p>\r\n<p>\r\n	5)款式表在下载完结后，将和曾经下载的一切款式表一同进行解析，解析完结后，将对此前一切元素（含曾经现已烘托的）从头进行烘托。\r\n</p>\r\n<p>\r\n	6)JS、CSS中如有重界说，后界说函数将掩盖前界说函数DOM树的情况，所以 就会堵塞其他的下载和出现。\r\n</p>\r\n<p>\r\n	2.2.html页面加载解析流程\r\n</p>\r\n<p>\r\n	1)用户输入网址（假设是个html页面，而且是第一次拜访），浏览器向服务器宣布恳求，服务器回来html文件；\r\n</p>\r\n<p>\r\n	2)浏览器开端载入html代码，发现＜head＞标签内有一个＜link＞标签引证外部CSS文件；\r\n</p>\r\n<p>\r\n	3)浏览器又宣布CSS文件的恳求，服务器回来这个CSS文件；\r\n</p>\r\n<p>\r\n	4)浏览器持续载入html中＜body＞有些的代码，而且CSS文件现已拿到手了，可以开端烘托页面了；\r\n</p>\r\n<p>\r\n	5)浏览器在代码中发现一个＜img＞标签引证了一张图片，向服务器宣布恳求。此刻浏览器不会比及图片下载完，而是持续烘托后边的代码；\r\n</p>\r\n<p>\r\n	6)服务器回来图片文件，因为图片占用了必定面积，影响了后边阶段的排布，因而浏览器需求回过头来从头烘托这有些代码；\r\n</p>\r\n<p>\r\n	7)浏览器发现了一个包括一行Javascript代码的＜script＞标签，从速运转它；\r\n</p>\r\n<p>\r\n	8)Javascript脚本履行了这条句子，它指令浏览器躲藏掉代码中的某个＜div＞ （style.display="none"）。杯具啊，俄然就少了这么一个元素，浏览器不得不从头烘托这有些代码；\r\n</p>\r\n<p>\r\n	9)总算比及了＜/html＞的到来，浏览器泪如泉涌……\r\n</p>\r\n<p>\r\n	10)等等，还没完，用户点了一下界面中的"换肤"按钮，Javascript让浏览器换了一下＜link＞标签的CSS途径；\r\n</p>\r\n<p>\r\n	11)浏览器召集了在座的各位＜div＞＜span＞＜ul＞＜li＞们，"大伙儿拾掇拾掇行李，咱得从头来过……"，浏览器向服务器恳求了新的CSS文件，从头烘托页面。\r\n</p>\r\n<p>\r\n	<strong>3.网页速度优化东西</strong> \r\n</p>\r\n<p>\r\n	3.1.firefox插件firebug\r\n</p>\r\n<p>\r\n	1)Firebug 是网页浏览器 Mozilla Firefox 下的一款开发类插件。\r\n</p>\r\n<p>\r\n	2)它集HTML检查和修改、Javascript控制台、网络情况监视器于一体，是开发JavaScript、CSS、HTML和Ajax的得力助手。\r\n</p>\r\n<p>\r\n	3)Firebug从各个不一样的视点剖析Web页面内部的细节层面，可以监控恳求头、呼应头、显现资源加载瀑布图，给Web开发者带来很大的便当。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/upload/Image/20121025/20121025094103_93946.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	3.2.yahoo开发东西yslow\r\n</p>\r\n<p>\r\n	1)装置YSlow有必要首要先装置 Firebug。\r\n</p>\r\n<p>\r\n	2)YSlow可以对网站的页面进行剖析，并通知你为了进步网站功能，怎么根据某些规矩而进行优化。\r\n</p>\r\n<p>\r\n	3)YSlow可以剖析任何网站，并为每一个规矩发生一个全体陈述，若是页面可以进行优化，则YSlow会列出具体的修正意见。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/upload/Image/20121025/20121025094112_98453.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	3.3.page speed\r\n</p>\r\n<p>\r\n	1)Page Speed 是开源 Firefox/Firebug 插件。\r\n</p>\r\n<p>\r\n	2)Page Speed 对网站的网络服务器装备和前端代码履行若干测验。这些测验根据一组已知可增强网页功能的最佳理论。\r\n</p>\r\n<p>\r\n	3)在网页上运转 Page Speed 的网站管理员会取得一组对准各网页的分数，以及有关怎么改进网页功能的有用主张。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/upload/Image/20121025/20121025094128_48325.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	3.4.httpwatch\r\n</p>\r\n<p>\r\n	1)HttpWatch是强壮的网页数据剖析东西。\r\n</p>\r\n<p>\r\n	2)它是集成在Internet Explorer东西栏。\r\n</p>\r\n<p>\r\n	3)HttpWatch 是一款可以搜集并显现页页深层的信息。它可以在显现网页一同显现网页恳求和回答的日志信息。乃至可以显现浏览器缓存和IE之间的交流信息。\r\n</p>\r\n<p>\r\n	4)每一个HTTP记载都可以具体的剖析其 Cookies、音讯头、字符查询等信息。撑持HTTPS及剖析陈述输出为XML、CSV等格局。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/upload/Image/20121025/20121025094140_11106.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'http://www.doooc.com/index/content/t-如何提高网页速度优化+提高用户体验-b-6-id-16.shtml', '/upload/201210/20121025160001827.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('12', '9', md'看谷歌中文官方博客指导改善网站的若干基本建议', '@@@', '谷歌，博客，改善网站，建议', '谷歌中文官方博客今天发布博文，供给协助改善网站的若干根本主张。谷歌官方表明，经过对受约请的非营利性公益网站诊断，谷歌总结出一些网站需求改善的当地，而这些主张相同适用于非公益性网站。', '稻壳网', '稻壳网', '0', '2012-10-25 14:33:19', '0000-00-00 00:00:00', '0', '<h4>\r\n	谷歌中文官方博客今天发布博文，供给协助改善网站的若干根本主张。谷歌官方表明，经过对受约请的非营利性公益网站诊断，谷歌总结出一些网站需求改善的当地，而这些主张相同适用于非公益性网站。\r\n</h4>\r\n<p>\r\n	主张内容如下：\r\n</p>\r\n<p>\r\n	1. 请开始运用谷歌网站站长东西\r\n</p>\r\n<p>\r\n	咱们发现，有些网站从未运用过谷歌网站站长东西，也不知道这个东西的便利之处。谷歌网站站长东西可以就网页在Google查找成果中的可见性为您供给具体的陈述。这是一款主动晋级的产物，为网站站长供给网站信息、协助您自行处理多个恳求。经过学习，您就可以自行完结许多使命了，比方：检查网站状况，知道您的网站链接，或铲除网站上的歹意内容。因而，咱们激烈主张您运用这一东西。开始运用前，您只需增加您的网站并进行验证。此外，咱们还向您引荐这个视频，直观地分析了怎么运用这种东西，使其发扬类似于SEO（查找引擎优化）的效果。\r\n</p>\r\n<p>\r\n	2. 改善您的网站标题\r\n</p>\r\n<p>\r\n	若是用户用Google查找您的网站，他们可以会首要看到您的网站标题。标题是协助Google和用户知道网站重要内容的最直接的办法。咱们主张为网站的一切网页都装备一个有用、阐明性强的标题，您可参阅咱们的协助页面获取协助。抱负情况下，好的标题应包罗安排名称和描绘性标签。接下来，咱们举有些已提交的网站为例阐明：\r\n</p>\r\n<p>\r\n	示例：\r\n</p>\r\n<p>\r\n	1. 安排：橄榄树残疾人交流平台\r\n</p>\r\n<p>\r\n	标题：橄榄树残疾人交流平台\r\n</p>\r\n<p>\r\n	论坛 残疾人工作 残疾人结交、训练、孵化中间 关爱残疾人\r\n</p>\r\n<p>\r\n	2.安排：格桑花西部助学网\r\n</p>\r\n<p>\r\n	标题：格桑花西部助学网 - 格桑花教诲救助会官方网站|慈悲|结对|1对1|1+1\r\n</p>\r\n<p>\r\n	您可以看到，好的标题应包罗安排名称和描绘性标签。网站上的每一个网页都是异乎寻常的，所以应当为不相同的网页创立不相同的标题，显示您网站的多元性。并且，这也有助于用户知道此网页与网站中其他网页的不相同之处。\r\n</p>\r\n<p>\r\n	3. 注重描绘性元标签\r\n</p>\r\n<p>\r\n	网站标题标签与描绘性元标签都是协助进步网站在Google查找成果中的可见性的简略易行的办法。它们可以会直接影响到您的网站被点击的可以性。不过，咱们看到有些网站站长仍未能充分运用这些办法。此前，咱们现已发布了一篇博客，评论怎么改善阐明性元标签。关于这一点，咱们再来看看现已提交的网站中一个很好的比如。\r\n</p>\r\n<p>\r\n	若是未选用描绘性元标签，或元标签的内容不具关联性，Google将主动从网站内容中挑选页面摘要。请注意，您可以经过多种战略挑选页面摘要，因而，您的元标签描绘最棒内容丰富、实在牢靠、与网站内容一致。\r\n</p>\r\n<p>\r\n	4. 充分发扬h元素的效果\r\n</p>\r\n<p>\r\n	检查网页的标题是Google查找引擎算法断定网页内容的办法之一，它能协助咱们知道网页内容的优先特点。\r\n</p>\r\n<p>\r\n	标题中的h元素让Google和用户疾速知道您的安排和网站上面的重要信息。关于Google和用户而言，h元素编号越低，文本越重要，所以请充分运用 h1 标签的效果。即便您不知道 h1 标签的视觉烘托办法，您也可以改动它在您的CSS中的外观。\r\n</p>\r\n<p>\r\n	5. 在图画中运用alt文本\r\n</p>\r\n<p>\r\n	咱们发现，许多公益网站都喜欢展现图片，但大有些网站都未能恰当地运用图画的alt特点。若是运用妥当，这种特点不只可以协助Google知道您的图片，还可以协助那些运用文本格式阅览器、拜访受限或运用受限设备的用户知道您的图片。\r\n</p>\r\n<p>\r\n	请注意，若是您计划展现多幅图片，网速也有可以受到影响。此刻恰当地运用alt特点将发扬重要的效果。抱负的alt文本应当内容丰富，阐明性强。\r\n</p>\r\n<p>\r\n	6. 通知Google能否抓取\r\n</p>\r\n<p>\r\n	网站地图与robots.txt 在这次活动中，咱们发现大有些已提交的网站都没有供给网站地图。创立并提交网站地图有助于保证Google知道您网站上的一切网页，包罗那些可以不会被Google一般抓取流程发现的URL。就像咱们主张您依照逻辑办法安排网页相同，以逻辑办法安排整个网站布局也相同重要，尤其是在必要情况下，供给站内关联文档的链接。\r\n</p>\r\n<p>\r\n	另一方面，许多公益安排城市触及一些重要信息。对准这一问题，您可以创立一个恰当的robots.txt文件，通知Google查找引擎不抓取这有些内容。\r\n</p>\r\n<p>\r\n	7. www 还对错www？\r\n</p>\r\n<p>\r\n	这是咱们在现已提交的网站中发现的别的一个问题。关于有些网站，加了www就能正常运作，可是去掉www就无法翻开。在这种情况下，咱们主张您运用301重定向功用指向您的首选域名。您可以检查运用网站站长东西设置首选域的关联功用。\r\n</p>\r\n<p>\r\n	8. 运用正确的HTTP成果代码\r\n</p>\r\n<p>\r\n	别的一种常见的问题是许多网页回来过错的HTTP成果代码。有些网站的过错网页没有回来HTTP成果代码404，而回来了HTTP成功代码200。只要的确可以拜访的文档才应该回来HTTP成功成果代码200。若是网页现已不存在，应当回来代码404（表明"该页面不存在"）。您可以运用网站站长东西中的 Googlebot抓取办法功用、Live HTTP Headers Firefox 附加组件等第三方东西或web-sniffer.net检查一切URL的Header回答。\r\n</p>\r\n<p>\r\n	9. 用户都喜欢速度快的网站。\r\n</p>\r\n<p>\r\n	咱们发现大多数用户非常注重网站速度。若是阅览器需求很长时刻才干翻开您的网页，有的用户可以不会有耐性等候或阅览您的网站。为此，咱们供给多种东西和主张，协助网站站长知道并优化网站的功能。最简略的入门办法就是运用Page Speed Online，还有大受欢迎的网络版Page Speed Chrome 扩大。咱们还具有很多来自Google和其他网站的资源，可协助加速您的网站速度，咱们主张您阅览这篇文章。\r\n</p>\r\n<p>\r\n	别的，您还需求保证用户可以轻松、迅速地找到您的联络信息/志愿者/撑持效劳的信息。这次咱们企图与有些已提交的网站取得联络，但咱们发现需求很长时刻才干找到他们的联络信息，所以要牢记将此类内容置于主域名的夺目方位。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span>[文章来源：</span><a href=\"http://www.doooc.com/index/content/t-%E7%9C%8B%E8%B0%B7%E6%AD%8C%E4%B8%AD%E6%96%87%E5%AE%98%E6%96%B9%E5%8D%9A%E5%AE%A2%E6%8C%87%E5%AF%BC%E6%94%B9%E5%96%84%E7%BD%91%E7%AB%99%E7%9A%84%E8%8B%A5%E5%B9%B2%E5%9F%BA%E6%9C%AC%E5%BB%BA%E8%AE%AE-b-6-id-17.shtml\" target=\"_blank\">看谷歌中文官方博客指导改善网站的若干基本建议</a><span>]</span><span></span> \r\n</p>', 'http://www.doooc.com/index/content/t-看谷歌中文官方博客指导改善网站的若干基本建议-b-6-id-17.shtml', '/upload/201210/20121025160057839.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('13', '9', '企业对外服务窗口，稻壳网看新浪企业微博为人民和企业服务', '@@@', '企业，微博，稻壳网，服务', '公​司微博，也就是新浪微博公司版，是新浪微博为公司和组织用户定制的效劳平台，跟一般微博有必定的差异，意图是协助公司更好的推行本人的公司和产物，晋升与粉丝互动的作用和功率，功用相对更强壮一些。', '稻壳网', '稻壳网', '0', '2012-10-25 14:34:00', '0000-00-00 00:00:00', '0', '<h4>\r\n	<span style=\"color:#444444;font-size:16px;line-height:26px;\">公司微博，也就是新浪微博公司版，是新浪微博为公司和组织用户定制的效劳平台，跟一般微博有必定的差异，意图是协助公司更好的推行本人的公司和产物，晋升与粉丝互动的作用和功率，功用相对更强壮一些。</span> \r\n</h4>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	上个月公司微博2.0开端在一些帐户中测验，2.0版别在功用上很大的更新。在咱们咱们的读者群中能够每一个创业公司都是潜在的公司微博用户，所以跟咱们共享一下咱们试用2.0版别后的感触以及剖析2.0版公司微博的主要功用，供咱们参阅。据咱们知道，很快新浪微博将约请现有运用公司微博1.0的公司切换为这个公司微博2.0版别。\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	<strong>主页（公司管理主页）</strong> \r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	主页最显着的改变是输入框顶部多了微博指数模块，在这里你可以看到昨日的净增粉丝数、活泼粉丝比、博文曝光量（被展现的数量）等三个数据。这三个数据是对公司微博推行作用的一个会集展现，都很容易懂，你还可以点击检查更多数据，包罗你的微博被转发数、谈论数计算，所发微博转发、曝光量Top 10，以及每个链接被点击的次数等。\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	<strong>左侧导航栏－数据中间</strong> \r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	左侧导航栏有和最原始微博相同的「音讯中间」功用，也就是检查@、谈论和私信的当地。下面的「数据中间」则是公司微博2.0的要点有些。\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	点击下面恣意的推行剖析（前面说到的检查更多数据实践上是跳到这个模块下）、粉丝剖析、微博页面剖析或使用剖析就会跳到相应的剖析页面。剖析页面相当于微博版的Google Analytics，可以让你剖析净增粉丝数、活泼粉丝比、页面流量、独立访客乃至粉丝性别、粉丝年纪等。\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	新浪本人做了一个简略的图表，将数据剖析的一切功用罗列出来了，功用很强壮：\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	<strong>使用中间（使用广场）：</strong> \r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	"我的使用"这个版块看起来和创业公司最关联，其间"使用广场"包括有专门为公司供给的各类使用，公司可以按需要挑选加载。但由于公司微博2.0还没有正式对一切公司敞开，当前"使用广场"中的使用还数量并不多。可是我猜往后这个广场能够会向App Store方向开展，具有采办付出等功用，能够会成为第三方使用开发者，创业公司取得收入的一个方法。而且我觉得这里的使用比一般新浪微博上的使用实践运用价值更高一些，由于它专门为公司用户开发。\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	最终一个非常重要的点，公司微博2.0让任何用户在翻开公司用户页面时速度晋升了许多，根本上和翻开个人用户页面差不多。不像如今翻开公司微博用户页面首要看到一个小圈圈在转，仍是很检测人耐性的。\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	<strong>总结：</strong> \r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	国内公司对本人网站根本很少使用起来，既没有专门的人去保护（不注重、没有专门的人）又不去做推行（除了去baidu竞价排名公司也想不出什么方法推行），我觉得公司微博在必定程度上可以做到传统公司网站的工作，而且有些当地可以做得更好，比方微博的转发机制让任何公司都有机会把本人的内容传递给其他用户，一起公司在微博上也可以做客服、处置公关事情等。\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	新版公司微博在功用上愈加契合公司在运营过程中的实在需要，关于那些已经是公司帐户的微博用户，可以等候新浪微博官方的约请晋级，那些还不是公司帐户的微博用户，我主张可以思考晋级到公司版微博，当然是2.0版。\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#444444;font-size:16px;vertical-align:baseline;\">\r\n	<span>[文章来源：</span><a href=\"http://www.doooc.com/index/content/t-%E4%BC%81%E4%B8%9A%E5%AF%B9%E5%A4%96%E6%9C%8D%E5%8A%A1%E7%AA%97%E5%8F%A3%E7%A8%BB%E5%A3%B3%E7%BD%91%E7%9C%8B%E6%96%B0%E6%B5%AA%E4%BC%81%E4%B8%9A%E5%BE%AE%E5%8D%9A%E4%B8%BA%E4%BA%BA%E6%B0%91%E5%92%8C%E4%BC%81%E4%B8%9A%E\" target=\"_blank\">企业对外服务窗口，稻壳网看新浪企业微博为人民和企业服务</a><span>]</span><span></span><span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 'http://www.doooc.com/index/content/t-企业对外服务窗口|稻壳网看新浪企业微博为人民和企业服务-b-6-id-18.shtml', '/upload/201210/20121025160211827.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('14', '9', '体验用户UI、UE，谈如何提高交互设计专业能力 ', '@@@', '用户体验，UE，UI，用户交互，交互设计', '有人说交互描绘年代来临了，其实仅仅职业开展造就了更多的就业机会。可是实际没有那么光鲜，进入新职业之后描绘师们面对着许多问题，遇到开展瓶颈找不到处理办法。', '稻壳网', '稻壳网', '0', '2012-10-25 14:35:15', '0000-00-00 00:00:00', '0', '<h4>\r\n	有人说交互描绘年代来临了，其实仅仅职业开展造就了更多的就业机会。可是实际没有那么光鲜，进入新职业之后描绘师们面对着许多问题，遇到开展瓶颈找不到处理办法。\r\n</h4>\r\n<p>\r\n	1.没有方向，没有本人的职业规划。视觉描绘师想转交互，交互又想转产物。\r\n</p>\r\n<p>\r\n	2.觉得不被注重，剖析本人时，不忘带上"苦逼"两字。辛苦做的描绘方案，不被采用，常常诉苦被产物司理指派着画图，交互描绘师的共同语言必定有这条。\r\n</p>\r\n<p>\r\n	3.没有学习方案，每天除了作业不知道该学些什么，翻翻网上的材料看着都觉得有道理，总觉得没有收收成，但又提不出问题。\r\n</p>\r\n<p>\r\n	4.自诩有许多主意，但显得比拟浅显，经不起琢磨，也不知道怎么完成，时刻久了能够会打击到自信心。\r\n</p>\r\n<p>\r\n	看过各种剖析，交互描绘师需求具有什么样的才干 ，但小我一直专心于探究怎么进步专业才干，一是爱好地点，二是学习常识能得到成就感。写博客可以催促学习，动机十分单纯，没有重视过什么小我品牌和添加名望，博客也不能成为评估描绘师的规范，著作才是评估描绘师的唯一规范。学习和进步小我作业才干都是以做出优异著作为方针。\r\n</p>\r\n<p>\r\n	描绘师各个期间需求学习不一样难度的常识和做不一样的作业，正如我将学习材料划为三个梯度，期望描绘师能由浅到深的学习。一开端没有项目经历，缺少根底常识，不宜硬啃高难度的材料。\r\n</p>\r\n<p>\r\n	<br />\r\n<strong>根底篇<br />\r\n</strong>合适刚入行并开端触摸项意图描绘师学习 ：\r\n</p>\r\n<p>\r\n	1.描绘的美学常识。\r\n</p>\r\n<p>\r\n	2.交互描绘的基本准则，如一致性、削减输入和削减操作步调等等，这些准则简略知道，经过学习事例和阅览通俗易懂的书本迅速地把握。此期间合适泛读《交互描绘精华》等书本，不宜精读，没有项目经历的话，读完之后不知所云。\r\n</p>\r\n<p>\r\n	3.平台特性及其描绘规范，经过阅览平台的描绘规范对描绘思想的构成十分有协助，特别是Microsoft和Apple的文档。\r\n</p>\r\n<p>\r\n	4.做交互描绘方案的办法，如制作流程图、原型图和编撰交互描绘规范文档，难度不大，仅仅需求屡次的操练。但这种文档很少会对外共享，学生很难学习到这部分内容，这会影响到他们表达本人的描绘主意。\r\n</p>\r\n<p>\r\n	<strong>进阶篇</strong><br />\r\n合适有3个月以上项目经历的描绘师学习：\r\n</p>\r\n<p>\r\n	1.特定控件描绘，如标签栏、标签栏、列表界面和弹窗口等，汇总已有描绘的优缺点和描绘规则。\r\n</p>\r\n<p>\r\n	2.特定界面描绘，界面中怎么出现特定的信息，如应用程序主页、小我材料或许数据流界面。\r\n</p>\r\n<p>\r\n	3.独立常用功用描绘，如注册登录、刷新和功用引导，需求知道功用背面的技能常识和产物战略，需求制作流程图，安排线性的操作流。你需求调研已有产物，并企图区别它们的优缺点。与技能人员交流是学习技能的有效办法，你可以有意尴尬产物司理，让他们解说各种产物战略，把握更多的信息关于做出正确的描绘决议计划和扩大视野十分有协助。\r\n</p>\r\n<p>\r\n	<strong>中阶篇</strong><br />\r\n合适具有一个以上完好项目经历的描绘师学习：\r\n</p>\r\n<p>\r\n	1.多项功用描绘，一个界面交融独自的功用，需求应用到描绘办法和架构的思路。描绘办法是发掘用户需求和推进描绘优先级的情形故事法、卡片分类、人物人物、访谈和问卷等。这些办法的学习不是有必要的，你能够作业两年从来没有使用过它们，但也描绘出了不错的品。这些办法可以作为知道性常识，当有需求时再深化学习，办法只能协助描绘师发现问题和防止问题，但不能对成果起到决定性效果。\r\n</p>\r\n<p>\r\n	2.办法和已有的描绘特性研讨，以总结为主，最棒能应用到本人的描绘当中去，千言万语不如着手理论。\r\n</p>\r\n<p>\r\n	3.竞品和优异产物剖析。这件作业看起来很一般，若是没有关联的描绘常识和剖析才干，只能生搬硬套大概念，无法归纳多种要素剖析，压根找不到切入点。\r\n</p>\r\n<p>\r\n	4.最新的体系和产物剖析。之前的学习都常识的深向开展，可是这一条需求描绘师具有较为宽广的常识面，不只仅限于本人参加过的产物。若是每两周专心研讨一个方向，你将比多半的人更知道。\r\n</p>\r\n<p>\r\n	经过不定期下载多种同类应用程序，查阅材料，现已研讨过输入法、LBS、特性引荐、语音输入和阅览类等产物，尽管从来没有参加过这些项目，但从中可以加深对描绘的知道，做好常识堆集。\r\n</p>\r\n<p>\r\n	5.掌控技能。描绘师需求对技能有掌控才干，就像工业描绘师把握各种材料的特性才干挥洒自如，这也是测验补偿本身缺少。web端交互描绘师需求会写html和 css，一是便于描绘，二是训练逻辑思想才干，而手机交互描绘师对技能遍及缺少知道。早期交互描绘师是从程序员中分离出来的职位，用来补偿程序描绘的缺少。所以我更喜爱听技能讲座。\r\n</p>\r\n<p>\r\n	朴实的技能道路比拟难，若是你对交际、查找和电子商务等范畴有深化的知道，这可以添加小我在职场的不行代替性。\r\n</p>\r\n<p>\r\n	<strong>高阶篇</strong><br />\r\n小我还在探究，还是以能做出好产物为方针，首要方向是：\r\n</p>\r\n<p>\r\n	1.产物架构，web端已有架构的理念，手机端也会面对这个问题。\r\n</p>\r\n<p>\r\n	2.描绘趋势研讨，比方操作方法，做猜测是最难的。\r\n</p>\r\n<p>\r\n	3.产物开展趋势，如将来LBS产物在手机端怎么描绘 ，怎么为用户的生计带来便当，这需求描绘师具有预见才干和判断力。\r\n</p>\r\n<p>\r\n	……\r\n</p>\r\n<p>\r\n	<strong>注重事项<br />\r\n</strong>学习中需求注重以下几点：\r\n</p>\r\n<p>\r\n	1.学习宜由浅入深，常识需深化浅出，早期可以挑一 些简略的产物研讨，如阅览类产物，先构成合适本人的学习办法。标题不宜太难，有位学弟想研讨手机付出，材料很少，无从下手，会打击到自信心。\r\n</p>\r\n<p>\r\n	2.作业太忙，也要抽暇学习，这影响到长时间开展。选择作业时，尽量参加学习型团队。每家公司都会对你承诺开展空间，乃至是期权，你完全可以疏忽。\r\n</p>\r\n<p>\r\n	3.给本人找个好教师，若是你的命运足够好的话。\r\n</p>\r\n<p>\r\n	4.少扯淡，这种忽悠外行人的手段对你没有优点，朴实是浪费时刻。\r\n</p>\r\n<p>\r\n	5.理论不是有必要的，不要看到他人写博客有心理压力，形似本人不这么做无法表现本人的专业才干。若是你能着手描绘出优异的产物，理论完全可以疏忽，理论甚于理论。\r\n</p>\r\n<p>\r\n	6.不要迷信信任理论和从这博客中看到的，坚持独立思考。描绘团队中最可贵的人才是常常提出本人不一样见地的，合理地质疑描绘方案。\r\n</p>\r\n<p>\r\n	7.不要瞎假造和顽固，当你企图以某种理论描绘产物或许压服他人时，保证本人能举三个以上的事例。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span>[文章来源：</span><a href=\"http://www.doooc.com/index/content/t-%E4%BD%93%E9%AA%8C%E7%94%A8%E6%88%B7UIUE%E8%B0%88%E5%A6%82%E4%BD%95%E6%8F%90%E9%AB%98%E4%BA%A4%E4%BA%92%E8%AE%BE%E8%AE%A1%E4%B8%93%E4%B8%9A%E8%83%BD%E5%8A%9B+-b-6-id-19.shtml\" target=\"_blank\">体验用户UI、UE，谈如何提高交互设计专业能力&nbsp;</a><span>]</span> \r\n</p>', 'http://www.doooc.com/index/content/t-体验用户UIUE谈如何提高交互设计专业能力+-b-6-id-19.shtml', '/upload/201210/20121025160248614.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('15', '9', '浅谈网页设计中的色彩理论', '@@@', '网页设计，色彩，理论', '无可争议的是，色彩是任何描绘范畴中最重要的一方面。\r\n\r\n描绘师在决议了一个网站个性的一同，也决议了网站的情感，而情感的表达很大程度上取决于色彩的选择。色彩是很有力的东西，一切描绘师在描绘网页时就应该理解这一点。', '稻壳网', '稻壳网', '5', '2012-10-25 14:36:43', '0000-00-00 00:00:00', '0', '<h3>\r\n	无可争议的是，色彩是任何描绘范畴中最重要的一方面。\r\n</h3>\r\n<p>\r\n	描绘师在决议了一个网站个性的一同，也决议了网站的情感，而情感的表达很大程度上取决于色彩的选择。色彩是很有力的东西，一切描绘师在描绘网页时就应该理解这一点。\r\n</p>\r\n<p>\r\n	一、色彩术语\r\n</p>\r\n<p>\r\n	你们傍边很多人能够已经在校园学过一些色彩根底常识，让咱们疾速回忆一些术语，来更好的掌握色彩和运用色彩。\r\n</p>\r\n<p>\r\n	色轮的首要组成\r\n</p>\r\n<p>\r\n	一切的色彩能在一个色轮中出现。在这个色轮中，咱们能把色彩分红3大块：原色，辅佐色和第三色彩。\r\n</p>\r\n<p>\r\n	三原色分别是赤色，蓝色和黄色。这些色彩是根底色，他们组成了色轮上的一切其他色彩。\r\n</p>\r\n<p>\r\n	把原色混合在一同，你就能得到辅佐色，它们是橙色、绿色和紫色。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/upload/Image/20121025/20121025092057_52835.jpg\" alt=\"\" /><br />\r\n<br />\r\n二、色彩的联络\r\n</p>\r\n<p>\r\n	描绘色彩有很多的术语，知道这些术语将有助于咱们评论的色彩和色彩的情感意义。\r\n</p>\r\n<p>\r\n	互补色是互补互调的色彩，它们坐落在色轮上敌对的方位。这些互补色有蓝色和橙色、紫色和黄色、以及赤色和绿色。\r\n</p>\r\n<p>\r\n	邻色是色轮上相毗连的色彩，所以当邻色一同用时，可所以很好的调配，但不会有显着的比照。\r\n</p>\r\n<p>\r\n	第三色彩是由中间色组成的，例如黄绿色和蓝绿色，即由一个原色和一个辅佐色混合组成。\r\n</p>\r\n<p>\r\n	<strong>三、根据情感的色彩集体</strong> \r\n</p>\r\n<p>\r\n	一些色彩集体是和情感联络在一同的，比方温暖、镇定和中立的情感。\r\n</p>\r\n<p>\r\n	暖色能让人感触到温暖，例如赤色、黄色和橙色。\r\n</p>\r\n<p>\r\n	冷色让人联想到凉快和冰冷，例如蓝色，绿色和紫色。\r\n</p>\r\n<p>\r\n	中性色，望文生义，并不发明怎样的情感。像灰色和棕色就是中性色。\r\n</p>\r\n<p>\r\n	知道色彩这些方面的常识可以用协助一个描绘师在描绘网页时不必文字就能表达特定意义和特定情感，并显现优势。\r\n</p>\r\n<p>\r\n	<strong>四、描绘中色彩的类型</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/d76e_234951A09-2.jpg\"><img src=\"/upload/Image/20121025/20121025092113_16122.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	这里有两种不相同的色彩体系，两者的运用取决于你描绘什么。\r\n</p>\r\n<p>\r\n	RGB是这个色彩体系中三个基本性"红、绿、蓝"的英文缩写，这三种基本性是光的三原色。RGB运用在电视电脑屏幕和任何类型的屏幕上。\r\n</p>\r\n<p>\r\n	CMYK是"青色、洋红、黄色、黑色"的英文缩写，这些色彩是颜料的原色，CMYK被运用于印刷。\r\n</p>\r\n<p>\r\n	网页上的描绘是建立在RGB色彩体系上的。\r\n</p>\r\n<p>\r\n	<strong>五、正确地选择色彩、传达意义</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/76b2_2349516134-3.jpg\"><img src=\"/upload/Image/20121025/20121025092125_17937.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	色彩理论是运用色彩背面的意义给用户带来感官体会的理论所得。这种理论经验再加上一些常识和主意可以运用到网页的描绘中去。\r\n</p>\r\n<p>\r\n	我们往往不会赞同一些特定色彩的意义以及描绘师们应该用哪些色彩来加强特定的情感。但无需争辩的是，客户对色彩是有情感的反响的。\r\n</p>\r\n<p>\r\n	当为你的描绘品选择色彩时要稳重，不要无目的地运用色彩。你所选择的色彩要合适你的方针受众、能表达客户期望你传达的信息，能契合你对用户在你的网站所取得的全体感触的期望。\r\n</p>\r\n<p>\r\n	暖色能带来阳光亮媚的心情，用在期望带来美好高兴感触的网站上是正确的。举一个比方，在2009年全球经济不太好的时分，黄色变成了网页描绘中十分盛行的色彩，由于公司期望顾客在他们网站上有到阳光和舒服的感触。\r\n</p>\r\n<p>\r\n	冷色最棒是用在想要表达出专业或整齐感触的网站上，以出现出一个镇定的公司形象。冷色表达出威望、清晰和信赖的感触。例如，镇定的蓝色用在许多银行的网站上，比方大通银行。冷色运用在以达观为主题的网站上是不正确的，由于用户会得到过错的形象。\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/740e_234951BO-4.jpg\"><img src=\"/upload/Image/20121025/20121025092136_17544.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	<strong>六、色彩关于用户的意义</strong> \r\n</p>\r\n<p>\r\n	大多数色彩能表达活跃或消沉的心情，这取决于它是怎样被运用的，以及周围其他的色彩，还有网站自身的内在。\r\n</p>\r\n<p>\r\n	以下是一些盛行色彩的遍及意义。\r\n</p>\r\n<p>\r\n	<strong>赤色</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/a081_234951B02-5.jpg\"><img src=\"/upload/Image/20121025/20121025092147_52077.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	赤色标志着火和力气，还与热心和重要性联络在一同。它还有助于激起能量和提起爱好。\r\n</p>\r\n<p>\r\n	赤色的负面内在是愤恨、危殆和生气，紧迫情况下，和愤恨，这也源于赤色自身里的热心和进步。\r\n</p>\r\n<p>\r\n	<strong>橙色</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/d661_2349511c4-6.jpg\"><img src=\"/upload/Image/20121025/20121025092156_96618.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	橙色是色轮上红、黄两个邻色的组合色。橙色标志着美好，高兴和阳光。这是一个愉快的色彩，引发孩子般的活力。\r\n</p>\r\n<p>\r\n	橙色没有赤色那么活跃，可是它也有一部分这样的特质，影响着心思活动。但它也标志着愚蠢和诈骗。\r\n</p>\r\n<p>\r\n	<strong>黄色</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/0b84_2349514J5-7.jpg\"><img src=\"/upload/Image/20121025/20121025092207_22716.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	亮堂的黄色是一种美好的色彩，代表着活跃黄色特质：高兴，才智，光亮，能量，达观，和美好。\r\n</p>\r\n<p>\r\n	一个暗淡的黄色则带来负面的感触：正告，批判，懒散，和妒忌。\r\n</p>\r\n<p>\r\n	<strong>绿色</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/236e_2349511416-8.jpg\"><img src=\"/upload/Image/20121025/20121025092216_26586.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	绿色标志着天然，并且有一种治愈性的特质。它可以用来标志生长与调和。绿色让人感到安全。病院常常运用绿色。\r\n</p>\r\n<p>\r\n	另一方面，绿色的是金钱的标志，表达着贪婪或妒忌。它也可以被用来标志缺乏经验或初学者需求生长（"没有经验的绿色"）。\r\n</p>\r\n<p>\r\n	<strong>蓝色</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/9734_23495140X-9.jpg\"><img src=\"/upload/Image/20121025/20121025092228_53253.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	蓝色是一个平缓、安静的色彩，发出着安稳和专业性，因而它遍及运用于公司网站。蓝也可以标志着信赖和可靠性。\r\n</p>\r\n<p>\r\n	一个冷调的暗影能带来蓝色消沉的一面，标志着郁闷，冷酷和被迫。\r\n</p>\r\n<p>\r\n	<strong>紫色</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/a72d_23495114b-10.jpg\"><img src=\"/upload/Image/20121025/20121025092242_27877.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	紫色是皇室和有教养的色彩，代表着财富和奢侈品。它也赋予了灵性的感触，并鼓动发明力。\r\n</p>\r\n<p>\r\n	较浅的紫色可以发出出一种奇特的感触。它能很好地晋升发明力和表达女人特质。\r\n</p>\r\n<p>\r\n	较深的紫色可以出现出懊丧和哀痛的心情。\r\n</p>\r\n<p>\r\n	<strong>黑色</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/fa56_23495114B-11.jpg\"><img src=\"/upload/Image/20121025/20121025092255_50523.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	尽管黑色是不是色轮的一部分，它依然可以被用来暗示感触和意义。它往往是与权利，高雅，精美，和深度联络在一同。据说在面试时穿黑色服装可以表现出应聘者是一个有力气的个别，网站也是相同的道理。\r\n</p>\r\n<p>\r\n	黑色也可以被看作是负面的，由于它与逝世，奥秘和不知道联络在一同。这是哀痛、吊唁和悲痛的色彩，因而在运用时有必要正确选择。\r\n</p>\r\n<p>\r\n	<strong>白色</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/96bb_2349511436-12.jpg\"><img src=\"/upload/Image/20121025/20121025092308_25608.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	白色，也不是色轮的一部分，标志纯真和单纯。它还传达着洁净和安全。\r\n</p>\r\n<p>\r\n	相反，白色还可以被以为是冰冷和悠远的标志，代表着冬天的严格和苦楚的特质。\r\n</p>\r\n<p>\r\n	<strong>七、大公司的网站中色彩运用的比方</strong> \r\n</p>\r\n<p>\r\n	咱们来看看一些大公司的网站，来知晓他们是怎样运用色彩的，以及那些色彩关于他们的用户来说意味着什么。\r\n</p>\r\n<p>\r\n	<strong>耐克</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/c90e_2349513115-13.jpg\"><img src=\"/upload/Image/20121025/20121025092322_42299.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	耐克常常更新他们的网站，但一般仍是黑色和灰色的色彩，它一般是暗。黑色显现着他们产物中的力气，留给我们他们向爱运动的顾客出售优质产物的形象。\r\n</p>\r\n<p>\r\n	<strong>白宫</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/7b9c_2349513059-14.jpg\"><img src=\"/upload/Image/20121025/20121025092340_77085.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	白宫的网站首要是白色和浅灰色，再加上一些蓝色和赤色作强调色。白色标志着期望和自在，显露出平安和纯真的价值。赤色和蓝色当然是美国的代表色，赤色代表着热心和能量，蓝色则代表着安稳与平缓。\r\n</p>\r\n<p>\r\n	<strong>亚马逊</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/fb3d_2349515117-15.jpg\"><img src=\"/upload/Image/20121025/20121025092355_64794.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	亚马逊的网站大多是白色的，白色有着最佳的比照度和可读性。它还显露出整齐性，让用户能自在地阅览网站。以橙色和蓝色的强调色则让用户能感到安靖、振奋，也让他们期望找到最满足的收购。\r\n</p>\r\n<p>\r\n	<strong>Verizon公司</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/8878_2349512S6-16.jpg\"><img src=\"/upload/Image/20121025/20121025092406_79299.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	赤色是Verizon的公司品牌主色彩，也是贯穿整个网站的色彩。赤色有助于影响用户的振奋性，展现出一个出售让人振奋和疾速更新的产物的公司形象。白色布景的运用与亚马逊相似，经过一个整齐有序的界面来协助用户阅览这个网站。\r\n</p>\r\n<p>\r\n	<strong>百思买</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/98a2_2349513112-17.jpg\"><img src=\"/upload/Image/20121025/20121025092419_50155.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	百思买的网站的色彩是深蓝色，显露出他们在电子市场中的安稳和实力。顾客在百思买上的很多收购使得他们需求安全感与平缓感。黄色发出的高兴气氛让他们在收购时感触到振奋与兴趣。\r\n</p>\r\n<p>\r\n	<strong>嘉信理财</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/2634_2349515042-18.jpg\"><img src=\"/upload/Image/20121025/20121025092433_16429.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	嘉信理财是一家投资公司，在不安稳的市场环境下他们需求让消费者在他们的网站上感触到平缓。他们运用柔软的深蓝色彩来完成这一点，并建立起一种安静、吉祥的气氛。中性的棕色则是另一种协助和谐过火的用户感触的公司色彩。橙色作为强调色，能让用户在买证券时发生振奋感，一同也为网站带来了美好感。\r\n</p>\r\n<p>\r\n	<strong>道奇</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/76ff_2349511246-19.jpg\"><img src=\"/upload/Image/20121025/20121025092445_73967.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	道奇的网站大多是黑色系，能让网站上的图片凸显出来。他们运用一种艳丽的赤色作为强调色。黑色给网站带来力气感，在一种精美与阳刚的氛围下展现他们的产物。黑色是一种不错的色彩，它能使产物看起来宝贵、有价值。赤色则表达出热心和振奋，是期望能让消费者以为他们是从一个值得信赖、质量有保证的公司购买到的车辆。\r\n</p>\r\n<p>\r\n	<strong>全食食物公司</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/bff5_2349511048-20.jpg\"><img src=\"/upload/Image/20121025/20121025092458_27344.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	全食食物公司品牌的主色彩和他们的网站色彩相同，是绿色。全食食物以较高的价钱售卖安康的有机食物。网页描绘中的绿色很好的展现了他们所珍爱的安康与纯洁的概念，以及他们接近天然的产物。他们也用了很配绿色的淡黄色作为强调色，为网站增添了兴趣性。\r\n</p>\r\n<p>\r\n	<strong>八、</strong><strong>色彩在</strong>网站中的运用\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/0314_2349512044-21.jpg\"><img src=\"/upload/Image/20121025/20121025092508_62756.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	不需求描绘性的文字，色彩就能赋予网站以意义。无论你能否计划为他们加上某种意义，色彩自身就有许多特定的形象。用户阅览网页时，色彩协助搬运用户的视野，指引用户怎样去阅览一个页面。在许多公司的网站中可以看出，色彩表达了情感和价值观，向用户展现着他们的公司是怎样的、他们所售卖的产物是怎样的。\r\n</p>\r\n<p>\r\n	细心选择补色能让你更好地运用色彩，一旦选定后你想要表达的意义也就显现出来了。\r\n</p>\r\n<p>\r\n	配对色的运用能改动一个网站的意义。处以柔软的蓝色为色彩的、表达出安静网站配上亮堂的橙色，就能让它变成让人更多感触到振奋和兴趣的网站。\r\n</p>\r\n<p>\r\n	或许你的客户以为你所描绘的网站深灰色过多、过分严厉，加上柔软的蓝色能让你的网站有安静、平缓的基调。\r\n</p>\r\n<p>\r\n	<strong>九、与色彩运用关联的资源</strong> \r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<a href=\"http://alibuybuy-img11.stor.sinaapp.com/2011/12/1bf2_2349514950-22.jpg\"><img src=\"/upload/Image/20121025/20121025092519_23098.jpg\" alt=\"\" /></a> \r\n</p>\r\n<p>\r\n	许多网站评论过色彩理论和描绘中的色彩运用。可以运用以下这些有用的资源来寻觅色彩调配和为你的网站描绘写入更多的意义。\r\n</p>\r\n<p>\r\n	<strong>《<a href=\"http://www.kuqin.com/webpagedesign/20110812/105098.html\" target=\"_blank\">20个对描绘师十分有用的在线配色东西</a>》</strong> \r\n</p>\r\n<p>\r\n	—参考文献—\r\n</p>\r\n<p>\r\n	<a href=\"http://en.wikipedia.org/wiki/Color_theory\" target=\"_blank\">色彩理论</a>- 维基百科\r\n</p>\r\n<p>\r\n	<a href=\"http://www.color-wheel-pro.com/color-meaning.html\" target=\"_blank\">色彩的意义</a>-Color Wheel Pro\r\n</p>\r\n<p>\r\n	<a href=\"http://everyjoe.com/work/color-branding-the-meanings-behind-colors/?utm_source=everyjoe&amp;utm_medium=web&amp;utm_campaign=b5hubs_migration\" target=\"_blank\">色彩品牌：色彩背面的意义</a>–EveryJoe\r\n</p>\r\n<p>\r\n	<a href=\"http://www.squidoo.com/colorexpert\" target=\"_blank\">色彩：意义，标志性和心思</a> -Squidoo\r\n</p>\r\n<p>\r\n	<a href=\"http://colorschemedesigner.com/\" target=\"_blank\">色彩计划的描绘者3</a> \r\n</p>\r\n<p>\r\n	本文来自：<a href=\"http://blog.jobbole.com/8597/\" target=\"_blank\">http://blog.jobbole.com/8597/</a><br />\r\n英文原文：<a href=\"http://sixrevisions.com/web_design/a-look-into-color-theory-in-web-design/\" target=\"_blank\">http://sixrevisions.com/web_design/a-look-into-color-theory-in-web-design/</a> \r\n</p>', 'http://www.doooc.com/index/content/t-浅谈网页设计中的色彩理论-b-6-id-20.shtml', '/upload/201210/20121025160440181.jpg', '', '0', '0');

--<br>--
INSERT INTO `##_list` VALUES ('16', '9', '网页瀑布流布局浅析-前端工程师必学', '@@@', '网页，WEB，瀑布流，布局，浅析', '如果你经常网上冲浪，这样参差不齐的多栏布局，是不是很眼熟啊？\r\n\r\n　　类似的布局，似乎一夜之间出现在国内外大大小小的网站上，比如视觉社交目录网站Pinterest(貌似是最早使用这种布局的网站了)，Mark之 ，蘑菇街，点点网，以及淘宝最新上线的"哇哦" 等等。\r\n\r\n　　这种布局适合于小数据块，每个数据块内容相近且没有侧重。通常，随着页面滚动条向下滚动，这种布局还会不断加载数据块并附加至当前尾部。所以，我们给这样的布局起了一个形象的名字 - 瀑布流式布局。', '稻壳网', '稻壳网', '7', '2012-10-25 16:15:25', '0000-00-00 00:00:00', '0', '<p>\r\n	　　如果你经常网上冲浪，这样参差不齐的多栏布局，是不是很眼熟啊？\r\n</p>\r\n<p>\r\n	　　类似的布局，似乎一夜之间出现在国内外大大小小的网站上，比如视觉社交目录网站Pinterest(貌似是最早使用这种布局的网站了)，Mark之 ，蘑菇街，点点网，以及淘宝最新上线的"哇哦" 等等。\r\n</p>\r\n<p>\r\n	　　这种布局适合于小数据块，每个数据块内容相近且没有侧重。通常，随着页面滚动条向下滚动，这种布局还会不断加载数据块并附加至当前尾部。所以，我们给这样的布局起了一个形象的名字 - 瀑布流式布局。\r\n</p>\r\n<p>\r\n	　　<strong>1、视觉社交目录网站Pinterest 简介</strong> \r\n</p>\r\n<p>\r\n	　　Pinterest是一个自称"个人版猎酷工具"的视觉社交目录网站，看起来像是一面虚拟的灵感墙，收藏丰富多元的设计、视觉艺术图片。以板 （Pinboards）做为单位，可以钉（pin）你喜爱的收藏，书签功能一键式抓取图片聚合到自己的Pinterest页面上。也可以follow不同人的品味，整体概念不错。目前网站收集的都是高品质照片。最赞页面底端自动加载无需翻页功能，让用户不断发现新图片。\r\n</p>\r\n<p>\r\n	　<strong>　2、几种实现方式</strong> \r\n</p>\r\n<p>\r\n	　　随着越来越多设计师爱用这种布局，我们作为前端，要尽可能满足视觉/交互设计师的需求。所以，我们整理了下这种布局的几种实现方式，有三种:\r\n</p>\r\n<p>\r\n	　　1) 传统多列浮动。即 蘑菇街和哇哦 采用的方式，如下图所示:\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/upload/Image/20121025/20121025085743_88857.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	　　各列固定宽度，并且左浮动；\r\n</p>\r\n<p>\r\n	　　一列中的数据块为一组，列中的每个数据块依次排列即可；\r\n</p>\r\n<p>\r\n	　　更多数据加载时，需要分别插入到不同的列上；\r\n</p>\r\n<p>\r\n	　　线上例子 <a href=\"http://wow.taobao.com/\"><span>（</span>http://wow.taobao.com/</a>）。\r\n</p>\r\n<p>\r\n	　　优点:\r\n</p>\r\n<p>\r\n	　　布局简单，应该说没啥特别的难点；\r\n</p>\r\n<p>\r\n	　　不用明确知道数据块高度，当数据块中有图片时，就不需要指定图片高度。\r\n</p>\r\n<p>\r\n	　　缺点:\r\n</p>\r\n<p>\r\n	　　列数固定，扩展不易，当浏览器窗口大小变化时，只能固定的x列，如果要添加一列，很难调整数据块的排列；\r\n</p>\r\n<p>\r\n	　　滚动加载更多数据时，还要指定插入到第几列中，还是不方便。\r\n</p>\r\n<p>\r\n	　　2) CSS3 定义。W3C 中有讲述关于多列布局的文档 <http: www.w3.org=\"\" tr=\"\" css3-multicol=\"\">，排列出来的样子:</http:>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/upload/Image/20121025/20121025090730_23068.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	　　由 chrome/ff 浏览器直接渲染出来，可以指定容器的列个数，列间距，列中间边框，列宽度来实现；\r\n</p>\r\n<p>\r\n	　　#container {\r\n</p>\r\n<p>\r\n	　　-webkit-column-count: 5；\r\n</p>\r\n<p>\r\n	　　/*-webkit-column-gap: 10px；\r\n</p>\r\n<p>\r\n	　　-webkit-column-rule: 5px solid #333；\r\n</p>\r\n<p>\r\n	　　-webkit-column-width: 210px；*/\r\n</p>\r\n<p>\r\n	　　-moz-column-count: 5；\r\n</p>\r\n<p>\r\n	　　/*-moz-column-gap: 20px；\r\n</p>\r\n<p>\r\n	　　-moz-column-rule: 5px solid #333；\r\n</p>\r\n<p>\r\n	　　-moz-column-width: 210px；*/\r\n</p>\r\n<p>\r\n	　　column-count: 5；\r\n</p>\r\n<p>\r\n	　　/*column-gap: 10px；\r\n</p>\r\n<p>\r\n	　　column-rule: 5px solid #333；\r\n</p>\r\n<p>\r\n	　　column-width: 210px；*/\r\n</p>\r\n<p>\r\n	　　}\r\n</p>\r\n<p>\r\n	　　column-count 为列数； column-gap 为每列间隔距离； column-rule 为间隔边线大小； column-width 为每列宽度； 当只设置 column-width 时，浏览器窗口小于一列宽度时，列中内容自动隐藏； 当只设置 column-count 时，平均计算每列宽度，列内内容超出则隐藏； 都设了 column-count 和column-width，浏览器会根据 count 计算宽度和 width 比较，取大的那个值作为每列宽度，然后当窗口缩小时，width 的值为每列最小宽度。这边其实很简单，简易自己尝试下，详细可参考 https://developer.mozilla.org/en/CSS3_Columns 中的说明。\r\n</p>\r\n<p>\r\n	　　线上例子 <http: lizzie.github.com=\"\" kissy=\"\" src=\"\" waterfall=\"\" demo=\"\" css3.html=\"\">。</http:>\r\n</p>\r\n<p>\r\n	　　优点:\r\n</p>\r\n<p>\r\n	　　直接 CSS 定义，最方便了；\r\n</p>\r\n<p>\r\n	　　扩展方便，直接往容器里添加内容即可。\r\n</p>\r\n<p>\r\n	　　缺点:\r\n</p>\r\n<p>\r\n	　　只有高级浏览器中才能使用；\r\n</p>\r\n<p>\r\n	　　还有一个缺点，他的数据块排列是从上到下排列到一定高度后，再把剩余元素依次添加到下一列，这个本质上就不一样了；\r\n</p>\r\n<p>\r\n	　　鉴于这两个主要缺点，注定了该方法只能局限于高端浏览器，而且，更适合于文字多栏排列。\r\n</p>\r\n<p>\r\n	　　3) 绝对定位。即 Pinterest ，Mark之，KISSY 采用的方式:\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/upload/Image/20121025/20121025090915_48713.png\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	　　可谓是最优的一种方案，方便添加数据内容，窗口变化，列数/数据块都会自动调整；\r\n</p>\r\n<p>\r\n	　　线上例子 <http: docs.kissyui.com=\"\" docs=\"\" html=\"\" static=\"\" demo=\"\" waterfall=\"\" demo2.html=\"\">。</http:>\r\n</p>\r\n<p>\r\n	　　缺点:\r\n</p>\r\n<p>\r\n	　　需要实现知道数据块高度，如果其中包含图片，需要知道图片高度；\r\n</p>\r\n<p>\r\n	　　JS 动态计算数据块位置，当窗口缩放频繁，可能会狂耗性能。\r\n</p>\r\n<p>\r\n	　<strong>　3、KISSY.Waterfall 实现思路</strong> \r\n</p>\r\n<p>\r\n	　　KISSY 的 Waterfall 组件主要包含两个部分，一个是对现有数据块进行排列计算各自所在的位置； 二是下拉滚动时，触发加载数据操作，并把数据添加到目标容器中。\r\n</p>\r\n<p>\r\n	　　1) 数据块排列，算法步骤简述下:\r\n</p>\r\n<p>\r\n	　　初始化时，对容器中已有数据块元素进行第一次计算，需要用户给定: a，容器元素 - 以此获取容器总宽度； b，列宽度； c，最小列数； 最终列数取的是容器宽度/列宽度和最小列数的最大值，这样保证了，当窗口很小时，仍然出现最小列数的数据；\r\n</p>\r\n<p>\r\n	　　获得列数后，需要保存每个列的当前高度，这样在添加每个数据块时，才知道起始高度是多少；\r\n</p>\r\n<p>\r\n	　　依次取容器中的所有数据块，先寻找当前高度最小的某列，之后根据列序号，确定数据块的left，top值，left 为所在列的序号乘以列宽，top 为所在列的当前高度，最后更新所在列的当前高度加上这个数据块元素的高度，至此，插入一个元素结束；\r\n</p>\r\n<p>\r\n	　　当所有元素插入完毕后，调整容器的高度为各列最大的高度值，结束依次调整；\r\n</p>\r\n<p>\r\n	　　性能效率上的注意点: a，如果当前正在调整中，又触发了 resize 事件，需要将上次调整暂停后执行这次调整(见 timedChunk 函数)； b，resize 触发会很频繁，可以将回调函数缓存一段时候后执行，即当这段时间内多次触发了resize事件，但回调函数只会执行一次(见 S.buffer 函数)。\r\n</p>\r\n<p>\r\n	　　2) 异步加载数据，前面讲的是如何对容器中已有元素进行排列，但很多情况下，还需要不断加载新数据块，为此专门设计了一个独立的模块 KISSY.Waterfall.Loader，其实这个功能就更简单了，仅包含两个步骤:\r\n</p>\r\n<p>\r\n	　　绑定滚动事件，并确定预加载线高度值，即滚动到哪个高度后，需要去加载数据，其实这个就是列的最小高度值，这样当前滚动值和最小高度值比较一下即可判断出来，是否要触发加载数据；\r\n</p>\r\n<p>\r\n	　　加载数据，为了不对数据源做太多限制，完全由使用者自己决定数据源从哪边获取和其格式，这样更好的方便用户使用。为此，该组件只提供一个load(success，end) 接口，怎样load 由用户自己去定义，而其中的 success/end，分别给出如何添加新数据(suceess 即同 addItems)/如何停止加载的接口。\r\n</p>\r\n<p>\r\n	　<strong>　4、KISSY.Waterfall 示例和文档</strong> \r\n</p>\r\n<p>\r\n	　　Waterfall API 文档 (<a href=\"http://docs.kissyui.com/docs/html/api/component/waterfall/\">http://docs.kissyui.com/docs/html/api/component/waterfall/</a>)，相关构造器，配置项，方法都在这里；\r\n</p>\r\n<p>\r\n	　　示例 (<a href=\"http://docs.kissyui.com/docs/html/demo/component/waterfall/\">http://docs.kissyui.com/docs/html/demo/component/waterfall/</a>)，包含静态和动态两种。\r\n</p>', 'http://www.doooc.com/index/content/t-网页瀑布流布局浅析|前端工程师必学-b-6-id-22.shtml', '/upload/201210/20121025161944344.jpg', '', '0', '0');

--<br>--

DROP TABLE IF EXISTS `##_mapshow`;
--<br>--
CREATE TABLE `##_mapshow` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `channelId` int(11) NOT NULL default '0',
  `title` varchar(60) NOT NULL default '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) NOT NULL default '' COMMENT '描述',
  `mapKey` varchar(100) NOT NULL default '' COMMENT 'API KEY',
  `lat` varchar(50) NOT NULL default '' COMMENT '坐标纬度',
  `lng` varchar(50) NOT NULL default '' COMMENT '坐标经度',
  `width` int(10) NOT NULL default '0' COMMENT '地图宽度',
  `height` int(10) NOT NULL default '0' COMMENT '地图高度',
  `phone` varchar(50) default NULL COMMENT '联系电话',
  `address` varchar(255) default NULL COMMENT '公司地址',
  `content` text COMMENT '内容',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--<br>--
INSERT INTO `##_mapshow` VALUES ('1', '21', '郑州路之易科技有限公司', '', '', '', '34.780889', '113.664443', '0', '0', '0371-66052229', '中国·郑州', '');
--<br>--
DROP TABLE IF EXISTS `##_menu`;
--<br>--
CREATE TABLE `##_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menuName` varchar(24) NOT NULL default '' COMMENT '频道栏目英文名称',
  `title` varchar(50) NOT NULL default '' COMMENT '频道栏目中文名称',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) default '' COMMENT '摘要',
  `type` varchar(14) NOT NULL default '' COMMENT '模块类型',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  `deep` int(11) NOT NULL default '0' COMMENT '深度',
  `parentId` int(11) NOT NULL default '0' COMMENT '父级栏目ID',
  `isComment` tinyint(4) NOT NULL default '0' COMMENT '是否允许评论',
  `level` int(11) NOT NULL default '0' COMMENT '栏目浏览级别限制',
  `isHidden` tinyint(1) NOT NULL default '0' COMMENT '栏目是否隐藏',
  `isTarget` tinyint(1) NOT NULL default '0' COMMENT '栏目是否新窗口打开',
  `originalPic` varchar(255) NOT NULL default '' COMMENT '栏目图标',
  `smallPic` varchar(255) NOT NULL default '' COMMENT '小图',
  `width` int(11) NOT NULL default '130' COMMENT '图标宽度',
  `hight` int(11) NOT NULL default '130' COMMENT '图标高度',
  `isExternalLinks` tinyint(4) NOT NULL default '0' COMMENT '是否外联',
  `redirectUrl` varchar(255) default NULL COMMENT '跳转链接',
  `related_common` varchar(255) NOT NULL default 'common.php' COMMENT '栏目页面风格',
  `dtLanguage` varchar(10) NOT NULL default 'cn' COMMENT '语言',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
INSERT INTO `##_menu` VALUES ('1', 'aboutus', '企业简介', '稻壳网，稻壳Cms，稻壳，关于我们，CMS，内容，管理，系统', '稻壳CMS团队介绍，DOCCMS官方网址www.doccms.com，官方论坛www.doooc.net', 'article', '0', '0', '0', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('2', 'news', '新闻资讯', '企业，新闻，资讯，行业，要闻', '稻壳CMS官方资讯，稻壳CMS官方网站www.doccms.com，官方论坛www.doooc.net', 'calllist', '0', '0', '0', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('3', 'products', '产品展示', 'IMove，稻壳Cms，稻壳网，深喉咙，DocCms，ShlCms', '稻壳CMS产品展示，DOCCMS官方网址www.doccms.com，官方论坛www.doooc.net', 'product', '0', '0', '0', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('4', 'certificate', '资质证书', '资质，证书，荣誉', '稻壳CMS官网www.doccms.com，官方论坛www.doooc.net', 'article', '0', '0', '0', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('5', 'guestbook', '在线留言', '在线，互动，建议，回馈，留言', '在线留言给我们，稻壳CMS官方网址www.doccms.com，官方论坛www.doooc.net', 'guestbook', '0', '0', '0', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('6', 'contact', '联系我们', '联系，路之易，稻壳，官方，深喉咙', '稻壳CMS官方网址www.doccms.com，官方论坛www.doooc.net，稻壳CMS官方联系电话，15538801588。', 'article', '0', '0', '0', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('7', 'companyvideo', '媒体展示', '企业，形像，展示，视频，宣传', '音乐电影作为一种全新的企业文化传播方式，越来越受到知名企业的青睐。企业作为经济社会发展的主体，其文化已成为时代文化重要的组成部分。稻壳CMS官网www.doccms.com，官方论坛www.doooc.net', 'video', '0', '1', '1', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('8', 'companynews', '企业动态', '稻壳，路之易，公司，版本，更新，日志', '2012年08月08日，原ShlCms团队正式将名称更换为DocCms开发团队，中文名：稻壳Cms 开发团队；稻壳cms官方www.doccms.com', 'list', '0', '1', '2', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('9', 'industrynews', '行业新闻', 'IT，互联网，技术，开发，新闻', '企业建站系统行业新闻，稻壳CMS官网www.doooc.com官方论坛www.doooc.net', 'list', '0', '1', '2', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('10', 'imove', 'IMove', 'IMove，苹果，汽车，概念车', '如今，移动互联技术"武装"汽车，正在超越终端界限，手机+汽车=惊喜？也许，明年此时的北京、广州车展，吸引看客们的将不仅仅是"波涛汹涌"的麻豆，还有让车"飞"起来的新HIGH点。一名意大利设计师依据苹果产品的设计风格自行画出了一台名为"iMove"苹果概念车效果图。', 'product', '0', '1', '3', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('11', 'doccms', 'DocCms X', 'DocCms X，稻壳，稻壳CMS，DocCms', 'DocCms X —— [ 音译：稻壳Cms ] 是一款将于2012年11月11日正式发布，定位于为企业、站长、开发者、网络公司、VI策划设计公司、SEO推广营销公司、网站初学者等用户 量身打造的一款全新企业建站、内容管理系统，服务于企业品牌信息化建设，也适应用个人、门户网站建设！', 'product', '0', '1', '3', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('12', 'shlcms', 'ShlCms', 'ShlCms，深喉咙，企业，建站，系统', '深喉咙致力于改善企业信息化进程。推出高质量的建站产品与一站式解决方案，将企业网站设计、制作、内容管理、推广、客户拓展与联络一系列环节融合到软件当中去。为企业提供高性价比的企业互联网门户系统。', 'product', '0', '1', '3', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('13', 'doooc', '稻壳网', 'doooc,稻壳，稻壳网，网站，推广，信息化，全案，B2B，电子商务，开发者，威客，专业，商业平台', 'DoooC.com —— [ 中文名：稻壳网 ] 基于 DocCms X 的多用户网站托管、推广平台，致力于为 DocCms 粉丝打造一款高效、便捷、专业 且具有分享精神的一站式信息化全案推广营销平台。使企业品牌信息化建设、推广工作变得不再复杂，并可与 DocCms X 单用户版本实现数据互用互通，为广大粉丝创造出一款与众不同的特色Cms产品，并为广大用户创造出最大的商业价值 。', 'product', '0', '1', '3', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('14', 'filedownload', '资料下载', '资料，文档，技术，说明书，下载', '稻壳Cms（DocCms X）Php免费开源企业建站系统 ver x1.0 说明、帮助、文档资料下载。稻壳CMS官网www.doccms.com，官方论坛www.doooc.net', 'download', '0', '1', '4', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('15', 'officeculture', '员工生活', 'DocCms，员工，生活，办公，环境，激情，轻松，愉快', 'DocCms官方员工生活。我们是谁？——我们是快乐！激情！努力！创新！坚持不懈的优秀创业团队。稻壳CMS官网www.doccms.com，官方论坛www.doooc.net', 'picture', '0', '1', '4', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('16', 'partners', '合作伙伴', '合作，官方，战略，媒体，伙伴', '稻壳网与众多互联网同行达成战略合作，利用多方资源和平台媒体宣传优势，向广大用户宣传我们的优秀产品。稻壳CMS官网www.doccms.com，官方论坛www.doooc.net', 'linkers', '0', '1', '4', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('17', 'vote', '社会调查', '社会，在线，投票，调查', '通过在线投票，我们可以在第一时间知道用户对稻壳Cms企业建站系统的建议和要求，以便我们更好的优化系统。稻壳CMS官网www.doccms.com，官方论坛www.doooc.net', 'poll', '0', '1', '5', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('18', 'service', '售后服务', '稻壳CMS，doccms，售后，服务', 'DocCms X 本身为免费开源Cms系统，官方不对用户进行强制性购买，只要不用做非法目的和修改版权后进行二次传播官方皆认为合法，当然为了支持DocCms的发展和更好的保护您的合法权益，我们也建议需要进行商业应用的用户购买DocCms商业授权，例如：政府单位、教育机构、协会团体、企业等，以便在遇到相关法律知识纠纷时保证您的合法权益。', 'article', '0', '1', '6', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('19', 'joinus', '招商加盟', '招商，加盟', '稻壳网将在未来不久正式上线后与其它相关同行展开相关合作，或您也可以选择加盟稻壳网，共同推动企业信息化时代的发展和稻壳网的进步。稻壳CMS官网www.doccms.com，官方论坛www.doooc.net', 'order', '0', '1', '6', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('20', 'jobs', '招贤纳才', '人才，招贤，纳才，招聘，工作', '稻壳网招聘各岗位运营总监，来帮助和推动稻壳网的发展。', 'jobs', '0', '1', '6', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('21', 'companyaddress', '公司位置', '公司，路之易，位置', '郑州路之易科技有限公司位于郑州市黄河路与卫生路3号。稻壳CMS官网www.doccms.com，官方论坛www.doooc.net', 'mapshow', '0', '1', '6', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('22', 'legalstatement', '法律声明', '稻壳Cms，应用，法律，声明，客户协议', '法律DocCms 由 稻壳网 Dev Team 独立开发,全部核心技术归属 稻壳网 Dev Team（DocCms,ShlCms 在中国国家版权局著作权登记号为:2010SR008829） 官方网站为 http://www.doccms.com 官方论坛为 http://www.doccms.net DocCms for doooc地址为 http://www.doooc.com 本授权协议适用于 DocCms 任何版本，稻壳网 Dev Team 拥有对本授权协议的最终解释权和修改权。 ', 'article', '0', '1', '6', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
INSERT INTO `##_menu` VALUES ('23', 'webmap', '网站地图', '网站，地图', '通过网站地图，您可以迅速了解稻壳网的各个版块，迅速找到您需要的相关内容和资料', 'webmap', '0', '1', '6', '0', '0', '0', '0', '', '', '130', '130', '0', '', 'common.php','cn');

--<br>--
DROP TABLE IF EXISTS `##_models_reg`;
--<br>--
CREATE TABLE `##_models_reg` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(30) NOT NULL default '' COMMENT '模块类型',
  `model_name` varchar(200) NOT NULL default '' COMMENT '模块名称',
  `config` text COMMENT '配置信息',
  `install` text COMMENT '安装信息',
  `unstall` text COMMENT '卸载信息',
  `summary` text COMMENT '模块摘要',
  `version` varchar(10) NOT NULL default '' COMMENT '模块版本号',
  `readonly` tinyint(1) NOT NULL default '0' COMMENT '是否系统模块',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--

INSERT INTO `##_models_reg` VALUES ('1', 'article', '图文模块', '', '', '', '图文模块，用于展示网站图文数据。', '70506', '1');
--<br>--

INSERT INTO `##_models_reg` VALUES ('2', 'list', '新闻资讯', '', '', '', '新闻资讯模块，用户展示网站的新闻资讯列表。', '70506', '1');

--<br>--

INSERT INTO `##_models_reg` VALUES ('3', 'product', '产品展示', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>产品模块</model_name>\r\n	<type>product</type>\r\n	<summary>产品模块，用于展示企业产品信息。</summary>\r\n	<version>70510</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/product/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/product/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_createcategory.php</param>\r\n		<param name=\"destination\">admini/views/product/createcategory.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_editcategory.php</param>\r\n		<param name=\"destination\">admini/views/product/editcategory.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/product/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_product.php</param>\r\n		<param name=\"destination\">admini/controllers/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_product.php</param>\r\n		<param name=\"destination\">admini/models/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_product_category.php</param>\r\n		<param name=\"destination\">admini/models/product_category.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/product/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/product/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_view.php</param>\r\n		<param name=\"destination\">content/product/parts_view.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_product.php</param>\r\n		<param name=\"destination\">content/index/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_product_0.php</param>\r\n		<param name=\"destination\">content/index/index_product_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">CREATE TABLE `{TB_PREFIX}product` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `name` varchar(200) NOT NULL,\r\n	  `sn` varchar(100) NOT NULL,\r\n	  `spec` varchar(100) NOT NULL,\r\n	  `dtTime` datetime NOT NULL,\r\n	  `sellingPrice` decimal(10,0) NOT NULL,\r\n	  `preferPrice` decimal(10,0) NOT NULL,\r\n	  `summary` varchar(200) NOT NULL,\r\n	  `content` text NOT NULL,\r\n	  `originalPic` varchar(255) NOT NULL,\r\n	  `middlePic` varchar(255) NOT NULL,\r\n	  `smallPic` varchar(255) NOT NULL,\r\n	  `categoryId` int(11) NOT NULL,\r\n	  `counts` int(11) NOT NULL,\r\n	  `ordering` int(11) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">\r\n		CREATE TABLE `{TB_PREFIX}product_category` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `menuName` varchar(24) NOT NULL default \'\',\r\n	  `title` varchar(50) NOT NULL default \'\',\r\n	  `summary` varchar(200) NOT NULL default \'\',\r\n	  `keys` varchar(50) NOT NULL default \'\',\r\n	  `type` varchar(14) NOT NULL default \'\',\r\n	  `ordering` int(11) NOT NULL default \'0\',\r\n	  `link` varchar(255) NOT NULL,\r\n	  `deep` int(11) NOT NULL default \'0\',\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `params` text,\r\n	  `published` tinyint(1) NOT NULL default \'0\',\r\n	  `isClaw` tinyint(1) NOT NULL,\r\n	  `template` varchar(40) NOT NULL,\r\n	  `isfun` tinyint(4) NOT NULL,\r\n	  `isComment` tinyint(4) NOT NULL,\r\n	  `cguid` varchar(16) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n	</param>\r\n	</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/product/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/product_category.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/product/</param>\r\n	</cmd>\r\n		<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/product.php</param>\r\n	</cmd>\r\n		<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_product_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}product` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}product_category` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'product\'</param>\r\n	</cmd>\r\n</deepthroat>', '产品模块，用于展示企业产品信息。', '70510', '0');

--<br>--

INSERT INTO `##_models_reg` VALUES ('4', 'picture', '图片相册', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>图片模块</model_name>\r\n	<type>picture</type>\r\n	<summary>这是一个图片模块，可以展示企业形象、发布图片新闻等。</summary>\r\n	<version>70510</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/picture/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/picture/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/picture/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_picture.php</param>\r\n		<param name=\"destination\">admini/controllers/picture.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_picture.php</param>\r\n		<param name=\"destination\">admini/models/picture.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/picture/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/picture/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_view.php</param>\r\n		<param name=\"destination\">content/picture/parts_view.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_picture_0.php</param>\r\n		<param name=\"destination\">content/index/index_picture_0.php</param>\r\n	</cmd>\r\n<cmd type=\"sql\">\r\n		<param name=\"sql\">CREATE TABLE `{TB_PREFIX}picture` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `title` varchar(60) NOT NULL default \'\',\r\n	  `picture` varchar(255) NOT NULL,\r\n	  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n	  `spicture` varchar(255) NOT NULL,\r\n	  `tags` varchar(60) NOT NULL default \'\',\r\n	  `description` text NOT NULL,\r\n	  `isTopic` int(11) NOT NULL,\r\n	  `isImportant` int(11) NOT NULL,\r\n	  `counts` int(11) NOT NULL,\r\n	  `lpicture` varchar(255) NOT NULL,\r\n	  `uid` int(11) NOT NULL,\r\n	  `cguid` varchar(16) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n		</param>\r\n	</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/picture/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/picture.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/picture.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/picture/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_picture_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}picture` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'picture\'</param>\r\n	</cmd>\r\n</deepthroat>', '这是一个图片模块，可以展示企业形象、发布图片新闻等。', '70510', '0');
--<br>--

INSERT INTO `##_models_reg` VALUES ('5', 'guestbook', '在线留言', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>留言模块</model_name>\r\n	<type>guestbook</type>\r\n	<summary>这是一个留言模块，主要通过收集、整理、回复客户留言，提高网站互动性，为网站带来活力和商机。</summary>\r\n	<version>70510</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/guestbook/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/guestbook/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_guestbook.php</param>\r\n		<param name=\"destination\">admini/controllers/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_guestbook.php</param>\r\n		<param name=\"destination\">admini/models/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/guestbook/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/guestbook/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n	<param name=\"source\">index_guestbook.php</param>\r\n	<param name=\"destination\">content/index/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">CREATE TABLE `{TB_PREFIX}guestbook` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `name` varchar(30) NOT NULL default \'\',\r\n	  `email` varchar(60) NOT NULL default \'\',\r\n	  `homepage` varchar(60) NOT NULL default \'\',\r\n	  `qq` varchar(15) NOT NULL default \'\',\r\n	  `ip` varchar(40) NOT NULL default \'\',\r\n	  `isPublic` int(11) NOT NULL default \'0\',\r\n	  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n	  `content` text NOT NULL,\r\n	  `content1` text NOT NULL,\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `telephone` varchar(16) NOT NULL default \'\',\r\n	  `company` varchar(60) NOT NULL,\r\n	  `auditing` tinyint(4) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n	</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/guestbook/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/guestbook</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}guestbook` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'guestbook\'</param>\r\n	</cmd>\r\n</deepthroat>', '这是一个留言模块，主要通过收集、整理、回复客户留言，提高网站互动性，为网站带来活力和商机。', '70510', '0');
--<br>--

INSERT INTO `##_models_reg` VALUES ('6', 'jobs', '人才招聘', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>招聘模块</model_name>\r\n	<type>jobs</type>\r\n	<summary>招聘模块，用于企业发布招聘信息、筛选人才。</summary>\r\n	<version>70510</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/jobs/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/jobs/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/jobs/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_viewresume.php</param>\r\n		<param name=\"destination\">admini/views/jobs/viewresume.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_viewresumes.php</param>\r\n		<param name=\"destination\">admini/views/jobs/viewresumes.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_jobs.php</param>\r\n		<param name=\"destination\">admini/controllers/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_jobs.php</param>\r\n		<param name=\"destination\">admini/models/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/jobs/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/jobs/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_send.php</param>\r\n		<param name=\"destination\">content/jobs/parts_send.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_jobs.php</param>\r\n		<param name=\"destination\">content/index/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_jobs_0.php</param>\r\n		<param name=\"destination\">content/index/index_jobs_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\"> CREATE TABLE `{TB_PREFIX}jobs` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `channelId` int(11) NOT NULL,\r\n	  `jobName` varchar(200) NOT NULL,\r\n	  `jobKind` varchar(100) NOT NULL,\r\n	  `requireNum` int(11) NOT NULL,\r\n	  `experience` varchar(50) NOT NULL,\r\n	  `address` varchar(200) NOT NULL,\r\n	  `age` varchar(100) NOT NULL,\r\n	  `height` varchar(50) NOT NULL,\r\n	  `languageSkill` varchar(100) NOT NULL,\r\n	  `lastTime` varchar(50) NOT NULL,\r\n	  `salary` varchar(50) NOT NULL,\r\n	  `educational` varchar(50) NOT NULL,\r\n	  `isHouse` varchar(50) NOT NULL,\r\n	  `sex` varchar(4) NOT NULL,\r\n	  `computerLevel` varchar(100) NOT NULL,\r\n	  `summary` text NOT NULL,\r\n	  `telphone` varchar(50) NOT NULL,\r\n	  `email` varchar(100) NOT NULL,\r\n	  `dtTime` datetime NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n		</param>\r\n	</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/jobs/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/jobs/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_jobs_0.php</param>\r\n	</cmd>	\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}jobs` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'jobs\'</param>\r\n	</cmd>\r\n</deepthroat>', '招聘模块，用于企业发布招聘信息、筛选人才。', '70510', '0');

--<br>--

INSERT INTO `##_models_reg` VALUES ('7', 'video', '视频展示', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>视频模块</model_name>\r\n	<type>video</type>\r\n	<summary>这是一个视频模块，可以展示例如企业形象影片之类的视频。</summary>\r\n	<version>70507</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_create.php</param>\r\n<param name=\"destination\">admini/views/video/create.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/video/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_edit.php</param>\r\n<param name=\"destination\">admini/views/video/edit.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_video.php</param>\r\n<param name=\"destination\">admini/controllers/video.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_video.php</param>\r\n<param name=\"destination\">admini/models/video.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/video/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/video/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_view.php</param>\r\n<param name=\"destination\">content/video/parts_view.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">index_video.php</param>\r\n<param name=\"destination\">content/index/video.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}video` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `channelId` int(11) NOT NULL default \'0\',\r\n  `filePath` varchar(200) NOT NULL,\r\n  `fileSize` varchar(50) default NULL,\r\n  `title` varchar(150) NOT NULL,\r\n  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `tags` varchar(200) NOT NULL,\r\n  `description` text NOT NULL,\r\n  `picture` varchar(200) NOT NULL,\r\n  `counts` int(11) NOT NULL default \'0\',\r\n  `cguid` varchar(16) NOT NULL,\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;</param>\r\n</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/video/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/video.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/video.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/video/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/index/video.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}video` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'video\'</param>\r\n</cmd>\r\n</deepthroat>', '这是一个视频模块，可以展示例如企业形象影片之类的视频。', '70507', '0');

--<br>--

INSERT INTO `##_models_reg` VALUES ('8', 'download', '文件下载', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>下载模块</model_name>\r\n	<type>download</type>\r\n	<summary>这是一个下载模块，可以用户提供软件、文档资料的下载。</summary>\r\n	<version>70511</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/download/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/download/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/download/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_download.php</param>\r\n		<param name=\"destination\">admini/controllers/download.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_download.php</param>\r\n		<param name=\"destination\">admini/models/download.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/download/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/download/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_view.php</param>\r\n		<param name=\"destination\">content/download/parts_view.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_download_0.php</param>\r\n		<param name=\"destination\">content/index/index_download_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n	<param name=\"sql\">CREATE TABLE `{TB_PREFIX}download` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `softwareName` varchar(200) NOT NULL default \'NOT NULL\',\r\n	  `softwareSize` varchar(200) default NULL,\r\n	  `language` varchar(40) default NULL,\r\n	  `classification` varchar(200) default NULL,\r\n	  `platform` varchar(200) default NULL,\r\n	  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n	  `introduce` text,\r\n	  `filePath` varchar(200) NOT NULL default \'NOT NULL\',\r\n	  `counts` int(11) NOT NULL default \'0\',\r\n	  `cguid` varchar(16) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n	</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/download/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/download.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/download.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/download/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_download_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}download` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'download\'</param>\r\n	</cmd>\r\n</deepthroat>', '这是一个下载模块，可以用户提供软件、文档资料的下载。', '70511', '0');

--<br>--

INSERT INTO `##_models_reg` VALUES ('9', 'calllist', '列表调用', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>列表调用模块</model_name>\r\n	<type>calllist</type>\r\n	<summary>这是一个列表调用模块，用来调用新闻频道或栏目。</summary>\r\n	<version>70905</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/calllist/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_calllist.php</param>\r\n<param name=\"destination\">admini/controllers/calllist.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_calllist.php</param>\r\n<param name=\"destination\">admini/models/calllist.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/calllist/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/calllist/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}calllist` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `channelId` int(11) NOT NULL,\r\n  `callId` varchar(400) character set utf8 NOT NULL,\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n</cmd>\r\n</deepthroat>\r\n\r\n\r\n', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/calllist/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/calllist.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/calllist.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/calllist/</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}calllist` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'calllist\'</param>\r\n</cmd>\r\n</deepthroat>', '这是一个列表调用模块，用来调用新闻频道或栏目。', '70905', '0');

--<br>--
INSERT INTO `##_models_reg` VALUES ('10', 'poll', '投票系统', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>投票系统</model_name>\r\n	<type>poll</type>\r\n	<summary>这是一个投票系统，用来与用户进行互动，了解用户心理。</summary>\r\n	<version>81124</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/poll/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create_title.php</param>\r\n		<param name=\"destination\">admini/views/poll/create_title.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit_title.php</param>\r\n		<param name=\"destination\">admini/views/poll/edit_title.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create_choice.php</param>\r\n		<param name=\"destination\">admini/views/poll/create_choice.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit_choice.php</param>\r\n		<param name=\"destination\">admini/views/poll/edit_choice.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_poll.php</param>\r\n		<param name=\"destination\">admini/controllers/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_poll.php</param>\r\n		<param name=\"destination\">admini/models/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_poll_category.php</param>\r\n		<param name=\"destination\">admini/models/poll_category.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/poll/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/poll/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_view.php</param>\r\n		<param name=\"destination\">content/poll/parts_view.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_poll.php</param>\r\n		<param name=\"destination\">content/index/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_poll_0.php</param>\r\n		<param name=\"destination\">content/index/index_poll_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">CREATE TABLE `{TB_PREFIX}poll` (\r\n		`id` int(11) NOT NULL auto_increment,\r\n		`channelId` int(11) NOT NULL default \'0\',\r\n		`choice` varchar(255) NOT NULL,\r\n		`categoryId` int(11) NOT NULL default \'0\',\r\n		`isdefault` set(\'a\',\'b\') NOT NULL default \'a\',\r\n		`ordering` int(11) NOT NULL default \'0\',\r\n		`num` int(11) NOT NULL default \'1\',\r\n		PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">\r\n		CREATE TABLE `{TB_PREFIX}poll_category` (\r\n		`id` int(11) NOT NULL auto_increment,\r\n		`title` varchar(200) NOT NULL default \'\',\r\n		`choice` set(\'a\',\'b\') default \'a\',\r\n		`client_ip` longtext,\r\n		`channelId` int(11) NOT NULL default \'0\',\r\n		`dtTime` date NOT NULL default \'0000-00-00\',\r\n		`ordering` int(11) NOT NULL default \'0\',\r\n		PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n	</param>\r\n	</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/poll/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/poll_category.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/poll/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_poll_0.php</param>\r\n	</cmd>	\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}poll` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'poll\'</param>\r\n	</cmd>\r\n</deepthroat>', '这是一个投票系统，用来与用户进行互动，了解用户心理。', '81124', '0');

--<br>--

INSERT INTO `##_models_reg` VALUES ('11', 'mapshow', '地图展示',  '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>列表调用模块</model_name>\r\n	<type>mapshow</type>\r\n	<summary>这是一个百度地图模块，可以添加商家的地图位置。</summary>\r\n	<version>70905</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/mapshow/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_mapshow.php</param>\r\n<param name=\"destination\">admini/controllers/mapshow.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_mapshow.php</param>\r\n<param name=\"destination\">admini/models/mapshow.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/mapshow/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/mapshow/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}mapshow` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `channelId` int(11) NOT NULL,\r\n  `callId` varchar(400) character set utf8 NOT NULL,\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n</cmd>\r\n</deepthroat>\r\n\r\n\r\n', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/mapshow/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/mapshow.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/mapshow.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/mapshow/</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}mapshow` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'mapshow\'</param>\r\n</cmd>\r\n</deepthroat>', '这是一个百度地图模块，可以添加商家的地图位置，Model By grysoft。', '110905', '0');

--<br>--

INSERT INTO `##_models_reg` VALUES ('12', 'webmap', '网站地图', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>网站地图</model_name>\r\n	<type>webmap</type>\r\n	<summary>这是一个网站地图模块，用来展示网站频道或栏目。</summary>\r\n	<version>80905</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/webmap/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_webmap.php</param>\r\n<param name=\"destination\">admini/controllers/webmap.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_webmap.php</param>\r\n<param name=\"destination\">admini/models/webmap.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/webmap/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/webmap/parts_index.php</param>\r\n</cmd>\r\n</deepthroat>\r\n\r\n\r\n', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/webmap/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/webmap.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/webmap.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/webmap/</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'webmap\'</param>\r\n</cmd>\r\n</deepthroat>', '这是一个网站地图模块，用来展示网站频道或栏目。', '80905', '0');
--<br>--

INSERT INTO `##_models_reg` VALUES ('13', 'linkers', '友情链接', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>友情链接</model_name>\r\n	<type>linkers</type>\r\n	<summary>这是一个友情链接模块，可以添加网站的友情链接。</summary>\r\n	<version>80404</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/linkers/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/linkers/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/linkers/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_linkers.php</param>\r\n		<param name=\"destination\">admini/controllers/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_linkers.php</param>\r\n		<param name=\"destination\">admini/models/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/linkers/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/linkers/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_linkers.php</param>\r\n		<param name=\"destination\">content/index/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n	<param name=\"sql\">CREATE TABLE `{TB_PREFIX}linkers` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `picture` varchar(255) NOT NULL,\r\n	  `title` varchar(100) NOT NULL default \'\',\r\n	  `linkAddress` varchar(150) NOT NULL,\r\n	  `summary` text NOT NULL,\r\n	  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n	  `indexPicture` varchar(255) NOT NULL,\r\n	  `counts` int(11) NOT NULL default \'200\',\r\n	  `smallPic` varchar(255) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n	</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/linkers/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/linkers/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}linkers` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'linkers\'</param>\r\n	</cmd>\r\n</deepthroat>', '这是一个友情链接模块，可以添加网站的友情链接。', '80404', '0');

--<br>--

INSERT INTO `##_models_reg` VALUES ('14', 'rss', 'RSS订阅',  '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>网站地图</model_name>\r\n	<type>rss</type>\r\n	<summary>这是一个RSS订阅模块，用来展示网站RSS订阅。</summary>\r\n	<version>80905</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/rss/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_rss.php</param>\r\n<param name=\"destination\">admini/controllers/rss.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_rss.php</param>\r\n<param name=\"destination\">admini/models/rss.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/rss/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/rss/parts_index.php</param>\r\n</cmd>\r\n</deepthroat>\r\n\r\n\r\n', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/rss/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/rss.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/rss.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/rss/</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'rss\'</param>\r\n</cmd>\r\n</deepthroat>', '这是一个RSS订阅模块，用来展示网站RSS订阅。' ,'100421', '0');

--<br>--

INSERT INTO `##_models_reg` VALUES ('15', 'user', '会员中心', '', '', '', '网站注册会员管理中心。', '110905', '1');

--<br>--

INSERT INTO `##_models_reg` VALUES ('16', 'order', '自定义表单', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>自定义表单模块</model_name>\r\n	<type>order</type>\r\n	<summary>这是一个自定义表单模块，用于产生一个客户自定义表单。</summary>\r\n	<version>70511</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_edit.php</param>\r\n<param name=\"destination\">admini/views/order/edit.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/order/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_order.php</param>\r\n<param name=\"destination\">admini/controllers/order.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_order.php</param>\r\n<param name=\"destination\">admini/models/order.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/order/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/order/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_create.php</param>\r\n<param name=\"destination\">content/order/parts_create.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}order` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `productName` varchar(100) default NULL,\r\n  `productSN` varchar(100) default NULL,\r\n  `deliveryTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `transports` varchar(100) default NULL,\r\n  `linkman` varchar(100) default NULL,\r\n  `unit` varchar(100) default NULL,\r\n  `address` varchar(100) default NULL,\r\n  `phone` varchar(100) default NULL,\r\n  `email` varchar(100) default NULL,\r\n  `remark` text,\r\n  `handling` int(11) NOT NULL default \'0\',\r\n  `result` text,\r\n  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `channelId` int(11) NOT NULL default \'0\',\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n</param>\r\n</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/order/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/order.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/order.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/order/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/index/index_order_0.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}order` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'order\'</param>\r\n</cmd>\r\n</deepthroat>', '这是一个自定表单模块模块，用于产生一个客户自定义表单。Model By grysoft QQ：767912290', '121111', '0');
--<br>--

INSERT INTO ##_models_reg VALUES ('17', 'tags', '自定义碎片标签', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>自定义表单模块</model_name>\r\n	<type>order</type>\r\n	<summary>这是一个自定义碎片标签模块，用于产生一个客户自定义碎片标签。</summary>\r\n	<version>70511</version>\r\n</config>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_edit.php</param>\r\n<param name=\"destination\">admini/views/order/edit.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/order/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_order.php</param>\r\n<param name=\"destination\">admini/controllers/order.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_order.php</param>\r\n<param name=\"destination\">admini/models/order.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/order/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/order/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_create.php</param>\r\n<param name=\"destination\">content/order/parts_create.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}order` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `productName` varchar(100) default NULL,\r\n  `productSN` varchar(100) default NULL,\r\n  `deliveryTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `transports` varchar(100) default NULL,\r\n  `linkman` varchar(100) default NULL,\r\n  `unit` varchar(100) default NULL,\r\n  `address` varchar(100) default NULL,\r\n  `phone` varchar(100) default NULL,\r\n  `email` varchar(100) default NULL,\r\n  `remark` text,\r\n  `handling` int(11) NOT NULL default \'0\',\r\n  `result` text,\r\n  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `channelId` int(11) NOT NULL default \'0\',\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n</param>\r\n</cmd>\r\n</deepthroat>', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/order/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/order.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/order.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/order/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/index/index_order_0.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}order` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'order\'</param>\r\n</cmd>\r\n</deepthroat>', '自定义碎片标签，用于产生一个客户自定义碎片标签。Model By grysoft QQ：767912290', '160512', '0');
--<br>--
DROP TABLE IF EXISTS `##_models_set`;
--<br>--
CREATE TABLE `##_models_set` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0',
  `type` varchar(60) NOT NULL,
  `field` varchar(255) NOT NULL,
  `field_tab` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
--<br>--
INSERT INTO `##_models_set` VALUES ('1', '3', 'product', '型号@规格', '产品详情@附件');
--<br>--
INSERT INTO `##_models_set` VALUES ('2', '19', 'order', '公司地址@注册资本@加盟规模', '');
--<br>--
DROP TABLE IF EXISTS `##_order`;
--<br>--
CREATE TABLE `##_order` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '' COMMENT '表单标题',
  `custom` text COMMENT '自定义参数',
  `remark` text COMMENT '备注',
  `handling` int(11) NOT NULL default '0' COMMENT '订单处理',
  `result` text,
  `ispay` int(11) NOT NULL default '0' COMMENT '是否付款',
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `payprice` decimal(10,0) NOT NULL default '0' COMMENT '支付价格',
  `orderId` varchar(20) NOT NULL default '' COMMENT '订单号',
  `customer` varchar(50) NOT NULL default '' COMMENT '付款人',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
INSERT INTO `##_order` VALUES ('1', '郑州路之易科技有限公司', '中国.郑州<|@|>1xx万<|@|>2xx万', '加盟稻壳网商业联盟，一起共创辉煌~', '0', '', '0', '19', '0', '', '', '2012-11-06 17:33:31');

--<br>--
DROP TABLE IF EXISTS `##_picture`;
--<br>--
CREATE TABLE `##_picture` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `title` varchar(60) NOT NULL default '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `smallPic` text COMMENT '小图片',
  `middlePic` text COMMENT '中等图片',
  `originalPic` text COMMENT '原图',
  `indexPic` text COMMENT '上传封面',
  `counts` int(11) NOT NULL default '0' COMMENT '点击数',
  `content` text,
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  `hassplitpages` int(11) NOT NULL default '0' COMMENT '分页标记 0无 1有',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
INSERT INTO `##_picture` VALUES ('1', '15', '2喵2猴的生活', '喵星人，2喵，动画片，喵粮', '2 喵——来之喵星，众多喵星人之一，日常喜欢的娱乐的活动：看动画片、玩儿纸团、贴壁攀岩、追不明飞行物、毁坏东西、被人调戏、调戏他人、玩儿偷袭、吃喵粮、睡大觉。\r\n2 猴——不解释了，你们懂的！', '2012-11-08 11:32:03', '/upload/201210/s_20121026164244626.jpg|/upload/201210/s_20121031174042754.jpg', '/upload/201210/m_20121026164244626.jpg|/upload/201210/m_20121031174042754.jpg', '/upload/201210/20121026164244626.jpg|/upload/201210/20121031174042754.jpg', '/upload/201210/i_20121026164244626.jpg|/upload/201210/i_20121031174042754.jpg', '0', '<p>\r\n	2 喵——来之喵星，众多喵星人之一，日常喜欢的娱乐的活动：看动画片、玩儿纸团、贴壁攀岩、追不明飞行物、毁坏东西、被人调戏、调戏他人、玩儿偷袭、吃喵粮、睡大觉。2喵的世界，永远是普通人类所不懂和不了解的。对了，上周2喵居然还学会了用遥控器换电视了，估计下周能学会自己开电视... 让偶以后肿么活.\r\n</p>\r\n<p>\r\n	2 猴——不解释了，你们都懂的！\r\n</p>', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('2', '15', '2 哥和他的妹纸们', '', '东藏的篝火晚会...', '2012-11-08 11:31:41', '/upload/201210/s_20121026165110576.jpg', '/upload/201210/m_20121026165110576.jpg', '/upload/201210/20121026165110576.jpg', '/upload/201210/i_20121026165110576.jpg', '0', '东藏的篝火晚会，2哥貌似很有收货...', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('3', '15', '天凡，天不凡', '', '天凡老师，你还有神马是不会的？', '2012-11-08 11:32:36', '/upload/201210/s_20121026165212503.jpg', '/upload/201210/m_20121026165212503.jpg', '/upload/201210/20121026165212503.jpg', '/upload/201210/i_20121026165212503.jpg', '0', '天凡老师，一看就是专业的偷拍高手？', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('4', '15', '木木仰天长叹', '', '木木仰天长叹，"老天啊，为毛旁边的妹纸8是我的！"', '2012-11-08 11:29:42', '/upload/201210/s_20121026165340436.jpg', '/upload/201210/m_20121026165340436.jpg', '/upload/201210/20121026165340436.jpg', '/upload/201210/i_20121026165340436.jpg', '0', '木木仰天长叹，"啊，老天，为毛旁边的妹纸只是巧合的丛丛过客！"', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('5', '15', '2哥和2狗', '', '2哥想看后面的妹纸，找2狗子做帮手。', '2012-11-08 11:28:57', '/upload/201210/s_20121026165448753.jpg', '/upload/201210/m_20121026165448753.jpg', '/upload/201210/20121026165448753.jpg', '/upload/201210/i_20121026165448753.jpg', '0', '2哥想牵走后面的妹纸，找2狗子做帮手搞定前面挡道的汉子。', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('6', '15', '氓流果的纯洁', '', '看到漂亮妹纸后，纯洁的氓流果露出了他灿烂的笑容', '2012-11-08 11:28:20', '/upload/201210/s_20121026165617559.jpg', '/upload/201210/m_20121026165617559.jpg', '/upload/201210/20121026165617559.jpg', '/upload/201210/i_20121026165617559.jpg', '0', '看到漂亮川妹纸后，纯洁的氓流果露出了他纯洁的微笑。', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('7', '15', '峨眉没见到芷若后的2货', '', '木有情人的情人节，让人肿么活？', '2012-10-26 17:13:48', '/upload/201210/s_2012102616582088.jpg', '/upload/201210/m_2012102616582088.jpg', '/upload/201210/2012102616582088.jpg', '/upload/201210/i_2012102616582088.jpg', '16', '木有情人的情人节，让人肿么活？', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('8', '15', '汉子们的欢乐', '', '妹纸们，你们在哪里？', '2012-11-08 11:27:49', '/upload/201210/s_20121026165900795.jpg', '/upload/201210/m_20121026165900795.jpg', '/upload/201210/20121026165900795.jpg', '/upload/201210/i_20121026165900795.jpg', '0', '妹纸们，你们在哪里呢？', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('9', '15', '希望变好汉', '', '额，如果到了长城是这结果，那妹子就悲剧了。', '2012-11-08 11:27:32', '/upload/201210/s_2012102617010624.jpg', '/upload/201210/m_2012102617010624.jpg', '/upload/201210/2012102617010624.jpg', '/upload/201210/i_2012102617010624.jpg', '0', '额...如果到了长城是这结果，那旁边的 2妹子 可就杯具了。', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('10', '15', '咱们屁民有力量', '', '这力量是铁，这力量是钢', '2012-11-08 11:27:05', '/upload/201210/s_20121026170158642.jpg', '/upload/201210/m_20121026170158642.jpg', '/upload/201210/20121026170158642.jpg', '/upload/201210/i_20121026170158642.jpg', '0', '这力量是铁，这力量是钢。', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('11', '15', '5月岷山雪顶找感觉', '', '更喜岷山千里雪，2货过后没感觉！8过，正是走在今天崭新的蜀道上，才更能对比出和真正感觉到创造历史的伟人们伟大。', '2012-10-26 17:07:44', '/upload/201210/s_20121026170445193.jpg', '/upload/201210/m_20121026170445193.jpg', '/upload/201210/20121026170445193.jpg', '/upload/201210/i_20121026170445193.jpg', '19', '更喜岷山千里雪，2货过后没感觉！8过，正是走在今天崭新的蜀道上，才更能对比出和真正感觉到创造历史的伟人们伟大。', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('12', '15', '2妹要求，再来一张', '', '好吧，满足一下几个2货的虚荣心，那就再来一张吧', '2012-11-08 11:26:30', '/upload/201210/s_20121026170522234.jpg|/upload/201210/s_20121031173128158.jpg', '/upload/201210/m_20121026170522234.jpg|/upload/201210/m_20121031173128158.jpg', '/upload/201210/20121026170522234.jpg|/upload/201210/20121031173128158.jpg', '/upload/201210/i_20121026170522234.jpg|/upload/201210/i_20121031173128158.jpg', '0', '好吧，满足一下几个2货的虚荣心，那就再来一张吧，顺便为第二张左边那小哥征婚~ 应征者请积极联系官方氓流果Q：549107342。<br />', '0', '0');

--<br>--
INSERT INTO `##_picture` VALUES ('13', '15', '神奇的九寨', '', '神奇的九寨，来了一群死变态！因为他们之前刚在黄龙龙 黄龙洞 变态般的虐待了黄龙，抢走了龙之血、龙之心和黄龙蛋，有了专属的他们就更变态了。', '2012-10-31 17:31:28', '/upload/201210/s_20121026170711669.jpg|/upload/201210/s_20121031173002847.jpg|/upload/201210/s_20121031173002581.jpg|/upload/201210/s_2012103117300385.jpg|/upload/201210/s_20121031173003623.jpg|/upload/201210/s_20121031173128158.jpg', '/upload/201210/m_20121026170711669.jpg|/upload/201210/m_20121031173002847.jpg|/upload/201210/m_20121031173002581.jpg|/upload/201210/m_2012103117300385.jpg|/upload/201210/m_20121031173003623.jpg|/upload/201210/m_20121031173128158.jpg', '/upload/201210/20121026170711669.jpg|/upload/201210/20121031173002847.jpg|/upload/201210/20121031173002581.jpg|/upload/201210/2012103117300385.jpg|/upload/201210/20121031173003623.jpg|/upload/201210/20121031173128158.jpg', '/upload/201210/i_20121026170711669.jpg|/upload/201210/i_20121031173002847.jpg|/upload/201210/i_20121031173002581.jpg|/upload/201210/i_2012103117300385.jpg|/upload/201210/i_20121031173003623.jpg|/upload/201210/i_20121031173128158.jpg', '32', '神奇的九寨，来了一群死变态！因为他们之前刚在黄龙景区 黄龙洞 变态般的虐待了黄龙，抢走了龙之血、龙之心和黄龙蛋，有了专属的他们就更变态了。', '0', '0');

--<br>--
DROP TABLE IF EXISTS `##_poll`;
--<br>--
CREATE TABLE `##_poll` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `choice` varchar(255) NOT NULL default '' COMMENT '投票选项',
  `categoryId` int(11) NOT NULL default '0' COMMENT '投票类别',
  `isdefault` set('a','b') NOT NULL default 'a' COMMENT '单选多选',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  `num` int(11) NOT NULL default '1' COMMENT '投票人数',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--<br>--
INSERT INTO `##_poll` VALUES ('1', '17', '增加网站模板', '1', 'b', '0', '1');
--<br>--
INSERT INTO `##_poll` VALUES ('2', '17', '搜索引擎优化', '1', 'b', '0', '2');
--<br>--
INSERT INTO `##_poll` VALUES ('3', '17', '增加采集功能', '1', 'b', '0', '1');
--<br>--
INSERT INTO `##_poll` VALUES ('4', '17', '整体功能加强', '1', 'b', '0', '1');
--<br>--
INSERT INTO `##_poll` VALUES ('5', '17', '商城', '2', 'b', '0', '1');
--<br>--
INSERT INTO `##_poll` VALUES ('6', '17', '论坛', '2', 'b', '0', '2');
--<br>--
INSERT INTO `##_poll` VALUES ('7', '17', '团购', '2', 'b', '0', '2');
--<br>--
INSERT INTO `##_poll` VALUES ('8', '17', '门户', '2', 'a', '0', '3');
--<br>--
DROP TABLE IF EXISTS `##_poll_category`;
--<br>--
CREATE TABLE `##_poll_category` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL default '' COMMENT '投票标题',
  `choice` set('a','b') default 'a' COMMENT '单选多选',
  `client_ip` longtext COMMENT '客户ip',
  `channelId` int(11) NOT NULL default '0' COMMENT '隶属频道栏目ID',
  `dtTime` date NOT NULL default '0000-00-00' COMMENT '创建时间',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
INSERT INTO `##_poll_category` VALUES ('1', '您觉得DocCms X 哪些地方还需改进？', 'a', '', '17', '2012-10-31 10:30:44', '0');

--<br>--
INSERT INTO `##_poll_category` VALUES ('2', '您期待DocCms X 增加哪些功能？', 'b', '2130706433', '17', '2012-10-31 10:35:23', '0');

--<br>--
DROP TABLE IF EXISTS `##_product`;
--<br>--
CREATE TABLE `##_product` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `title` varchar(255) NOT NULL default '',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要',
  `sn` varchar(100) NOT NULL default '' COMMENT '产品型号',
  `spec` varchar(255) NOT NULL default '' COMMENT '产品规格',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `ispush` int(11) NOT NULL default '0' COMMENT '推荐',
  `sellingPrice` decimal(10,2) NOT NULL default '0.00' COMMENT '市场价',
  `preferPrice` decimal(10,2) NOT NULL default '0.00' COMMENT '优惠价',
  `content` text COMMENT '产品内容',
  `originalPic` varchar(255) NOT NULL default '' COMMENT '原图',
  `middlePic` varchar(255) NOT NULL default '' COMMENT '中图',
  `smallPic` varchar(255) NOT NULL default '' COMMENT '小图',
  `indexPic` varchar(255) NOT NULL default '' COMMENT '封面图',
  `categoryId` varchar(100) NOT NULL default '0' COMMENT '隶属分类',
  `counts` int(11) NOT NULL default '0' COMMENT '点击数',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  `hassplitpages` int(11) NOT NULL default '0' COMMENT '分页标记 0无 1有',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
INSERT INTO `##_product` VALUES ('1', '13', '稻壳网-电子商务全案整合营销平台', 'doooc,稻壳，稻壳网，网站，推广，信息化，全案，B2B，电子商务，开发者，威客，专业，商业平台', '基于 DocCms X 的多用户网站托管、推广平台，致力于为 DocCms 粉丝打造一款高效、便捷、专业 且具有分享精神的一站式信息化全案推广营销平台。使企业品牌信息化建设、推广工作变得不再复杂，并可与 DocCms X 单用户版本实现数据互用互通，为广大粉丝创造出一款与众不同的特色Cms产品，并为广大用户创造出最大的商业价值 。', '', '<|@|>', '2012-10-31 18:11:41', '0', '0.00', '0.00', 'DoooC.com —— [ 中文名：稻壳网 ] 基于 DocCms X 的多用户网站托管、推广平台，致力于为 DocCms 粉丝打造一款高效、便捷、专业 且具有分享精神的一站式信息化全案推广营销平台。使企业品牌信息化建设、推广工作变得不再复杂，并可与 DocCms X 单用户版本实现数据互用互通，为广大粉丝创造出一款与众不同的特色Cms产品，并为广大用户创造出最大的商业价值 。<br />\r\n<br />\r\n稻壳网—— 由多年互联网从业经历的Web工程师和设计师组成，主要致力于电子商务应用技术领域的探索和研发，在过去几年时间里，为数十万计中小企业网站用户提供多层面的电子商务应用服务和信息化建设方案！<br />\r\n<br />\r\n『免费 建站』——也许您之前还一直在为如何才能免费、快速、便捷建设一个网站而发愁，那么现在不用了！有了稻壳网，一切将不再是梦！只需简单几步：了解Doooc.com-&gt;注册-&gt;完善信息-&gt;开通网站-&gt;添加数据-&gt;修改模板。一个灵活、大气的网站就将呈现；<br />\r\n<br />\r\n没错，这一切将是完全是免费的，您再也不用为找不到一个免费、合适、高速的虚拟主机而发愁，也不用为它复杂、捉摸不透的管理而迷茫，更不用为建设一个好用、漂亮的网站而支付各种高昂的费用。<br />\r\n<br />\r\n『免费 推广』——当您在 稻壳网 上创建好自己的网站并绑定独立域名后，稻壳网 将会自动从您的网站站中提取最有价值的信息并推送到 Doooc.com 平台，利用我们专业的优化推广为您的网站增加流量、扩大客户来源、提升知明度；<br />\r\n<br />\r\n同时您没看错，这还将是一个全新的B2B平台，您还可以在路易平台免费发布您的供求信息与广大企业进行信息交流和贸易往来。当然，这还不是一切，精彩继续。。。<br />\r\n<br />\r\n『自助翻译 多语企业网站不是梦！』——入住了稻壳网，您再也不必为不知道如何将自己的企业展现给老外而发愁，稻壳网利用 DocCms 系统独有的平台技术帮您自动完成自定义语言网站的建设，您只需要动动鼠标简单设置一下即可，中文、英文、繁体。。。<br />\r\n<br />\r\n当然机器的翻译往往并不会特别准确，但如果您了解搜索引擎的话就会发现搜索引擎其实也很傻，至少他可以利用这些翻译将您的网站展示到国外，当然，您还可以通过后台管理来将它专业化、形像化。。。<br />\r\n<br />\r\n『开发者服务 专业维护』——说了那么多，我们也不会、并且不能忘记企业建站的核心——站长和开发者，有了稻壳网的威客功能，站长和企业之间的互动和对接将会变得轻松便捷。站长服务于企业，企业信息的推广也离不开站长！<br />\r\n<br />\r\n在稻壳网企业可以通过自己的管理后台查看到无数专业级的站长，并根据站长们取得的荣誉来选择您喜爱的那一位为您服务。当然，我们赞成劳有所得，所以衷心的希望双方合作愉快，互有所获！<br />\r\n<br />\r\n『开发者平台』——站长将成为稻壳网最可爱的一群人，他们会每天来的最早、走的最晚，甚至通宵达旦来满足企业不同、不定时的需求，随时为企业的需要做着准备！<br />\r\n<br />\r\n站长还将在业余之时，为企业提供更多、更精彩的模板、动画、图片等互联网产品资源到稻壳网，让企业在更新、升级自己的企业网站时可以有更多、更丰富的选择，从而满足不同企业的味觉需要！<br />\r\n<br />\r\n『未来。。。』——移动、无线等更多精彩内容，尽在未来，让我们一起努力并期待！<br /><|@|>', '', '', '', '', '13', '13', '0', '0');

--<br>--
INSERT INTO `##_product` VALUES ('2', '12', 'Shlcms 4.2 (深喉咙)网站生成系统', 'Shlcms，深喉咙，企业，建站，系统，自助建站，模板', '深喉咙致力于改善企业信息化进程。推出高质量的建站产品与一站式解决方案，将企业网站设计、制作、内容管理、推广、客户拓展与联络一系列环节融合到软件当中去。为企业提供高性价比的企业互联网门户系统。', '', '<|@|>', '2012-11-07 11:31:29', '0', '0.00', '0.00', '<p>\r\n	深喉咙致力于改善企业信息化进程。推出高质量的建站产品与一站式解决方案，将企业网站设计、制作、内容管理、推广、客户拓展与联络一系列环节融合到软件当中去。为企业提供高性价比的企业互联网门户系统。\r\n</p>\r\n<p>\r\n	深喉咙CMS官方下载地址：<a href=\"http://www.shenhoulong.com/SystemDownload/\" target=\"_blank\">http://www.shenhoulong.com/SystemDownload/</a>\r\n</p><|@|>', '/upload/201210/201210311753054.jpg', '/upload/201210/m_201210311753054.jpg', '/upload/201210/s_201210311753054.jpg', '/upload/201210/i_201210311753054.jpg', '12', '1', '0', '0');

--<br>--
INSERT INTO `##_product` VALUES ('3', '11', 'DocCms X 1.0(稻壳)企业建站系统', '', 'DocCms X —— [ 音译：稻壳Cms ] 是一款于2012年11月11日正式发布，定位于为企业、站长、开发者、网络公司、VI策划设计公司、SEO推广营销公司、网站初学者等用户 量身打造的一款全新企业建站、内容管理系统，服务于企业品牌信息化建设，也适应用个人、门户网站建设！', '', '<|@|>', '2012-11-07 11:30:49', '0', '0.00', '0.00', '<p>\r\n	DocCms X —— [ 音译：稻壳Cms ] 是一款将于2012年11月11日正式发布，定位于为企业、站长、开发者、网络公司、VI策划设计公司、SEO推广营销公司、网站初学者等用户 量身打造的一款全新企业建站、内容管理系统，服务于企业品牌信息化建设，也适应用个人、门户网站建设！\r\n</p>\r\n<p>\r\n	稻壳CMS官方下载地址：<a href=\"http://www.doccms.com/DocCmsX10/\" target=\"_blank\">http://www.doccms.com/DocCmsX10/</a>\r\n</p><|@|>', '/upload/201210/20121031175054739.jpg', '/upload/201210/m_20121031175054739.jpg', '/upload/201210/s_20121031175054739.jpg', '/upload/201210/i_20121031175054739.jpg', '11', '14', '0', '0');

--<br>--
INSERT INTO `##_product` VALUES ('4', '10', '苹果概念车iMove one', '', '几日，一名意大利设计师依据苹果产品的设计风格自行画出了一台名为"iMove"苹果概念车效果图。', '', '<|@|>', '2012-10-31 15:16:22', '0', '0.00', '0.00', '几日，一名意大利设计师依据苹果产品的设计风格自行画出了一台名为"iMove"苹果概念车效果图。<br /><|@|>几日，一名意大利设计师依据苹果产品的设计风格自行画出了一台名为"iMove"苹果概念车效果图。几日，一名意大利设计师依据苹果产品的设计风格自行画出了一台名为"iMove"苹果概念车效果图。<br />', '/upload/201210/20121026095432518.jpeg|/upload/201210/20121026095433948.jpeg|/upload/201210/20121026095433299.jpeg|/upload/201210/20121026095434273.jpeg', '/upload/201210/m_20121026095432518.jpeg|/upload/201210/m_20121026095433948.jpeg|/upload/201210/m_20121026095433299.jpeg|/upload/201210/m_20121026095434273.jpeg', '/upload/201210/s_20121026095432518.jpeg|/upload/201210/s_20121026095433948.jpeg|/upload/201210/s_20121026095433299.jpeg|/upload/201210/s_20121026095434273.jpeg', '/upload/201210/i_20121026095432518.jpeg|/upload/201210/i_20121026095433948.jpeg|/upload/201210/i_20121026095433299.jpeg|/upload/201210/i_20121026095434273.jpeg', '10', '143', '0', '0');

--<br>--
INSERT INTO `##_product` VALUES ('5', '10', '苹果概念车iMove two', '', '如今，移动互联技术"武装"汽车，正在超越终端界限，手机+汽车=惊喜？也许，明年此时的北京、广州车展，吸引看客们的将不仅仅是"波涛汹涌"的麻豆，还有让车"飞"起来的新HIGH点。一名意大利设计师依据苹果产品的设计风格自行画出了一台名为"iMove"苹果概念车效果图。', '', '<|@|>', '2012-10-31 11:55:48', '0', '0.00', '0.00', '如今，移动互联技术"武装"汽车，正在超越终端界限，手机+汽车=惊喜？也许，明年此时的北京、广州车展，吸引看客们的将不仅仅是"波涛汹涌"的麻豆，还有让车"飞"起来的新HIGH点。一名意大利设计师依据苹果产品的设计风格自行画出了一台名为"iMove"苹果概念车效果图。<br />', '/upload/201210/20121026095155738.jpeg|/upload/201210/20121026095155139.jpeg|/upload/201210/20121026095156140.jpeg|/upload/201210/20121026095156261.jpeg', '/upload/201210/m_20121026095155738.jpeg|/upload/201210/m_20121026095155139.jpeg|/upload/201210/m_20121026095156140.jpeg|/upload/201210/m_20121026095156261.jpeg', '/upload/201210/s_20121026095155738.jpeg|/upload/201210/s_20121026095155139.jpeg|/upload/201210/s_20121026095156140.jpeg|/upload/201210/s_20121026095156261.jpeg', '/upload/201210/i_20121026095155738.jpeg|/upload/201210/i_20121026095155139.jpeg|/upload/201210/i_20121026095156140.jpeg|/upload/201210/i_20121026095156261.jpeg', '10', '9', '0', '0');

--<br>--
DROP TABLE IF EXISTS `##_product_order`;

--<br>--
CREATE TABLE `##_product_order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `orderId` varchar(50) NOT NULL default '' COMMENT '订单号',
  `usertype` tinyint(1) unsigned NOT NULL default '0' COMMENT '用户类型0未注册用户1注册用户',
  `userid` int(11) NOT NULL default '0' COMMENT '用户id',
  `ispay` tinyint(1) NOT NULL default '0' COMMENT '是否支付',
  `m_tel` varchar(11) NOT NULL default '' COMMENT '手机',
  `address` varchar(50) NOT NULL default '' COMMENT '发货地址',
  `orederinfo` text COMMENT '订单详细',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '订单日期',
  `stauts` tinyint(1) unsigned NOT NULL default '0' COMMENT '0未处理 1处理',
  `payprice` int(20) NOT NULL default '0' COMMENT '付款金额',
  `customer` varchar(10) NOT NULL default '' COMMENT '下单客户',
  `remark` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--<br>--
DROP TABLE IF EXISTS `##_tags`;
--<br>--
CREATE TABLE `##_tags` (
  `id` int(3) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '栏目id',
  `tagName` varchar(200) NOT NULL default '' COMMENT '标签名称',
  `title` varchar(255) NOT NULL default '' COMMENT '标题',
  `custom` text COMMENT '自定义字段',
  `content`  text COMMENT '标签内容',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
DROP TABLE IF EXISTS `##_user`;
--<br>--
CREATE TABLE `##_user` (
  `id` int(3) NOT NULL auto_increment,
  `nickname` varchar(32) NOT NULL default '' COMMENT '昵称',
  `email` varchar(60) NOT NULL default '' COMMENT '电子邮件',
  `username` varchar(16) NOT NULL default '' COMMENT '用户名',
  `pwd` varchar(75) NOT NULL default '' COMMENT '密码',
  `role` int(2) NOT NULL default '0' COMMENT '所属角色',
  `right` varchar(32) NOT NULL default '0',
  `originalPic` varchar(50) NOT NULL default '' COMMENT '头像',
  `smallPic` varchar(50) NOT NULL default '' COMMENT '缩略图',
  `cropPic` varchar(50) NOT NULL default '' COMMENT '切割图',
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `auditing` tinyint(4) NOT NULL default '0' COMMENT '审核',
  `ip` varchar(20) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `msn` varchar(30) NOT NULL default '',
  `name` varchar(255) NOT NULL default '' COMMENT '姓名',
  `sex` tinyint(1) NOT NULL default '1',
  `mtel` varchar(11) NOT NULL default '',
  `address` varchar(255) NOT NULL default '' COMMENT '住址',
  `age` varchar(12) NOT NULL default '',
  `lastlogin` bigint(20) NOT NULL default '0' COMMENT '最后一次登录时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
DROP TABLE IF EXISTS `##_video`;
--<br>--
CREATE TABLE `##_video` (
  `id` int(11) NOT NULL auto_increment,
  `channelId` int(11) NOT NULL default '0' COMMENT '频道栏目ID',
  `filePath` varchar(200) NOT NULL default '' COMMENT '文件路径',
  `fileSize` varchar(50) NOT NULL default '' COMMENT '文件大小',
  `title` varchar(150) NOT NULL default '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL default '' COMMENT '关键词',
  `description` varchar(255) NOT NULL default '' COMMENT '摘要',
  `content` text,
  `dtTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT '创建时间',
  `picture` varchar(200) NOT NULL default '' COMMENT '图片',
  `counts` int(11) NOT NULL default '0' COMMENT '点击数',
  `ordering` int(11) NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--<br>--
INSERT INTO `##_video` VALUES ('1', '7', 'http://www.tudou.com/v/qj8rdzXqSjg/&resourceId=0_04_05_99/v.swf', ' B', '爱到春潮滚滚来', '企业,品牌', '在激烈的竞争中，企业只有把品牌和产品塑造成充满人性和人文的有机复合载体，并通过全新的传播方式，才能使消费者在接受企业文化影响的同时，建立起对品牌的好感和忠诚。', '在激烈的竞争中，企业只有把品牌和产品塑造成充满人性和人文的有机复合载体，并通过全新的传播方式，才能使消费者在接受企业文化影响的同时，建立起对品牌的好感和忠诚。<br />', '2012-11-03 16:18:50', '/upload/201210/s_20121025105434873.jpg', '0', '0');

--<br>--
INSERT INTO `##_video` VALUES ('2', '7', 'http://www.tudou.com/v/5eg5-BjIiQg/&resourceId=0_04_05_99/v.swf', ' B', '江南之恋', '音乐,电影', '音乐电影作为一种全新的企业文化传播方式，越来越受到知名企业的青睐。企业作为经济社会发展的主体，其文化已成为时代文化重要的组成部分。', '音乐电影作为一种全新的企业文化传播方式，越来越受到知名企业的青睐。企业作为经济社会发展的主体，其文化已成为时代文化重要的组成部分。<br />', '2012-11-03 16:18:56', '/upload/201210/s_20121025103639542.jpg', '0', '0');

--<br>--
INSERT INTO `##_video` VALUES ('3', '7', 'http://www.tudou.com/v/p2sExK15I9U/&resourceId=0_04_05_99/v.swf', ' B', '康美之恋', 'MTV,鉴赏', '感知觉上的享受在这则广告中表现得淋漓尽致。正如大多数观众看了这部广告后最经常用两个字来评论——"唯美"。', '感知觉上的享受在这则广告中表现得淋漓尽致。正如大多数观众看了这部广告后最经常用两个字来评论——"唯美"。<br />', '2012-11-03 16:19:02', '/upload/201210/s_20121025102044449.jpg', '0', '0');
--<br>--