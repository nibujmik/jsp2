<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면(폼)</title>
</head>
<body>
<div>
<!--  	<form action="login.jsp" method="post">-->
<form action="login.jsp?back=${param.back}&idx=${param.mref}&page=${param.page}" method="post">

	<input name="userid" placeholder="아이디(이메일)를 입력하세요!"> <br>
	<input name="password" placeholder="비밀번호를 입력하세요!"> <br>
	<button>로그인</button>
	<button type="button" onclick="location.href='../index.jsp'">홈</button>
	</form>
</div>
</body>
</html>