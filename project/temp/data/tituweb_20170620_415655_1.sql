#Realure.cn Created
# --------------------------------------------------------


DROP TABLE IF EXISTS doc_article;
CREATE TABLE `doc_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `pageId` int(11) NOT NULL DEFAULT '0' COMMENT '文章分页',
  `title` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `content` text NOT NULL,
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `originalPic` varchar(255) NOT NULL DEFAULT '' COMMENT '上传原图',
  `indexPic` varchar(255) NOT NULL DEFAULT '' COMMENT '上传小图',
  `counts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO doc_article VALUES('19','3','0','关于我们简介','','','<p class=\"MsoNormal\">\r\n	<b><span style=\"font-family:Tahoma;\">TITU, a rising star in Chinese ceramics brand</span></b> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<b><span style=\"font-family:Tahoma;\"><br />\r\n</span></b> \r\n</p>\r\n<p class=\"17\" align=\"justify\" style=\"text-align:justify;text-justify:inter-ideograph;background:#FFFFFF;\">\r\n	<span style=\"background-color:;\">Add: 12th Floor , Unit B ,Building 1# , No.131,Jihua West Road ,Chancheng Dist , Foshan , Guangdong , China</span> \r\n</p>\r\n<p class=\"17\" align=\"justify\" style=\"text-align:justify;text-justify:inter-ideograph;background:#FFFFFF;\">\r\n	<br />\r\n</p>','2017-06-01 15:23:02','','','6');
