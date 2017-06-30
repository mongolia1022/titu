<!--内页-->
<div class="incenter">
    <div class="incenter_t"></div>
    <div class="incenter_in">
        <div class="in_page">
            <div class="center_mgt">
                <div class="left">
                    <?php nav_custom('20,23') //自定义导航调用的标签?>
                </div>
                <div class="right">
                    <div class="right_t">
                        <span>News</span>
                        <span> &gt; </span>
                        <label><?php echo sys_menu_info('title',false)?></label>
                    </div>
                    <div class="right_b">
                        <div class="news">
                            <?php
				if( !empty( $tag['data.results'] ) )
				{?>
                                <?php foreach($tag['data.results'] as $k =>$data)
					{?>
                                <dl>
                                    <dt>
                                        <a href="<?php echo sys_href($data['channelId'],'list',$data['id'])?>"><img width="158" height="112" /></a>
                                    </dt>
                                    <dd class="news_t">
                                        <a href="<?php echo sys_href($data['channelId'],'list',$data['id'])?>">
                                            <?php echo sys_substr($data['title'],30,true); ?>
                                        </a>
                                    </dd>
                                    <dd class="news_m">发布时间：
                                        <?php echo date('Y-m-d',strtotime($data['dtTime'])); ?>
                                    </dd>
                                    <dd class="news_b"><?php echo sys_substr($data['description'],100,true); ?></dd>
                                </dl>
                                <?php			
					}?>
                                    <?php	}
				else
				{
					echo '暂无数据';
				}
			?>
                        </div>
                        <div class="page">
                            <?php if($tag['pager.cn']) echo $tag['pager.cn']; ?>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>