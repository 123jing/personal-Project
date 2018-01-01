<?php
//data/index/index_carProduct1.php

// 设置请求头
header("Content-Type:application/json");
require_once("../init.php");
// 发送sql语句
$sql="select * from hw_index_product where pindex=1";
$result=mysqli_query($conn,$sql);
// 转换成json格式
echo json_encode(mysqli_fetch_all($result,1));


?>