INSERT INTO doc_article VALUES('20','22','0','','','','&copy; 2013 Foshan Fotiles Ceramics Co.,Ltd. &nbsp;QQ:2534818703','2017-05-13 23:38:00','','','0');
INSERT INTO doc_article VALUES('28','23','0','','','','<h2>\r\n	<b>TITU, a rising star in Chinese ceramics brand</b> \r\n</h2>\r\n<p>\r\n	<b></b> \r\n</p>\r\n<p align=\"justify\" style=\"text-align:justify;\">\r\n	<span style=\"background-color:;\">Located in China Ceramics Capital, Foshan, TITU Ceramics is a leading exporter in China, specializing in researching, developing, manufacturing and distributing of Big Size Slim Tile ,Glazed Polished Tiles, Rustic Tiles, etc. Since the establishment in 2006, TITU has been always in pursuit of honesty and diligent to pave a long way to a glory future like as its corporate and win-win philosophy, at the same time, insisting on superior quality, high efficiency, all-around service like as our basic mission and target . Inheriting the good reputation of Ceramic Capital, TITU holds a motivation to set up an international brand as a Chinese model. At present, TITU has expanded its markets in Mideast, America, South-east Asia, Australia, Africa, and Europe etc. Its products applied in government projects like military areas, customhouses, banks, hospitals, and upscale offices, high-grade residential areas, starred hotels, all kinds of houses etc. TITU, as a famous brand in China Ceramics, gradually become a well-known world business card.</span> \r\n</p>\r\n<p align=\"justify\" style=\"text-align:justify;\">\r\n	<span style=\"text-indent:31.5pt;\">As a professional tiles supplier, we carry a wealth range of different sizes. Besides normal sizes of 600*600mm, 600*900mm, 800*800mm, 900*900mm, 600*1200mm,1000*1000mm(These&nbsp;6 sizes are mainly for Glazed Polished Tiles and Micro Crystal Tiles); 1200mm*1800mm (These&nbsp;size is mainly for Polished Tiles)&nbsp;and 600mm*1200mm, 900mm*1800mm, 1200mm*1800mm, 1200mm*2400mm(These sizes are mainly for big size slim tiles with 5.5 thickness). With its cutting-edge technology and professional service, TITU makes effort to meet all the needs of our customers, earning trust of our customers from all over the world. Besides superior quality, TITU offers the most competitive products in the industry. The most advanced techniques&nbsp;of 3D inkjet and 4D super smooth glaze inkjet are widely used in its fully-polished glazed porcelain tiles, rustic tiles, wooden-like tiles and Ceramics, making textures on tiles have a high imitation of the natural materials with hundreds of different designs. The unsurpassed realism of the real materials displays delicate grains with rich colors and touchable impression of softness and smoothness. &nbsp;Its newly released product – 6D crystal series leads the product to be a higher branding in the near future. TITU fully-polished glazed porcelain tile&nbsp;always win high acclaim from customers all over the world. Besides good service, TITU owned a professional marketing, quality-control, after-sale customer service to offer prompt and thoughtful response for every customer at anytime. Our hotline Tel: +86-757-63229722&nbsp;and </span><a href=\"mailto:sales@fotiles.com\" style=\"text-indent:31.5pt;\"><u><span style=\"background-color:;\">sales@fotiles.com</span></u></a><span style=\"text-indent:31.5pt;\">&nbsp;are available 24&nbsp;hours.</span> \r\n</p>\r\n<p align=\"justify\" style=\"text-align:justify;\">\r\n	<span style=\"text-indent:14pt;\">Maintaining its stable rise in marketing development, TITU Ceramics is also dedicated to the construction of the specialization of its brand. TITU takes active part in attending both domestic and oversea professional exhibitions. TITU has participated consecutively in Canton Fair held twice a year since 2010, set up a showroom in Uzbekistan in 2008, attended annual Spain International Ceramics Exhibition CEVISAMA from 2009 to 2010, attended BIG 5 fairs in Dubai for three consecutive years from 2010 to 2012, and coverings show in Atlanta, the US in 2011 ,2013 and 2017. Leading the world trend, TITU has realized a face-to-face communication with customers and forged the latest trade interactive platform for better mutual co-operation, pushing TITU to be the famous business card in the world.</span> \r\n</p>\r\n<p>\r\n	<span style=\"background-color:;\">Titu showroom covers an area of more than 2000 square meters, and also, set up branch offices in the United States, Vietnam and South Korea. We have more than 4,000 customers from about 100 countries in the world. At the same time we also have developed a large number of builders and large engineering business customers. We ever went to Mexico, starting business co-operation with local largest ceramics company to provide high-quality OEM service.</span> \r\n</p>\r\n<p>\r\n	<span style=\"background-color:;\">Following are some of our successful experience in exporting to oversea markets. Turnover of a single large upscale hotel project in Dubai in 2010 reached more than US$1 million; Sales amount of export to Mexico was about US$1.2 million in 2011 and 2012; also we have undertaken some big projects in Saudi Arabia, like real estate and hotel industry, with an order quantity from 50 thousand to 100 thousand square meters. Titu has been under a rapid growth situation since its establishment, even during awful situations, like the economic crisis, market decadent and peer common recession, our sales amount also increased by 30% than last year. Our annual export capacity was 2.5 million square meters/year in 2011-2012.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"background-color:;\">From zero to thriving, TITU Ceramics always sticks to constant innovation, keeps good quality, pursues distinguished marketing model in the ceramics industry step by step. In the future, TITU will continue inheriting Chinese ceramic culture and spreading Chinese ceramics to every corner in the world.</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:28.0000pt;\">\r\n	<strong><span style=\"background-color:;\">TITU Ceramics &nbsp;- &nbsp;Your best choice!</span></strong> \r\n</p>\r\n<p style=\"text-indent:28.0000pt;\">\r\n	<span style=\"background-color:;\">&nbsp;</span><img src=\"/upload/Image/20170601/20170601072911_39495.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','2017-06-17 14:30:13','','','23');
INSERT INTO doc_article VALUES('24','28','0','Profile','','','<h2>\r\n	<b><span>TITU, a rising star in Chinese ceramics brand</span></b> \r\n</h2>\r\n<p>\r\n	<b><span style=\"background-color:;\"><br />\r\n</span></b> \r\n</p>\r\n<p align=\"justify\" style=\"text-align:justify;background:#FFFFFF;\">\r\n	<span>Located in China Ceramics Capital, Foshan, TITU Ceramics is a leading exporter in China, specializing in researching, developing, manufacturing and distributing of Big Size Slim Tile ,Glazed Polished Tiles, Rustic Tiles, etc. Since the establishment in 2006, TITU has been always in pursuit of honesty and diligent to pave a long way to a glory future like as its corporate and win-win philosophy, at the same time, insisting on superior quality, high efficiency, all-around service like as our basic mission and target . Inheriting the good reputation of Ceramic Capital, TITU holds a motivation to set up an international brand as a Chinese model. At present, TITU has expanded its markets in Mideast, America, South-east Asia, Australia, Africa, and Europe etc. Its products applied in government projects like military areas, customhouses, banks, hospitals, and upscale offices, high-grade residential areas, starred hotels, all kinds of houses etc. TITU, as a famous brand in China Ceramics, gradually become a well-known world business card.</span> \r\n</p>\r\n<p align=\"justify\" style=\"text-align:justify;background:#FFFFFF;\">\r\n	<span style=\"text-indent:31.5pt;\">As a professional tiles supplier, we carry a wealth range of different sizes. Besides normal sizes of 600*600mm, 600*900mm, 800*800mm, 900*900mm, 600*1200mm,1000*1000mm(These&nbsp;6 sizes are mainly for Glazed Polished Tiles and Micro Crystal Tiles); 1200mm*1800mm (These&nbsp;size is mainly for Polished Tiles)&nbsp;and 600mm*1200mm, 900mm*1800mm, 1200mm*1800mm, 1200mm*2400mm(These sizes are mainly for big size slim tiles with 5.5 thickness). With its cutting-edge technology and professional service, TITU makes effort to meet all the needs of our customers, earning trust of our customers from all over the world. Besides superior quality, TITU offers the most competitive products in the industry. The most advanced techniques&nbsp;of 3D inkjet and 4D super smooth glaze inkjet are widely used in its fully-polished glazed porcelain tiles, rustic tiles, wooden-like tiles and Ceramics, making textures on tiles have a high imitation of the natural materials with hundreds of different designs. The unsurpassed realism of the real materials displays delicate grains with rich colors and touchable impression of softness and smoothness. &nbsp;Its newly released product – 6D crystal series leads the product to be a higher branding in the near future. TITU fully-polished glazed porcelain tile&nbsp;always win high acclaim from customers all over the world. Besides good service, TITU owned a professional marketing, quality-control, after-sale customer service to offer prompt and thoughtful response for every customer at anytime. Our hotline Tel: +86-757-63229722&nbsp;and </span><a href=\"mailto:sales@fotiles.com\" style=\"text-indent:31.5pt;\"><u><span>sales@fotiles.com</span></u></a><span style=\"text-indent:31.5pt;\">&nbsp;are available 24&nbsp;hours.</span> \r\n</p>\r\n<p align=\"justify\" style=\"text-align:justify;background:#FFFFFF;\">\r\n	<span style=\"text-indent:14pt;\">Maintaining its stable rise in marketing development, TITU Ceramics is also dedicated to the construction of the specialization of its brand. TITU takes active part in attending both domestic and oversea professional exhibitions. TITU has participated consecutively in Canton Fair held twice a year since 2010, set up a showroom in Uzbekistan in 2008, attended annual Spain International Ceramics Exhibition CEVISAMA from 2009 to 2010, attended BIG 5 fairs in Dubai for three consecutive years from 2010 to 2012, and coverings show in Atlanta, the US in 2011 ,2013 and 2017. Leading the world trend, TITU has realized a face-to-face communication with customers and forged the latest trade interactive platform for better mutual co-operation, pushing TITU to be the famous business card in the world.</span> \r\n</p>\r\n<p>\r\n	<span style=\"background-color:;\">Titu showroom covers an area of more than 2000 square meters, and also, set up branch offices in the United States, Vietnam and South Korea. We have more than 4,000 customers from about 100 countries in the world. At the same time we also have developed a large number of builders and large engineering business customers. We ever went to Mexico, starting business co-operation with local largest ceramics company to provide high-quality OEM service.</span> \r\n</p>\r\n<p>\r\n	<span style=\"background-color:;\">Following are some of our successful experience in exporting to oversea markets. Turnover of a single large upscale hotel project in Dubai in 2010 reached more than US$1 million; Sales amount of export to Mexico was about US$1.2 million in 2011 and 2012; also we have undertaken some big projects in Saudi Arabia, like real estate and hotel industry, with an order quantity from 50 thousand to 100 thousand square meters. Titu has been under a rapid growth situation since its establishment, even during awful situations, like the economic crisis, market decadent and peer common recession, our sales amount also increased by 30% than last year. Our annual export capacity was 2.5 million square meters/year in 2011-2012.&nbsp;</span> \r\n</p>\r\n<p>\r\n	<span style=\"background-color:;\">From zero to thriving, TITU Ceramics always sticks to constant innovation, keeps good quality, pursues distinguished marketing model in the ceramics industry step by step. In the future, TITU will continue inheriting Chinese ceramic culture and spreading Chinese ceramics to every corner in the world.</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:28.0000pt;\">\r\n	<strong><span style=\"background-color:;\">TITU Ceramics &nbsp;- &nbsp;Your best choice!</span></strong> \r\n</p>\r\n<p style=\"text-indent:28.0000pt;\">\r\n	<span style=\"background-color:;\">&nbsp;</span><img src=\"/upload/Image/20170601/20170601064900_25235.jpg\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>','2017-06-01 14:58:27','','','15');
INSERT INTO doc_article VALUES('25','29','0','FAQ','','','<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: Do I have to be professional to buy TiTu ceramics?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: The products on our website are offered to anyone who meets our minimum order requirements. That means that if you are a homeowner, wholesaler , retailer or a large construction company, products are available to you when you buy in pallet and container quantities.&nbsp;</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: I want to buy TiTu ceramics. What are my options?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: TiTu ceramics is a professional manufactory &amp; exporter with rich experience and toll-free customer service to provide incredibly low prices on top quality building materials. We arrange production and process orders in one month after order confirmed</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: Which forms of payment do you accept?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: We accept T/T , L/C at sight , other kinds of terms will be considered if possible .</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: Does TiTu ceramics ship worldwide?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: Yes, we ship containers to destination ports all over the world by the FOB , CNF ,CIF etc . For more details,</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">contact with our sales rep online or by email .</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: Does TiTu ceramics ship to warehouse , like door – door ? How does that work?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: Yes. A door to door delivery is considered completely once this service of shipping agent is placed on the driveway. You will be required to present full information about you, like company name , business license ,contact details , location , etc .shipping and delivery will be requested to be paid in advance , and then you can get the goods as you expected .</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: When ordering containers, can I mix-and-match colors styles of material?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: For certain product lines, yes. For more details, please contact a our sales rep online or by email</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: I need a smaller amount of product than the minimum order. What I can do ?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: For certain product lines, yes. For more details, please contact a our sales rep online or by email</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: Does TiTu ceramics install products or refer customers to installers?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: TiTu ceramics is not an installer, nor does TiTu ceramics refer or advocate any specific installation firms or individual installers. Consult your local Yellow pages for professionals in your area.</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: Do you offer any discounts to trading people?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: The prices are quite reasonable and competitive for our customers .Of course, we will consider some discounts for specific projects or big order.</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"box-sizing:content-box;font-weight:700;color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">Q: May I see the products on the pallet before loading ?</span><br style=\"box-sizing:content-box;color:#333333;font-family:Roboto;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<span style=\"color:#333333;font-family:&quot;font-size:16px;white-space:normal;\">A: Yes , You can check your ordered products before its loading , what we offered are always top class products.</span>','2017-06-01 15:25:52','','','15');
INSERT INTO doc_article VALUES('27','30','0','Projects','','','<p>\r\n	<img src=\"/upload/Image/20170601/20170601070241_94894.jpg\" width=\"816\" height=\"604\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/upload/Image/20170601/20170601070256_42357.jpg\" width=\"816\" height=\"836\" alt=\"\" /> \r\n</p>','2017-06-01 15:03:46','','','7');

