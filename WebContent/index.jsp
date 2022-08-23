<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- home.jsp 역할을 index.jsp로 바꾸었습니다.(8월22일): login폴더의 href경로가 일부 수정-->
<h3>메인 Main</h3>
<hr>
<c:if test="${user!=null }">
	<h4><c:out value="${user.name }"/>님 환영합니다.</h4>
	<a href="login/logout.jsp">로그아웃</a>
</c:if>
<c:if test="${user==null }">

	<a href="login/loginForm.jsp">로그인</a>
</c:if>
<a href="board/listAction.jsp">커뮤니티</a>
</body>
</html>