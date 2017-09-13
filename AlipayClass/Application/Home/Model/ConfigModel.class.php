<?php
namespace Home\Model;
use Think\Model;

class ConfigModel extends Model
{
    protected $tablePrefix = 'pay_';

    protected $_validate = array(
        array('app_id','require','app_id必填'),
        array('notify_url','require','异步通知地址必填'),
        array('return_url','require','同步跳转地址必填'),
        array('alipay_public_key','require','公钥必填'),
        array('merchant_private_key','require','私钥必填'),
    );

    protected $_auto=array(
        array('update_time','time',2,'function'),
    );
}
?>