<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册 </title>
<script src="../js/jquery-1.11.1.js"></script>
<script src="../js/regis.js"></script>
<link href="../css/regis.css" rel="stylesheet">
</head>
<body>
		<div class="logindiv" >
			<div class="formdiv">
				<form action="">
					<input class="userdiv" type="text" name="userid" placeholder="请输入要注册账号"><br>
					<input class="userdiv" type="text" name="username" placeholder="请输入用户名"><br>
					<input class="pwddiv" type="password" name="pwd" placeholder="请输入密码"><br>
					<input class="pwddiv" type="password" name="pwd" placeholder="再次确认密码"><br>
					<div class="servicediv">
						<input class="radiodiv" id="male" type="radio" value=""><a href="fuwu.html"><span>同意《欧阳昭兵服务协议》</span></a>
					</div>
					<input class="subdiv" type="submit" value="SIGN UP"><br>
					<div class="regisdiv">
						<a href="login.jsp"><span>去登陆</span></a>
					</div>
				</form>
			</div>
		</div>
</body>
</html>