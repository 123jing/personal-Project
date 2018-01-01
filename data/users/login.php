<?php
//data/users/login.php
session_start();
require("../init.php");
//1:获取二个参数  phone  upwd
$phone = $_REQUEST["phone"];
$upwd = $_REQUEST["upwd"];
//2 创建用户名正则表达式  字母数字4,32
$Pattern = '/^[a-zA-Z0-9]{4,32}$/';
//3 验证用户名  和  密码
if(!preg_match($Pattern,$phone)){
  echo '{"code":-2,"msg":"用户名格式不正确"}';
  exit; //停止php执行
}
if(!preg_match($Pattern,$upwd)){
  echo '{"code":-2,"msg":"密码格式不正确"}';
  exit; //停止php执行
}
//4:创建sql语句##注意大小写
//如果出现如下错误:原因sql语法写错了!
//expects parameter 1 to be mysqli_result
$sql = "SELECT uid FROM hw_user WHERE phone='$phone' AND upwd='$upwd'";
//$sql .=" WHERE phone='$phone' AND";
//$sql .=" upwd='$upwd'";
//5:发送sql语句
$result = mysqli_query($conn,$sql);
//6:获取数据库返回结果
$row = mysqli_fetch_row($result);
//7: 判断sql语句是否有错
if(mysqli_error($conn)){
   echo mysqli_error($conn);
}
//8:判断返回结果
if($row==null){
  echo '{"code":-1,"msg":"用户名或密码有误"}';
}else{
//9:依据结果发送json格式数据
//$output=["code"=>1,"msg"=>"登录成功"];   // 方括号，不要花括号
//	echo json_encode($output);
  echo '{"code":1,"msg":"登录成功"}';
//var_dump($row);
//echo $row[0];
  // 将uid保存在session中
  $_SESSION["uid"]=$row[0];
}


?>