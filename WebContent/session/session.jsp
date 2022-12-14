<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>http 프로토콜은 statelss(상태정보유지안됨) ,비연결지향  <br>
    (참고로 카카오톡은 연결지향.)
     -> 웹서버와 브라우저 사이의 연결정보를 저장하는 방법을 사용합니다.<br>
     -> request 를 통해서 브라우저의 세션ID가 부여되고  그 값으로 구별.<br>
     -> 로그인 기능 구현에 활용합니다.<br>
     -> 톰캣은 이름 JSESSIONID 값을 만듭니다.<br>
     -> 세션 유효 시간은 서버에서 설정합니다. web.xml 확인(모든 프로젝트에 적용) <br>
</div>
<h3>session 정보 확인</h3>
<%
	String id = session.getId();
	out.print("session ID: "+id);
	out.print("<br> ");

	long create = session.getCreationTime();		//세션객체가 만들어진 시간 (첫번째 요청 시간)
	out.print("session 생성시간: "+create);
	out.print("<br>");
	DateFormat df = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
	out.print("session 생성시간: "+df.format(create));
	out.print("<br>");
	
	long last = session.getLastAccessedTime();		//최근 요청시간(마지막 요청시간)
	out.print("session 최근 요청 시간: "+last);				//타임스탬프(1970년1월1일 기준 단위는 ms)
	out.print("<br>");
	out.print("session 최근 요청 시간: "+df.format(last));
	out.print("<br>");
	
	//메소드로 timeout 변경하기
	session.setMaxInactiveInterval(180);  //300초
	session.setAttribute("session_user", "김땡땡");
	
	
%>
<br><a href="sessionAttr.jsp">세션 애트리뷰트 확인</a>
</body>
</html>