DROP TABLE IF EXISTS doc_calllist;
CREATE TABLE `doc_calllist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `callId` varchar(200) NOT NULL DEFAULT '' COMMENT '调用相关的频道栏目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_comment;
CREATE TABLE `doc_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recordId` int(11) NOT NULL DEFAULT '0' COMMENT '被评论记录ID',
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论标题',
  `content` text COMMENT '评论内容',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮件',
  `homepage` varchar(60) NOT NULL DEFAULT '' COMMENT '主页',
  `ip` varchar(50) NOT NULL DEFAULT '',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auditing` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `memberId` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `memberTableName` varchar(255) NOT NULL DEFAULT '',
  `answerId` int(11) NOT NULL DEFAULT '0' COMMENT '评论者ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_download;
CREATE TABLE `doc_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `title` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `fileSize` varchar(200) NOT NULL DEFAULT '',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` text,
  `filePath` varchar(200) NOT NULL DEFAULT '' COMMENT '上传文件路径',
  `counts` int(11) NOT NULL DEFAULT '0' COMMENT '点击数',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_flash;
CREATE TABLE `doc_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '摘要',
  `picpath` varchar(200) NOT NULL DEFAULT '' COMMENT '图片路径',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '广告分组id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO doc_flash VALUES('1','1','','','/upload/201705/20170513122303684.jpg','1','0','2017-05-13 12:23:03');
INSERT INTO doc_flash VALUES('13','1','','','/upload/201706/20170620124318303.jpg','2','1','2017-06-20 12:43:18');
INSERT INTO doc_flash VALUES('14','2','','','/upload/201706/20170620124310738.jpg','2','2','2017-06-20 12:43:10');
INSERT INTO doc_flash VALUES('15','3','','','/upload/201706/20170620124301456.jpg','2','3','2017-06-20 12:43:01');
INSERT INTO doc_flash VALUES('16','4','','','/upload/201706/20170620124253391.jpg','2','4','2017-06-20 12:42:53');
INSERT INTO doc_flash VALUES('7','1','','','/upload/201705/20170514171555648.jpg','3','0','2017-05-14 17:16:24');
INSERT INTO doc_flash VALUES('8','2','','','/upload/201705/20170514171555648.jpg','3','0','2017-05-14 17:16:18');
INSERT INTO doc_flash VALUES('9','3','','','/upload/201705/20170514171555648.jpg','3','0','2017-05-14 17:15:55');
INSERT INTO doc_flash VALUES('10','1','','','/upload/201705/20170513234132410.jpg','4','0','2017-05-13 23:41:32');
INSERT INTO doc_flash VALUES('11','2','','','/upload/201705/20170513234132410.jpg','4','0','2017-05-13 23:42:16');

DROP TABLE IF EXISTS doc_flash_group;
CREATE TABLE `doc_flash_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '分组标题',
  `summary` text COMMENT '摘要',
  `type` varchar(50) NOT NULL DEFAULT 'focus' COMMENT '广告模式',
  `boxId` varchar(255) NOT NULL DEFAULT '' COMMENT '盒子ID',
  `pattern` varchar(255) NOT NULL DEFAULT '' COMMENT '主题风格',
  `times` int(11) NOT NULL DEFAULT '0' COMMENT '切换时间间隔',
  `adTrigger` varchar(50) NOT NULL DEFAULT 'click' COMMENT '切换模式',
  `auto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '自动切换',
  `width` int(11) NOT NULL DEFAULT '0' COMMENT '图片宽度',
  `height` int(11) NOT NULL DEFAULT '0' COMMENT '图片高度',
  `txtHeight` varchar(50) NOT NULL DEFAULT 'default' COMMENT '文字高度',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO doc_flash_group VALUES('1','首页banner','','focus','myFocus','mF_fscreen_tb','3','click','0','450','296','default','2017-06-01 11:59:31');
INSERT INTO doc_flash_group VALUES('2','首页产品展示','','focus','myFocus','mF_fscreen_tb','2','click','0','450','296','default','2017-06-20 12:42:11');
INSERT INTO doc_flash_group VALUES('3','首页展览馆','','focus','myFocus','mF_fscreen_tb','2','click','0','450','296','default','2017-05-13 18:00:41');
INSERT INTO doc_flash_group VALUES('4','二维码TITU','','focus','myFocus','mF_fscreen_tb','2','click','0','450','296','default','2017-05-13 23:40:06');

DROP TABLE IF EXISTS doc_guestbook;
CREATE TABLE `doc_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '留言人',
  `contact` varchar(16) NOT NULL DEFAULT '' COMMENT '联系方式',
  `custom` text COMMENT '自定义字段',
  `content` text COMMENT '留言内容',
  `content1` text COMMENT '管理员回复',
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道Id',
  `ip` varchar(40) NOT NULL DEFAULT '' COMMENT '留言人IP',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '留言日期',
  `auditing` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核0未审核1审核',
  `isPublic` int(11) NOT NULL DEFAULT '0' COMMENT '是否公开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_jobs;
CREATE TABLE `doc_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `title` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `jobKind` varchar(100) NOT NULL DEFAULT '' COMMENT '工作性质如全职',
  `requireNum` int(11) NOT NULL DEFAULT '0' COMMENT '招聘人数',
  `experience` varchar(50) NOT NULL DEFAULT '' COMMENT '工作经验',
  `address` varchar(200) NOT NULL DEFAULT '',
  `lastTime` varchar(50) NOT NULL DEFAULT '' COMMENT '招聘截止日',
  `salary` varchar(50) NOT NULL DEFAULT '',
  `educational` varchar(50) NOT NULL DEFAULT '' COMMENT '教育水平',
  `isHouse` varchar(50) NOT NULL DEFAULT '',
  `content` text,
  `telphone` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_jobs_resume;
CREATE TABLE `doc_jobs_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` varchar(4) NOT NULL DEFAULT '' COMMENT '性别',
  `birthday` varchar(50) NOT NULL DEFAULT '' COMMENT '出生日期',
  `nation` varchar(50) NOT NULL DEFAULT '' COMMENT '民族',
  `isMarried` varchar(50) NOT NULL DEFAULT '' COMMENT '婚姻状况',
  `nowJob` varchar(100) NOT NULL DEFAULT '' COMMENT '目前工作',
  `nowAddress` varchar(200) NOT NULL DEFAULT '' COMMENT '现住地址',
  `residence` varchar(200) NOT NULL DEFAULT '' COMMENT '户口所在地',
  `educational` varchar(100) NOT NULL DEFAULT '' COMMENT '教育水平',
  `height` varchar(50) NOT NULL DEFAULT '' COMMENT '身高',
  `finishSchool` varchar(100) NOT NULL DEFAULT '' COMMENT '毕业院校',
  `finishTime` varchar(50) NOT NULL DEFAULT '' COMMENT '毕业时间',
  `speciality` varchar(100) NOT NULL DEFAULT '' COMMENT '所学专业',
  `experience` varchar(100) NOT NULL DEFAULT '' COMMENT '工作经验',
  `selfAppreciation` text COMMENT '自我评价',
  `languageSkill` varchar(50) NOT NULL DEFAULT '' COMMENT '所会外语',
  `email` varchar(200) NOT NULL DEFAULT '' COMMENT '电子邮件',
  `telphone` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `mobile` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '通信地址',
  `resume` text COMMENT '个人简历',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_linkers;
CREATE TABLE `doc_linkers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `links` int(11) NOT NULL DEFAULT '0' COMMENT '链接类型0图片1文字',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '链接标题',
  `linkAddress` varchar(150) NOT NULL DEFAULT '' COMMENT '链接地址',
  `originalPic` varchar(255) NOT NULL DEFAULT '' COMMENT '原图',
  `smallPic` varchar(255) NOT NULL DEFAULT '' COMMENT '小图',
  `description` text COMMENT '链接摘要',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_list;
