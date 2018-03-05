
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ page import="user.UserDAO" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복체크</title>

</head>
<body>
	<%
		String userID = request.getParameter("userID");
		UserDAO user = new UserDAO();
		int result = user.userCheck(userID);//id조회 결과 1이면 이미 존재, 0이면 id사용가능
		out.print(result);
		if (result == 1) {
			out.print("<script>");
			out.print("opener.document.forms[0].userID.value='';");//호출한 부모창의 id에 값을 빈문자열대입
			out.print("alert('이미 존재하는 아이디입니다.');");//경고 창
			out.print("self.close();");//자신을 닫음
			out.print("</script>");
		} else {
			out.print("<script>");
			out.print("alert('" + userID + "는 사용 가능합니다.');");
			out.print("self.close();");
			out.print("</script>");
		}
	%>
</body>
</html>