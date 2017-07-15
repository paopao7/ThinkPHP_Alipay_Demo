<?php
//该方法你修改为其他任何名称都可以，当然不能和已有的方法冲突就行了。例如我修改为CC
function CC($className)
{
	return LtObjectUtil::singleton($className);
}