CREATE TABLE `doc_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '新闻标题',
  `style` varchar(50) NOT NULL DEFAULT '' COMMENT '标题样式',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者',
  `source` varchar(60) NOT NULL DEFAULT '' COMMENT '来源名称',
  `counts` int(11) NOT NULL DEFAULT '0' COMMENT '点击数',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `editTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `recommend` int(11) NOT NULL DEFAULT '0' COMMENT '文章推荐',
  `content` text COMMENT '文章标识',
  `sourceUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '来源地址',
  `originalPic` varchar(100) NOT NULL DEFAULT '' COMMENT '原图',
  `indexPic` varchar(100) NOT NULL DEFAULT '' COMMENT '首页缩略图',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `hassplitpages` int(11) NOT NULL DEFAULT '0' COMMENT '分页标记 0无 1有',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO doc_list VALUES('1','32','New Arrival','@@@','','New Arrival of Slim Tile','','','3','2017-05-04 00:00:00','0000-00-00 00:00:00','0','<p>\r\n	New Arrival ---&nbsp;Palissandro Blue 900*1800*5.5mm Slim Tile\r\n</p>\r\n<p>\r\n	<img src=\"/upload/Image/20170601/20170601075942_42832.jpg\" width=\"360\" height=\"697\" alt=\"\" /> \r\n</p>','','','','0','0');
INSERT INTO doc_list VALUES('2','32','E-catalog can be loaded in Apple Store now !!!','@@@','','Our E-catalog can be loaded in Apple Store now !!!!!  Welcome to scan~','','','20','2017-06-01 00:00:00','0000-00-00 00:00:00','0','<h1>\r\n	<strong><span style=\"font-family:Arial;\">Congratulations！！！</span></strong> \r\n</h1>\r\n<p>\r\n	<img src=\"/upload/Image/20170601/20170601073520_38902.jpg\" width=\"360\" height=\"640\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<img src=\"/upload/Image/20170601/20170601073639_85036.png\" width=\"360\" height=\"360\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	Our E-catalog can be loaded in Apple Store now !!!!! &nbsp;Welcome to scan~\r\n</p>','','','','0','0');

DROP TABLE IF EXISTS doc_mapshow;
CREATE TABLE `doc_mapshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `channelId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `mapKey` varchar(100) NOT NULL DEFAULT '' COMMENT 'API KEY',
  `lat` varchar(50) NOT NULL DEFAULT '' COMMENT '坐标纬度',
  `lng` varchar(50) NOT NULL DEFAULT '' COMMENT '坐标经度',
  `width` int(10) NOT NULL DEFAULT '0' COMMENT '地图宽度',
  `height` int(10) NOT NULL DEFAULT '0' COMMENT '地图高度',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_menu;
CREATE TABLE `doc_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(24) NOT NULL DEFAULT '' COMMENT '频道栏目英文名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '频道栏目中文名称',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) DEFAULT '' COMMENT '摘要',
  `type` varchar(14) NOT NULL DEFAULT '' COMMENT '模块类型',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `deep` int(11) NOT NULL DEFAULT '0' COMMENT '深度',
  `parentId` int(11) NOT NULL DEFAULT '0' COMMENT '父级栏目ID',
  `isComment` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否允许评论',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '栏目浏览级别限制',
  `isHidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '栏目是否隐藏',
  `isTarget` tinyint(1) NOT NULL DEFAULT '0' COMMENT '栏目是否新窗口打开',
  `originalPic` varchar(255) NOT NULL DEFAULT '' COMMENT '栏目图标',
  `smallPic` varchar(255) NOT NULL DEFAULT '' COMMENT '小图',
  `width` int(11) NOT NULL DEFAULT '130' COMMENT '图标宽度',
  `hight` int(11) NOT NULL DEFAULT '130' COMMENT '图标高度',
  `isExternalLinks` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否外联',
  `redirectUrl` varchar(255) DEFAULT NULL COMMENT '跳转链接',
  `related_common` varchar(255) NOT NULL DEFAULT 'common.php' COMMENT '栏目页面风格',
  `dtLanguage` varchar(10) NOT NULL DEFAULT 'cn' COMMENT '语言',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

INSERT INTO doc_menu VALUES('16','RECOMMEND','RECOMMEND','','','product','0','2','14','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('2','yemianxinxishezhi','页面信息设置','','','article','0','0','0','0','0','1','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('3','shouyeguanyuwomenjianjie','首页关于我们简介','','','article','0','1','2','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('15','HOT-SELLING','HOT SELLING','','','product','0','2','14','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('14','shouyetuijianchanpinshez','首页推荐产品设置','','','product','0','1','2','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('17','CLASSICAL','CLASSICAL','','','product','0','2','14','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('35','mat-finish','mat finish','','','product','0','2','25','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('20','Product','Product','','','product','1','0','0','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('22','dibufalvshengming','底部法律声明','','','article','0','1','2','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('23','About','About','','','article','0','0','0','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('24','Type','Type','','','product','0','1','20','0','0','0','0','/upload/201705/20170514124313330.png','/upload/201705/s_20170514124313330.png','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('25','Surface','Surface','','','product','0','1','20','0','0','0','0','/upload/201705/20170514124338390.png','/upload/201705/s_20170514124338390.png','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('26','Size','Size','','','product','0','1','20','0','0','0','0','/upload/201705/20170514124415152.png','/upload/201705/s_20170514124415152.png','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('27','Application','Application','','','product','0','1','20','0','0','0','0','/upload/201705/20170514124446890.png','/upload/201705/s_20170514124446890.png','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('29','faq','FAQ','','','article','0','1','23','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('30','projects','Projects','','','article','0','1','23','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('31','Slim-Tile','Slim Tile','','','product','0','2','24','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('32','News','News','','','list','2','0','0','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('33','Contact-Us','Contact Us','','','article','4','0','0','0','0','0','0','','','130','130','0','','common_list1.php','en');
INSERT INTO doc_menu VALUES('34','Join-Us','Join Us','','','article','3','0','0','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('36','Rustic-Tile','Rustic Tile','','','product','0','2','24','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('37','Full-Glazed-Porcelain-Ti','Full Glazed Porcelain Tile','','','product','0','2','24','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('38','Wall-Tiles','Wall Tiles','','','product','0','2','24','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('39','polished-finish','polished finish','','','product','0','2','25','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('40','9001800mm','900*1800mm','','','product','0','2','26','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('41','600600mm','600*600mm','','','product','3','2','26','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('42','300600mm','300*600mm','','','product','4','2','26','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('43','6001200mm','600*1200mm','','','product','1','2','26','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('44','450900mm','450*900mm','','','product','2','2','26','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('45','Exterior-wall-design','Exterior wall design','','','product','0','2','27','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('46','Interior','Interior','','','product','0','2','27','0','0','0','0','','','130','130','0','','common.php','en');
INSERT INTO doc_menu VALUES('47','Bathroom','Bathroom','','','product','0','2','27','0','0','0','0','','','130','130','0','','common.php','en');

DROP TABLE IF EXISTS doc_models_reg;
CREATE TABLE `doc_models_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '模块类型',
  `model_name` varchar(200) NOT NULL DEFAULT '' COMMENT '模块名称',
  `config` text COMMENT '配置信息',
  `install` text COMMENT '安装信息',
  `unstall` text COMMENT '卸载信息',
  `summary` text COMMENT '模块摘要',
  `version` varchar(10) NOT NULL DEFAULT '' COMMENT '模块版本号',
  `readonly` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否系统模块',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO doc_models_reg VALUES('1','article','图文模块','','','','图文模块，用于展示网站图文数据。','70506','1');
