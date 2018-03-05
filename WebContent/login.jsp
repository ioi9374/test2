<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>로그인 창</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="callapse" data-target="#bs-example-navbar-callapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			<a class = "navbar-brand" href="main.jsp">JSP 게시판 웹</a>
		</div>
		<div class="collapse navbar-collapse" id="#bs-example-navbar-callapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="main.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" 
					data-toggle="dropdown" role="button" aria-haspopup="true"
					 aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
					<li class="active"><a href="login.jsp">로그인</a></li>	
					<li><a href="join.jsp">회원가입</a></li>
					</ul>
			</ul>
		</div>
</nav>
<div class="container">
	<div class="col-lg-4">
		<div class="jumbotron" style="padding-top:20px;">
		<form method="post" action="loginAction.jsp">
			<h3 style="text-align:center;">로그인 화면</h3>
			<div class="form-group">
			<label>아이디</label>
				<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">	 
			</div>
					<div class="form-group">
					<label>비밀번호</label>
				<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">	 
			</div>
			<input type="submit" class="btn btn-primary form-control" value="로그인">
		</form> 
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>