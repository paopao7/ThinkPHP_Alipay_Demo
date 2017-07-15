<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
	//该方法为显示支付页面
    public function index(){
    	//获取账户余额
    	$model_users = D('Users');
    	$user = $model_users->where('id=1')->find();

    	$this->assign('user',$user);
        $this->display();
    }

    //该方法显示记录页面
    public function record(){
    	//获取账户余额
    	$model_users = D('Users');
    	$user = $model_users->where('id=1')->find();

    	$model = D('Record'); // 实例化User对象
		$count      = $model->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(10)
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $model->order('create_time DESC')->relation(true)->limit($Page->firstRow.','.$Page->listRows)->select();

		$this->assign('user',$user);
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
    	$this->display();	
    }
}