INSERT INTO doc_models_reg VALUES('2','list','新闻资讯','','','','新闻资讯模块，用户展示网站的新闻资讯列表。','70506','1');
INSERT INTO doc_models_reg VALUES('3','product','产品展示','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>产品模块</model_name>\r\n	<type>product</type>\r\n	<summary>产品模块，用于展示企业产品信息。</summary>\r\n	<version>70510</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/product/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/product/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_createcategory.php</param>\r\n		<param name=\"destination\">admini/views/product/createcategory.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_editcategory.php</param>\r\n		<param name=\"destination\">admini/views/product/editcategory.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/product/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_product.php</param>\r\n		<param name=\"destination\">admini/controllers/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_product.php</param>\r\n		<param name=\"destination\">admini/models/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_product_category.php</param>\r\n		<param name=\"destination\">admini/models/product_category.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/product/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/product/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_view.php</param>\r\n		<param name=\"destination\">content/product/parts_view.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_product.php</param>\r\n		<param name=\"destination\">content/index/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_product_0.php</param>\r\n		<param name=\"destination\">content/index/index_product_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">CREATE TABLE `{TB_PREFIX}product` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `name` varchar(200) NOT NULL,\r\n	  `sn` varchar(100) NOT NULL,\r\n	  `spec` varchar(100) NOT NULL,\r\n	  `dtTime` datetime NOT NULL,\r\n	  `sellingPrice` decimal(10,0) NOT NULL,\r\n	  `preferPrice` decimal(10,0) NOT NULL,\r\n	  `summary` varchar(200) NOT NULL,\r\n	  `content` text NOT NULL,\r\n	  `originalPic` varchar(255) NOT NULL,\r\n	  `middlePic` varchar(255) NOT NULL,\r\n	  `smallPic` varchar(255) NOT NULL,\r\n	  `categoryId` int(11) NOT NULL,\r\n	  `counts` int(11) NOT NULL,\r\n	  `ordering` int(11) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">\r\n		CREATE TABLE `{TB_PREFIX}product_category` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `menuName` varchar(24) NOT NULL default \'\',\r\n	  `title` varchar(50) NOT NULL default \'\',\r\n	  `summary` varchar(200) NOT NULL default \'\',\r\n	  `keys` varchar(50) NOT NULL default \'\',\r\n	  `type` varchar(14) NOT NULL default \'\',\r\n	  `ordering` int(11) NOT NULL default \'0\',\r\n	  `link` varchar(255) NOT NULL,\r\n	  `deep` int(11) NOT NULL default \'0\',\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `params` text,\r\n	  `published` tinyint(1) NOT NULL default \'0\',\r\n	  `isClaw` tinyint(1) NOT NULL,\r\n	  `template` varchar(40) NOT NULL,\r\n	  `isfun` tinyint(4) NOT NULL,\r\n	  `isComment` tinyint(4) NOT NULL,\r\n	  `cguid` varchar(16) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n	</param>\r\n	</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/product/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/product_category.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/product.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/product/</param>\r\n	</cmd>\r\n		<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/product.php</param>\r\n	</cmd>\r\n		<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_product_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}product` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}product_category` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'product\'</param>\r\n	</cmd>\r\n</deepthroat>','产品模块，用于展示企业产品信息。','70510','0');
INSERT INTO doc_models_reg VALUES('4','picture','图片相册','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>图片模块</model_name>\r\n	<type>picture</type>\r\n	<summary>这是一个图片模块，可以展示企业形象、发布图片新闻等。</summary>\r\n	<version>70510</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/picture/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/picture/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/picture/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_picture.php</param>\r\n		<param name=\"destination\">admini/controllers/picture.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_picture.php</param>\r\n		<param name=\"destination\">admini/models/picture.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/picture/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/picture/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_view.php</param>\r\n		<param name=\"destination\">content/picture/parts_view.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_picture_0.php</param>\r\n		<param name=\"destination\">content/index/index_picture_0.php</param>\r\n	</cmd>\r\n<cmd type=\"sql\">\r\n		<param name=\"sql\">CREATE TABLE `{TB_PREFIX}picture` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `title` varchar(60) NOT NULL default \'\',\r\n	  `picture` varchar(255) NOT NULL,\r\n	  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n	  `spicture` varchar(255) NOT NULL,\r\n	  `tags` varchar(60) NOT NULL default \'\',\r\n	  `description` text NOT NULL,\r\n	  `isTopic` int(11) NOT NULL,\r\n	  `isImportant` int(11) NOT NULL,\r\n	  `counts` int(11) NOT NULL,\r\n	  `lpicture` varchar(255) NOT NULL,\r\n	  `uid` int(11) NOT NULL,\r\n	  `cguid` varchar(16) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n		</param>\r\n	</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/picture/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/picture.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/picture.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/picture/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_picture_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}picture` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'picture\'</param>\r\n	</cmd>\r\n</deepthroat>','这是一个图片模块，可以展示企业形象、发布图片新闻等。','70510','0');
INSERT INTO doc_models_reg VALUES('5','guestbook','在线留言','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>留言模块</model_name>\r\n	<type>guestbook</type>\r\n	<summary>这是一个留言模块，主要通过收集、整理、回复客户留言，提高网站互动性，为网站带来活力和商机。</summary>\r\n	<version>70510</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/guestbook/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/guestbook/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_guestbook.php</param>\r\n		<param name=\"destination\">admini/controllers/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_guestbook.php</param>\r\n		<param name=\"destination\">admini/models/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/guestbook/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/guestbook/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n	<param name=\"source\">index_guestbook.php</param>\r\n	<param name=\"destination\">content/index/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">CREATE TABLE `{TB_PREFIX}guestbook` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `name` varchar(30) NOT NULL default \'\',\r\n	  `email` varchar(60) NOT NULL default \'\',\r\n	  `homepage` varchar(60) NOT NULL default \'\',\r\n	  `qq` varchar(15) NOT NULL default \'\',\r\n	  `ip` varchar(40) NOT NULL default \'\',\r\n	  `isPublic` int(11) NOT NULL default \'0\',\r\n	  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n	  `content` text NOT NULL,\r\n	  `content1` text NOT NULL,\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `telephone` varchar(16) NOT NULL default \'\',\r\n	  `company` varchar(60) NOT NULL,\r\n	  `auditing` tinyint(4) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n	</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/guestbook/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/guestbook</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/guestbook.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}guestbook` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'guestbook\'</param>\r\n	</cmd>\r\n</deepthroat>','这是一个留言模块，主要通过收集、整理、回复客户留言，提高网站互动性，为网站带来活力和商机。','70510','0');
INSERT INTO doc_models_reg VALUES('6','jobs','人才招聘','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>招聘模块</model_name>\r\n	<type>jobs</type>\r\n	<summary>招聘模块，用于企业发布招聘信息、筛选人才。</summary>\r\n	<version>70510</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/jobs/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/jobs/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/jobs/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_viewresume.php</param>\r\n		<param name=\"destination\">admini/views/jobs/viewresume.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_viewresumes.php</param>\r\n		<param name=\"destination\">admini/views/jobs/viewresumes.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_jobs.php</param>\r\n		<param name=\"destination\">admini/controllers/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_jobs.php</param>\r\n		<param name=\"destination\">admini/models/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/jobs/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/jobs/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_send.php</param>\r\n		<param name=\"destination\">content/jobs/parts_send.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_jobs.php</param>\r\n		<param name=\"destination\">content/index/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_jobs_0.php</param>\r\n		<param name=\"destination\">content/index/index_jobs_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\"> CREATE TABLE `{TB_PREFIX}jobs` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `channelId` int(11) NOT NULL,\r\n	  `jobName` varchar(200) NOT NULL,\r\n	  `jobKind` varchar(100) NOT NULL,\r\n	  `requireNum` int(11) NOT NULL,\r\n	  `experience` varchar(50) NOT NULL,\r\n	  `address` varchar(200) NOT NULL,\r\n	  `age` varchar(100) NOT NULL,\r\n	  `height` varchar(50) NOT NULL,\r\n	  `languageSkill` varchar(100) NOT NULL,\r\n	  `lastTime` varchar(50) NOT NULL,\r\n	  `salary` varchar(50) NOT NULL,\r\n	  `educational` varchar(50) NOT NULL,\r\n	  `isHouse` varchar(50) NOT NULL,\r\n	  `sex` varchar(4) NOT NULL,\r\n	  `computerLevel` varchar(100) NOT NULL,\r\n	  `summary` text NOT NULL,\r\n	  `telphone` varchar(50) NOT NULL,\r\n	  `email` varchar(100) NOT NULL,\r\n	  `dtTime` datetime NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n		</param>\r\n	</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/jobs/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/jobs/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/jobs.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_jobs_0.php</param>\r\n	</cmd>	\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}jobs` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'jobs\'</param>\r\n	</cmd>\r\n</deepthroat>','招聘模块，用于企业发布招聘信息、筛选人才。','70510','0');
INSERT INTO doc_models_reg VALUES('7','video','视频展示','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>视频模块</model_name>\r\n	<type>video</type>\r\n	<summary>这是一个视频模块，可以展示例如企业形象影片之类的视频。</summary>\r\n	<version>70507</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_create.php</param>\r\n<param name=\"destination\">admini/views/video/create.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/video/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_edit.php</param>\r\n<param name=\"destination\">admini/views/video/edit.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_video.php</param>\r\n<param name=\"destination\">admini/controllers/video.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_video.php</param>\r\n<param name=\"destination\">admini/models/video.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/video/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/video/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_view.php</param>\r\n<param name=\"destination\">content/video/parts_view.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">index_video.php</param>\r\n<param name=\"destination\">content/index/video.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}video` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `channelId` int(11) NOT NULL default \'0\',\r\n  `filePath` varchar(200) NOT NULL,\r\n  `fileSize` varchar(50) default NULL,\r\n  `title` varchar(150) NOT NULL,\r\n  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `tags` varchar(200) NOT NULL,\r\n  `description` text NOT NULL,\r\n  `picture` varchar(200) NOT NULL,\r\n  `counts` int(11) NOT NULL default \'0\',\r\n  `cguid` varchar(16) NOT NULL,\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;</param>\r\n</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/video/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/video.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/video.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/video/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/index/video.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}video` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'video\'</param>\r\n</cmd>\r\n</deepthroat>','这是一个视频模块，可以展示例如企业形象影片之类的视频。','70507','0');
INSERT INTO doc_models_reg VALUES('8','download','文件下载','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>下载模块</model_name>\r\n	<type>download</type>\r\n	<summary>这是一个下载模块，可以用户提供软件、文档资料的下载。</summary>\r\n	<version>70511</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/download/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/download/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/download/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_download.php</param>\r\n		<param name=\"destination\">admini/controllers/download.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_download.php</param>\r\n		<param name=\"destination\">admini/models/download.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/download/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/download/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_view.php</param>\r\n		<param name=\"destination\">content/download/parts_view.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_download_0.php</param>\r\n		<param name=\"destination\">content/index/index_download_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n	<param name=\"sql\">CREATE TABLE `{TB_PREFIX}download` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `softwareName` varchar(200) NOT NULL default \'NOT NULL\',\r\n	  `softwareSize` varchar(200) default NULL,\r\n	  `language` varchar(40) default NULL,\r\n	  `classification` varchar(200) default NULL,\r\n	  `platform` varchar(200) default NULL,\r\n	  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n	  `introduce` text,\r\n	  `filePath` varchar(200) NOT NULL default \'NOT NULL\',\r\n	  `counts` int(11) NOT NULL default \'0\',\r\n	  `cguid` varchar(16) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n	</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/download/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/download.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/download.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/download/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_download_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}download` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'download\'</param>\r\n	</cmd>\r\n</deepthroat>','这是一个下载模块，可以用户提供软件、文档资料的下载。','70511','0');
INSERT INTO doc_models_reg VALUES('9','calllist','列表调用','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>列表调用模块</model_name>\r\n	<type>calllist</type>\r\n	<summary>这是一个列表调用模块，用来调用新闻频道或栏目。</summary>\r\n	<version>70905</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/calllist/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_calllist.php</param>\r\n<param name=\"destination\">admini/controllers/calllist.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_calllist.php</param>\r\n<param name=\"destination\">admini/models/calllist.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/calllist/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/calllist/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}calllist` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `channelId` int(11) NOT NULL,\r\n  `callId` varchar(400) character set utf8 NOT NULL,\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n</cmd>\r\n</deepthroat>\r\n\r\n\r\n','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/calllist/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/calllist.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/calllist.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/calllist/</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}calllist` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'calllist\'</param>\r\n</cmd>\r\n</deepthroat>','这是一个列表调用模块，用来调用新闻频道或栏目。','70905','0');
INSERT INTO doc_models_reg VALUES('10','poll','投票系统','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>投票系统</model_name>\r\n	<type>poll</type>\r\n	<summary>这是一个投票系统，用来与用户进行互动，了解用户心理。</summary>\r\n	<version>81124</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/poll/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create_title.php</param>\r\n		<param name=\"destination\">admini/views/poll/create_title.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit_title.php</param>\r\n		<param name=\"destination\">admini/views/poll/edit_title.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create_choice.php</param>\r\n		<param name=\"destination\">admini/views/poll/create_choice.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit_choice.php</param>\r\n		<param name=\"destination\">admini/views/poll/edit_choice.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_poll.php</param>\r\n		<param name=\"destination\">admini/controllers/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_poll.php</param>\r\n		<param name=\"destination\">admini/models/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_poll_category.php</param>\r\n		<param name=\"destination\">admini/models/poll_category.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/poll/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/poll/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_view.php</param>\r\n		<param name=\"destination\">content/poll/parts_view.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_poll.php</param>\r\n		<param name=\"destination\">content/index/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_poll_0.php</param>\r\n		<param name=\"destination\">content/index/index_poll_0.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">CREATE TABLE `{TB_PREFIX}poll` (\r\n		`id` int(11) NOT NULL auto_increment,\r\n		`channelId` int(11) NOT NULL default \'0\',\r\n		`choice` varchar(255) NOT NULL,\r\n		`categoryId` int(11) NOT NULL default \'0\',\r\n		`isdefault` set(\'a\',\'b\') NOT NULL default \'a\',\r\n		`ordering` int(11) NOT NULL default \'0\',\r\n		`num` int(11) NOT NULL default \'1\',\r\n		PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">\r\n		CREATE TABLE `{TB_PREFIX}poll_category` (\r\n		`id` int(11) NOT NULL auto_increment,\r\n		`title` varchar(200) NOT NULL default \'\',\r\n		`choice` set(\'a\',\'b\') default \'a\',\r\n		`client_ip` longtext,\r\n		`channelId` int(11) NOT NULL default \'0\',\r\n		`dtTime` date NOT NULL default \'0000-00-00\',\r\n		`ordering` int(11) NOT NULL default \'0\',\r\n		PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n	</param>\r\n	</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/poll/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/poll_category.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/poll/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/poll.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/index_poll_0.php</param>\r\n	</cmd>	\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}poll` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'poll\'</param>\r\n	</cmd>\r\n</deepthroat>','这是一个投票系统，用来与用户进行互动，了解用户心理。','81124','0');
INSERT INTO doc_models_reg VALUES('11','mapshow','地图展示','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>列表调用模块</model_name>\r\n	<type>mapshow</type>\r\n	<summary>这是一个百度地图模块，可以添加商家的地图位置。</summary>\r\n	<version>70905</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/mapshow/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_mapshow.php</param>\r\n<param name=\"destination\">admini/controllers/mapshow.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_mapshow.php</param>\r\n<param name=\"destination\">admini/models/mapshow.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/mapshow/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/mapshow/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}mapshow` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `channelId` int(11) NOT NULL,\r\n  `callId` varchar(400) character set utf8 NOT NULL,\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n</cmd>\r\n</deepthroat>\r\n\r\n\r\n','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/mapshow/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/mapshow.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/mapshow.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/mapshow/</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}mapshow` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'mapshow\'</param>\r\n</cmd>\r\n</deepthroat>','这是一个百度地图模块，可以添加商家的地图位置，Model By grysoft。','110905','0');
INSERT INTO doc_models_reg VALUES('12','webmap','网站地图','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>网站地图</model_name>\r\n	<type>webmap</type>\r\n	<summary>这是一个网站地图模块，用来展示网站频道或栏目。</summary>\r\n	<version>80905</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/webmap/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_webmap.php</param>\r\n<param name=\"destination\">admini/controllers/webmap.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_webmap.php</param>\r\n<param name=\"destination\">admini/models/webmap.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/webmap/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/webmap/parts_index.php</param>\r\n</cmd>\r\n</deepthroat>\r\n\r\n\r\n','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/webmap/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/webmap.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/webmap.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/webmap/</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'webmap\'</param>\r\n</cmd>\r\n</deepthroat>','这是一个网站地图模块，用来展示网站频道或栏目。','80905','0');
INSERT INTO doc_models_reg VALUES('13','linkers','友情链接','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>友情链接</model_name>\r\n	<type>linkers</type>\r\n	<summary>这是一个友情链接模块，可以添加网站的友情链接。</summary>\r\n	<version>80404</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_create.php</param>\r\n		<param name=\"destination\">admini/views/linkers/create.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_edit.php</param>\r\n		<param name=\"destination\">admini/views/linkers/edit.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_views_index.php</param>\r\n		<param name=\"destination\">admini/views/linkers/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_controllers_linkers.php</param>\r\n		<param name=\"destination\">admini/controllers/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">admini_models_linkers.php</param>\r\n		<param name=\"destination\">admini/models/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">content_index.php</param>\r\n		<param name=\"destination\">content/linkers/index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">parts_index.php</param>\r\n		<param name=\"destination\">content/linkers/parts_index.php</param>\r\n	</cmd>\r\n	<cmd type=\"copy\">\r\n		<param name=\"source\">index_linkers.php</param>\r\n		<param name=\"destination\">content/index/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n	<param name=\"sql\">CREATE TABLE `{TB_PREFIX}linkers` (\r\n	  `id` int(11) NOT NULL auto_increment,\r\n	  `channelId` int(11) NOT NULL default \'0\',\r\n	  `picture` varchar(255) NOT NULL,\r\n	  `title` varchar(100) NOT NULL default \'\',\r\n	  `linkAddress` varchar(150) NOT NULL,\r\n	  `summary` text NOT NULL,\r\n	  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n	  `indexPicture` varchar(255) NOT NULL,\r\n	  `counts` int(11) NOT NULL default \'200\',\r\n	  `smallPic` varchar(255) NOT NULL,\r\n	  PRIMARY KEY  (`id`)\r\n	) ENGINE=MyISAM DEFAULT CHARSET=utf8;</param>\r\n	</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/views/linkers/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/controllers/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">admini/models/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/linkers/</param>\r\n	</cmd>\r\n	<cmd type=\"unlink\">\r\n		<param name=\"file\">content/index/linkers.php</param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DROP TABLE `{TB_PREFIX}linkers` </param>\r\n	</cmd>\r\n	<cmd type=\"sql\">\r\n		<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'linkers\'</param>\r\n	</cmd>\r\n</deepthroat>','这是一个友情链接模块，可以添加网站的友情链接。','80404','0');
INSERT INTO doc_models_reg VALUES('14','rss','RSS订阅','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>网站地图</model_name>\r\n	<type>rss</type>\r\n	<summary>这是一个RSS订阅模块，用来展示网站RSS订阅。</summary>\r\n	<version>80905</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/rss/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_rss.php</param>\r\n<param name=\"destination\">admini/controllers/rss.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_rss.php</param>\r\n<param name=\"destination\">admini/models/rss.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/rss/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/rss/parts_index.php</param>\r\n</cmd>\r\n</deepthroat>\r\n\r\n\r\n','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/rss/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/rss.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/rss.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/rss/</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'rss\'</param>\r\n</cmd>\r\n</deepthroat>','这是一个RSS订阅模块，用来展示网站RSS订阅。','100421','0');
INSERT INTO doc_models_reg VALUES('15','user','会员中心','','','','网站注册会员管理中心。','110905','1');
INSERT INTO doc_models_reg VALUES('16','order','自定义表单','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>自定义表单模块</model_name>\r\n	<type>order</type>\r\n	<summary>这是一个自定义表单模块，用于产生一个客户自定义表单。</summary>\r\n	<version>70511</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_edit.php</param>\r\n<param name=\"destination\">admini/views/order/edit.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/order/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_order.php</param>\r\n<param name=\"destination\">admini/controllers/order.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_order.php</param>\r\n<param name=\"destination\">admini/models/order.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/order/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/order/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_create.php</param>\r\n<param name=\"destination\">content/order/parts_create.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}order` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `productName` varchar(100) default NULL,\r\n  `productSN` varchar(100) default NULL,\r\n  `deliveryTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `transports` varchar(100) default NULL,\r\n  `linkman` varchar(100) default NULL,\r\n  `unit` varchar(100) default NULL,\r\n  `address` varchar(100) default NULL,\r\n  `phone` varchar(100) default NULL,\r\n  `email` varchar(100) default NULL,\r\n  `remark` text,\r\n  `handling` int(11) NOT NULL default \'0\',\r\n  `result` text,\r\n  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `channelId` int(11) NOT NULL default \'0\',\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n</param>\r\n</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/order/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/order.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/order.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/order/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/index/index_order_0.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}order` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'order\'</param>\r\n</cmd>\r\n</deepthroat>','这是一个自定表单模块模块，用于产生一个客户自定义表单。Model By grysoft QQ：767912290','121111','0');
INSERT INTO doc_models_reg VALUES('17','tags','自定义碎片标签','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<config>\r\n	<model_name>自定义表单模块</model_name>\r\n	<type>order</type>\r\n	<summary>这是一个自定义碎片标签模块，用于产生一个客户自定义碎片标签。</summary>\r\n	<version>70511</version>\r\n</config>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_edit.php</param>\r\n<param name=\"destination\">admini/views/order/edit.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_views_index.php</param>\r\n<param name=\"destination\">admini/views/order/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_controllers_order.php</param>\r\n<param name=\"destination\">admini/controllers/order.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">admini_models_order.php</param>\r\n<param name=\"destination\">admini/models/order.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">content_index.php</param>\r\n<param name=\"destination\">content/order/index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_index.php</param>\r\n<param name=\"destination\">content/order/parts_index.php</param>\r\n</cmd>\r\n<cmd type=\"copy\">\r\n<param name=\"source\">parts_create.php</param>\r\n<param name=\"destination\">content/order/parts_create.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">CREATE TABLE `{TB_PREFIX}order` (\r\n  `id` int(11) NOT NULL auto_increment,\r\n  `productName` varchar(100) default NULL,\r\n  `productSN` varchar(100) default NULL,\r\n  `deliveryTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `transports` varchar(100) default NULL,\r\n  `linkman` varchar(100) default NULL,\r\n  `unit` varchar(100) default NULL,\r\n  `address` varchar(100) default NULL,\r\n  `phone` varchar(100) default NULL,\r\n  `email` varchar(100) default NULL,\r\n  `remark` text,\r\n  `handling` int(11) NOT NULL default \'0\',\r\n  `result` text,\r\n  `dtTime` datetime NOT NULL default \'0000-00-00 00:00:00\',\r\n  `channelId` int(11) NOT NULL default \'0\',\r\n  PRIMARY KEY  (`id`)\r\n) ENGINE=MyISAM DEFAULT CHARSET=utf8;\r\n</param>\r\n</cmd>\r\n</deepthroat>','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<deepthroat>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/views/order/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/controllers/order.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">admini/models/order.php</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/order/</param>\r\n</cmd>\r\n<cmd type=\"unlink\">\r\n<param name=\"file\">content/index/index_order_0.php</param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DROP TABLE `{TB_PREFIX}order` </param>\r\n</cmd>\r\n<cmd type=\"sql\">\r\n<param name=\"sql\">DELETE FROM `{TB_PREFIX}models_reg` WHERE `type` = \'order\'</param>\r\n</cmd>\r\n</deepthroat>','自定义碎片标签，用于产生一个客户自定义碎片标签。Model By grysoft QQ：767912290','160512','0');

