
//login.js
$(()=>{
    //1:获取登录按钮
    //2:绑定点击事件
//    console.log(1);
    $(".btn_login").click(function(e){
        //阻止事件默认行为 a submit button
        e.preventDefault();
//        console.log(2);
        //3:获取用户名和密码
        var h = $("#phone").val();
        var p = $("#upwd").val();
//        console.log(3);
//        console.log(h+":"+p);
        //4:创建正则表达式验证用户名和密码        
         var reg = /^[a-zA-Z0-9]{4,32}$/;
        if(!reg.test(h)){
//        $("#errors_show").html("手机号码格式不正确，请检查");
          alert("手机号码格式不正确，请检查");
          return;
        }
//        console.log(4);
        //5:发送ajax请求 data/login.php
        $.ajax({
            type:"POST",
	          dataType:"json",    // 一定要写dataType:"json"
            url:"data/users/login.php",
            data:{phone:h,upwd:p},  
            success:function(data){
                  console.log(5);
                  console.log(data);//js对象
                //6:判断登录是否成功
                //7:成功跳转 index.html
                if(data.code>0){
//                  alert(data.msg);   弹出框提示登录成功
                    //如果登录成功跳转主程序页
                    location.href = "project.html";
                }else{
                	$("#errors_show").html("<span style='color:red;'>"+data.msg+"</span>");
//                alert(data.msg);
                }
            },
            error:function(){
                //1:php语法出错
                //2:php sql语法出错
                //3:php header 出错
                //4:js 请求地址不正确或者参数出错                
                alert("网络故障，请检查");
            } 
        });
    });
});


