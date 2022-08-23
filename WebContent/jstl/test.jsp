<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<h3>JSTL</h3>
<hr>
<ul>
	<li>JavaSever pages Standard Tag Library </li>
	<li>스크립트릿은 자바 코드 조각. html문서의 태그들 사이에 존재할 때 가독성 문제 </li>
	<li>스크립트릿에 많이 사용되는 for,if 등을 태그로 제공 </li>
	<li>JSTL라이브러리 필요합니다 </li>
	<li>el은 expression language. 기호는$&#123;&#125; 사용
	<%--<%= %> --%> 기호 대신 사용. 애트리뷰트 getAttribute 메소드 동작 실행 후 출력 </li>
	<li>jstl과 el은 함께 사용(el은 라이브러리 추가 없이 사용) </li>
</ul>
<h4>자바 변수처럼 값을 저장하기</h4>
<c:set var="age" value="14"/>
age: ${age} <br>				<!-- XSS 해킹 공격에 취약한 형식 -->
age: <c:out value="${age }"/>	<!-- el출력할 때 사용 -->
<hr>
<!--  -->
<h4>if : test는 조건식 속성</h4>
<c:if test="${age < 20 }">
	<div style="color:green;">청소년 입니다.</div>
</c:if>
<c:if test="${age >= 20 }">
	<div style="color:blue;">성인 입니다.</div>
</c:if>
<h4>if~else 대신에 c:choose</h4>
<c:choose>
	<c:when test="${age < 15 }">
	<div style="color:pink;">어린이 입니다.</div>
	</c:when>
	<c:when test="${age < 23 }">	<!-- 첫번째 조건이 거짓일때만 실행 -->
	<div style="color:violet;">청소년 입니다.</div>
	</c:when>
	<c:otherwise>
	<div style="color:blue;">성인 입니다.</div>
	</c:otherwise>
</c:choose>
<button onclick="test()">테스트</button>
<script type="text/javascript">
function test() {
	alert('${age}');		//el
}</script>
<h4>forEach</h4>
<c:forEach var="i" begin="1" end="10">
	<c:out value="${i }"/>
	<c:out value="${i*10 }"/> <br>
</c:forEach>
<c:forEach var="x" begin="1" end="30" step="2" varStatus="status"> <!-- varStatus는 현재상태 저장할 변수 -->
	<c:out value="${x }"/>, index=
	<c:out value="${status.count }"/> <br> <!-- varStatus의 count 속성은 1부터 시작하여 몇 번째 값인지 -->
</c:forEach>

<h4>forTokens</h4>
<c:set var="twice" value="사나,나연,다현,모모"/>
<ul>
<c:forTokens items="${twice }" var="member" delims=",">
	<li>
		<c:out value="${member }"></c:out>
	</li>	
</c:forTokens>
</ul>



</body>
</html>