DROP TABLE IF EXISTS doc_models_set;
CREATE TABLE `doc_models_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0',
  `type` varchar(60) NOT NULL,
  `field` varchar(255) NOT NULL,
  `field_tab` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO doc_models_set VALUES('3','2','product','链接@货号@展厅图','产品详情@展厅图');
INSERT INTO doc_models_set VALUES('4','20','product','链接@货号@展厅图','展厅相册');

DROP TABLE IF EXISTS doc_order;
CREATE TABLE `doc_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '表单标题',
  `custom` text COMMENT '自定义参数',
  `remark` text COMMENT '备注',
  `handling` int(11) NOT NULL DEFAULT '0' COMMENT '订单处理',
  `result` text,
  `ispay` int(11) NOT NULL DEFAULT '0' COMMENT '是否付款',
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `payprice` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '支付价格',
  `orderId` varchar(20) NOT NULL DEFAULT '' COMMENT '订单号',
  `customer` varchar(50) NOT NULL DEFAULT '' COMMENT '付款人',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_picture;
CREATE TABLE `doc_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `smallPic` text COMMENT '小图片',
  `middlePic` text COMMENT '中等图片',
  `originalPic` text COMMENT '原图',
  `indexPic` text COMMENT '上传封面',
  `counts` int(11) NOT NULL DEFAULT '0' COMMENT '点击数',
  `content` text,
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `hassplitpages` int(11) NOT NULL DEFAULT '0' COMMENT '分页标记 0无 1有',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_poll;
CREATE TABLE `doc_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `choice` varchar(255) NOT NULL DEFAULT '' COMMENT '投票选项',
  `categoryId` int(11) NOT NULL DEFAULT '0' COMMENT '投票类别',
  `isdefault` set('a','b') NOT NULL DEFAULT 'a' COMMENT '单选多选',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '投票人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_poll_category;
