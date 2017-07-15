<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title>记录页面</title>
	<link href="/Public/sources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="/Public/sources/css/common.css" rel="stylesheet" type="text/css">
	<link href="/Public/sources/css/page.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="gov_re_log_bal_box">
        <a href="<?php echo U('Index');?>" class="tontinue_pay">继续充值</a><hr />
        当前账户余额（元）
        <div class="gov_re_log_balance">￥ <?php echo ($user["money"]); ?></div>
    </div>
	<div class="gov_re_log_box">
        <div class="row gov_re_log_head">
            <div class="gov_re_log_item col-sm-3">账户名称</div>
            <div class="gov_re_log_item col-sm-3">记录编号</div>
            <div class="gov_re_log_item col-sm-3">充值类型</div>
            <div class="gov_re_log_item col-sm-3">充值金额</div>
            <div class="gov_re_log_item col-sm-3">充值时间</div>
        </div>
        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?><div class="row gov_re_log_list">
	            <div class="gov_re_log_node col-sm-3 left_text_align"><?php echo (substr_replace($item['username'],'****',3,4)); ?></div>
	            <div class="gov_re_log_node col-sm-3 left_text_align"><?php echo ($item['order_no']); ?></div>
	            <div class="gov_re_log_node col-sm-3"><?php echo ($item['type']); ?></div>
	            <div class="gov_re_log_node col-sm-3"><?php echo ($item['money']); ?></div>
	            <div class="gov_re_log_node col-sm-3"><?php echo (date('Y-m-d H:i:s',$item['create_time'])); ?></div>
	        </div><?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
    <div class="pagination"><?php echo ($page); ?></div>
</body>
</html>