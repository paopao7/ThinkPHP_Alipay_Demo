<?php
namespace Home\Model;
use Think\Model\RelationModel;

class RecordModel extends RelationModel
{
    protected $tablePrefix = 'pay_';

    public $_link=array(
        'Users'=>array(
            'mapping_type'=>self::BELONGS_TO,
            'class_name'=>'Users',
            'foreign_key'=>'user_id',
            'mapping_name'=>'username',
            'as_fields'=>'username:username',
        ),
    );
}
?>