CREATE TABLE `doc_poll_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '投票标题',
  `choice` set('a','b') DEFAULT 'a' COMMENT '单选多选',
  `client_ip` longtext COMMENT '客户ip',
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '隶属频道栏目ID',
  `dtTime` date NOT NULL DEFAULT '0000-00-00' COMMENT '创建时间',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_product;
CREATE TABLE `doc_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `title` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `sn` varchar(100) NOT NULL DEFAULT '' COMMENT '产品型号',
  `spec` varchar(255) NOT NULL DEFAULT '' COMMENT '产品规格',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ispush` int(11) NOT NULL DEFAULT '0' COMMENT '推荐',
  `sellingPrice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '市场价',
  `preferPrice` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠价',
  `content` text COMMENT '产品内容',
  `originalPic` varchar(255) NOT NULL DEFAULT '' COMMENT '原图',
  `middlePic` varchar(255) NOT NULL DEFAULT '' COMMENT '中图',
  `smallPic` varchar(255) NOT NULL DEFAULT '' COMMENT '小图',
  `indexPic` varchar(255) NOT NULL DEFAULT '' COMMENT '封面图',
  `categoryId` varchar(100) NOT NULL DEFAULT '0' COMMENT '隶属分类',
  `counts` int(11) NOT NULL DEFAULT '0' COMMENT '点击数',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `hassplitpages` int(11) NOT NULL DEFAULT '0' COMMENT '分页标记 0无 1有',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO doc_product VALUES('1','15','Porduct name1','','','','<|@|>COD:A258256<|@|>/upload/Image/20170514/20170514032955_94940.jpg','2017-05-14 11:30:15','0','0.00','0.00','<|@|><img src=\"/upload/Image/20170514/20170514032955_94940.jpg\" width=\"288\" height=\"288\" alt=\"\" />','/upload/201705/20170513213026708.jpg|/upload/201705/20170513214222275.jpg|/upload/201705/20170513214453441.jpg','/upload/201705/m_20170513213026708.jpg|/upload/201705/m_20170513214222275.jpg|/upload/201705/m_20170513214453441.jpg','/upload/201705/s_20170513213026708.jpg|/upload/201705/s_20170513214222275.jpg|/upload/201705/s_20170513214453441.jpg','/upload/201705/i_20170513213026708.jpg|/upload/201705/i_20170513214222275.jpg|/upload/201705/i_20170513214453441.jpg','15','0','0','0');
