<?php
$config = array (	
		//应用ID,您的APPID。
		'app_id' => "",

		//商户私钥
		'merchant_private_key' => "",
		
		//异步通知地址
		//'notify_url' => "http://外网可访问网关地址/alipay.trade.page.pay-PHP-UTF-8/notify_url.php",
		'notify_url' => "http://alipayclass.cn/index.php/Home/Index/get_post.html",
		//该地址为我使用的地址，前面的域名（alipayclass.cn）的话是指向我本地的，所以你是无法使用的。你需要根据你的实际情况进行修改，记住一点要是外网可以访问的地址，别问为什么，就是这么傲娇
		
		
		//同步跳转
		'return_url' => "http://外网可访问网关地址/alipay.trade.page.pay-PHP-UTF-8/return_url.php",

		//编码格式
		'charset' => "UTF-8",

		//签名方式
		'sign_type'=>"RSA",

		//支付宝网关
		'gatewayUrl' => "https://openapi.alipay.com/gateway.do",

		//支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
		'alipay_public_key' => "",
);