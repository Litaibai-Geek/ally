<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login BackGround</title>
<!-- 引入样式文件 -->
<link rel="stylesheet" href="${APP_PATH}/Css/index.css">
<!-- 引入js -->
<script src="${APP_PATH}/Js/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
	function getContextPath(){   
    	var pathName = document.location.pathname;   
    	var index = pathName.substr(1).indexOf("/");   
    	var result = pathName.substr(0,index+1);   
    	return result;   
	}
</script>
</head>
<body>
<div class="login">
	<h1>阿里路亚后台管理</h1>
	<form method="post">
		<input type="text" name="username" placeholder="用户名" required="required" />
		<input type="password" name="password" placeholder="密码" required="required" />
		<button type="submit" class="btn btn-primary btn-block btn-large" id="loginSub">登录</button>
	</form>
</div>
</body>

<script type="text/javascript">


$(function() {
	$('#loginSub').click(function(){
			var strURL = "/back/login.do";
			$.ajax({
				type:'POST',
				url:strURL,
				data:$("form").serialize(), 
				dataType:"json",
				success:function(data){
					 if(data != "" && data.code == 100){
						 if(data.extend.state == '1'){
							 alert("登录成功!");
							 alert(data.extend.page);
							 window.location.href = "/"+data.extend.page;//需要跳转的地址
						 }
						 if(data.extend.state == '2'){
							 alert("用户被冻结,请联系管理员!");
							 return false;
						 }
						
					 }else{
						 alert("用户名或密码错误!");
						 return false;
					 }
				},
				error: function(data) {
					alert("数据发送失败,请联系管理员!");
	       		}
			});
		});
});
</script>
</html>