INSERT INTO doc_product VALUES('2','31','product1','','','','<|@|><|@|>/upload/Image/20170514/20170514032955_94940.jpg','2017-05-17 10:39:33','0','0.00','0.00','<img alt=\"\" src=\"/upload/Image/20170514/20170514032955_94940.jpg\" />','/upload/201705/20170516223737809.jpg','/upload/201705/m_20170516223737809.jpg','/upload/201705/s_20170516223737809.jpg','/upload/201705/i_20170516223737809.jpg','31,35','19','0','0');
INSERT INTO doc_product VALUES('3','31','product2','','','','<|@|><|@|>/upload/Image/20170517/20170517022841_72028.jpg','2017-06-17 14:40:26','0','0.00','0.00','<img alt=\"\" src=\"/upload/Image/20170517/20170517022841_72028.jpg\" />','/upload/201706/20170617144026502.jpg','/upload/201706/m_20170617144026502.jpg','/upload/201706/s_20170617144026502.jpg','/upload/201706/i_20170617144026502.jpg','31','14','0','0');
INSERT INTO doc_product VALUES('4','31','product3','','','','<|@|><|@|>/upload/Image/20170517/20170517023709_39528.jpg','2017-06-17 14:40:18','0','0.00','0.00','<img alt=\"\" src=\"/upload/Image/20170517/20170517023709_39528.jpg\" width=\"1024\" height=\"658\" />','/upload/201706/20170617144018585.jpg','/upload/201706/m_20170617144018585.jpg','/upload/201706/s_20170617144018585.jpg','/upload/201706/i_20170617144018585.jpg','31','11','0','0');
INSERT INTO doc_product VALUES('5','31','product1','','','','<|@|><|@|>/upload/Image/20170517/20170517023709_39528.jpg','2017-06-17 14:37:51','0','0.00','0.00','<img alt=\"\" src=\"/upload/Image/20170517/20170517023824_48026.jpg\" width=\"812\" height=\"529\" />','/upload/201706/201706171437511.jpg','/upload/201706/m_201706171437511.jpg','/upload/201706/s_201706171437511.jpg','/upload/201706/i_201706171437511.jpg','31','13','0','0');

DROP TABLE IF EXISTS doc_product_order;
CREATE TABLE `doc_product_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderId` varchar(50) NOT NULL DEFAULT '' COMMENT '订单号',
  `usertype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户类型0未注册用户1注册用户',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `ispay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否支付',
  `m_tel` varchar(11) NOT NULL DEFAULT '' COMMENT '手机',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '发货地址',
  `orederinfo` text COMMENT '订单详细',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单日期',
  `stauts` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未处理 1处理',
  `payprice` int(20) NOT NULL DEFAULT '0' COMMENT '付款金额',
  `customer` varchar(10) NOT NULL DEFAULT '' COMMENT '下单客户',
  `remark` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_tags;
CREATE TABLE `doc_tags` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '栏目id',
  `tagName` varchar(200) NOT NULL DEFAULT '' COMMENT '标签名称',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `custom` text COMMENT '自定义字段',
  `content` text COMMENT '标签内容',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS doc_user;
CREATE TABLE `doc_user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '电子邮件',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `pwd` varchar(75) NOT NULL DEFAULT '' COMMENT '密码',
  `role` int(2) NOT NULL DEFAULT '0' COMMENT '所属角色',
  `right` varchar(32) NOT NULL DEFAULT '0',
  `originalPic` varchar(50) NOT NULL DEFAULT '' COMMENT '头像',
  `smallPic` varchar(50) NOT NULL DEFAULT '' COMMENT '缩略图',
  `cropPic` varchar(50) NOT NULL DEFAULT '' COMMENT '切割图',
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auditing` tinyint(4) NOT NULL DEFAULT '0' COMMENT '审核',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `msn` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` tinyint(1) NOT NULL DEFAULT '1',
  `mtel` varchar(11) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '住址',
  `age` varchar(12) NOT NULL DEFAULT '',
  `lastlogin` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO doc_user VALUES('1','创始人','admin@localhost','admin','bd00q4y7040bd00156sy329ea1ff5l5ecb3bees202cb962auj59075b964n0715x2d234y7040','10','webadmin','','','','2017-05-13 10:06:22','1','::1','','','','1','','','','0');

DROP TABLE IF EXISTS doc_video;
CREATE TABLE `doc_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` int(11) NOT NULL DEFAULT '0' COMMENT '频道栏目ID',
  `filePath` varchar(200) NOT NULL DEFAULT '' COMMENT '文件路径',
  `fileSize` varchar(50) NOT NULL DEFAULT '' COMMENT '文件大小',
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '摘要',
  `content` text,
  `dtTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `picture` varchar(200) NOT NULL DEFAULT '' COMMENT '图片',
  `counts` int(11) NOT NULL DEFAULT '0' COMMENT '点击数',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


