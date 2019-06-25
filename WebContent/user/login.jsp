<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>欢迎登录 </title>
<script src="../js/jquery-1.11.1.js"></script>
<script src="../js/login.js"></script>
<link href="../css/login.css" rel="stylesheet">
</head>
<body>
	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	 %>
		<div class="logindiv" >
			<div class="formdiv">
				<form action="../coustomerServlet">
					<input class="userdiv" type="text" name="userid" placeholder="请输入账号"><br>
					<input class="pwddiv" type="password" name="userpwd" placeholder="请输入密码"><br>
					<div class="servicediv">
						<input class="radiodiv" id="male" type="radio" value=""><a href="fuwu.html"><span>同意《欧阳昭兵服务协议》</span></a>
					</div>
					<input class="subdiv" type="submit" value="LOGIN"><br>
					<div class="regisdiv">
						<a href="regis.jsp"><span>没有账号?注册一个</span></a>
					</div>
				</form>
			</div>
		</div>
</body>
</html>