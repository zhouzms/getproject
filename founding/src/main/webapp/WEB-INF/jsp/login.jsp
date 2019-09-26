<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">
	<link rel="stylesheet" href="${APP_PATH }/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${APP_PATH }/css/font-awesome.min.css">
	<link rel="stylesheet" href="${APP_PATH }/css/login.css">
	<style>

	</style>
  </head>
  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <div><a class="navbar-brand" href="index.html" style="font-size:32px;">尚筹网-创意产品众筹平台</a></div>
        </div>
      </div>
    </nav>

    <div class="container">

      <form id="loginform" class="form-signin" role="form" action="${APP_PATH }/dologin.do" method="post">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 用户登录</h2>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="floginacct" name="loginacct" placeholder="请输入登录账号" autofocus>
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="password" class="form-control" id="fuserpawd" name="userpawd" placeholder="请输入登录密码" style="margin-top:10px;">
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<select class="form-control" name="type" id="ftype">
                <option value="member">会员</option>
                <option value="user">管理</option>
            </select>
		  </div>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
          <br>
          <label>
            忘记密码
          </label>
          <label style="float:right">
            <a href="reg.html">我要注册</a>
          </label>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick="dologin()" > 登录</a>
      </form>
    </div>
    <script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
    <script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${APP_PATH }/layer/layer.js"></script>
    <script>
    function dologin() {
       /* var type = $(":selected").val();
        if ( type == "user" ) {
            window.location.href = "main.html";
        } else {
            window.location.href = "index.html";
        }*/
        //$("#loginform").submit();
        var floginacct=$("#floginacct").val();
        var fuserpawd=$("#fuserpawd").val();
        var ftype=$("#ftype").val();
        $.ajax({
        	type:"post",
        	url:"${APP_PATH }/dologin.do",
        	data: {
        		"loginacct":floginacct,
        		"userpawd":fuserpawd,
        		"type":ftype
        	},
        	beforeSend:function(){
        		//在发送数据之前做一些校验
        		//一般是表单验证表单检验
        		if(floginacct==null||floginacct==""){
        			$("#floginacct").val("不为空");
        			layer.msg("不为空", {
        				timeout: 2000,
        				icon: "5",
        				shift: 6
        			}, function () {
        				$("#floginacct").focus();
					})
        			return false;
        		}
        		return true;
        	},
        	success: function (data) {
        		//这里返回的是对象
				if(data.success){
					//alert("ok");
					window.location.href="${APP_PATH}/main.htm";
				}else{
					alert(data.msString);
				}
			}
			
        });
    }
    </script>
  </body>
</html>

</body>
</html>