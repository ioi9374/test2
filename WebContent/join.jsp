<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<script
	src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&"
	async defer></script>
<title>로그인 창</title>
<script type="text/javascript">
	function idCheck(userID) {
		width = 400;
		height = 300;
		sx = screen.width;
		sy = screen.height;
		x = (sx - width) / 3;
		y = (sy - height) / 4;
		if (!userID) {
			alert("아이디를 입력하세요");
			document.forms[0].userID.focus();
		} else {
			url = "id_chk.jsp?userID=" + userID;
			wr = window.open(url, "아이디 중복체크", "width=400,height=300");
			wr.moveTo(x, y);
		}
	}
	var onloadCallback = function() {
		alert("리캡차!");
	};
	function callback() {
		console
				.log("The user has already solved the captcha, now you can submit your form.");
	}
	function passwordCheckFunction() {
		var userPassword1 = $('#userPassword1').val();
		var userPassword2 = $('#userPassword2').val();
		if (userPassword1 != userPassword2) {
			$('#passwordCheckMessage').html('비밀번호가 서로 일치 하지 않습니다');
		} else {
			$('#passwordCheckMessage').html('');
		}
	}
</script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="callapse" data-target="#bs-example-navbar-callapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹</a>
		</div>
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-callapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li><a href="main.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li class="active"><a href="join.jsp">회원가입</a></li>
					</ul>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<label>아이디</label> <input type="text" class="form-control"
							placeholder="아이디를 입력하세요" name="userID" maxlength="20"> <input
							type="button" class="btn btn-primary form-control" value="중복체크" onclick="javascript:idCheck(this.form.userID.value)">
					</div>
					<div class="form-group">
						<label>비밀번호</label> <input type="password" class="form-control"	placeholder="비밀번호를 입력하세요" name="userPassword" id="userPassword1"
							maxlength="20" onkeyup="passwordCheckFunction()">
					</div>
					<div class="form-group">
						<label>비밀번호 확인</label> <input type="password" class="form-control" placeholder="비밀번호 확인을 입력하세요." name="userPassword"
							id="userPassword2" maxlength="20"		onkeyup="passwordCheckFunction()">
					</div>
					<h5 style="color: red;" id="passwordCheckMessage"></h5>
					<div class="form-group">
						<label>이름</label> <input type="text" class="form-control"	placeholder="이름을 입력하세요" name="userName" maxlength="20">
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							 <label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label> <label class="btn btn-primary active"> <input	type="radio" name="userGender" autocomplete="off" value="여자">여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<label>나이</label> <input type="text" class="form-control" placeholder="나이를 입력하세요" name="userAge" maxlength="20">
					</div>
					<div class="form-group">
						<label>이메일</label> <input type="email" class="form-control" placeholder="이메일을 입력하세요" name="userEmail" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form>
				<div class="g-recaptcha"
					data-sitekey="6LcWNEUUAAAAAMLxOE7yT9LHVPQlOiFR0CiYLKqJ" 	data-callback="callback"
					style="transform: scale(0.77); -webkit-transform: scale(0.77); transform-origin: 0 0; -webkit-transform-origin: 0 0;">
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>