<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>Home</title>
	<link href="<c:url value='/resources/css/user/login.css?after' />" rel="stylesheet" type="text/css">	
	
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
</head>

<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		
		$("#submit").on("click", function(){
			if($("#u_id").val()==""){
				alert("id를 입력해주세요.");
				$("#u_id").focus();
				return false;
			}
			if($("#u_pw").val()==""){
				alert("암호를 입력해주세요.");
				$("#u_pw").focus();
				return false;
			}
		})
	})
</script>
<body>
	<jsp:include page="./nav.jsp" />
	<form class ='loginForm' name='homeForm' method="post" action="./member/login">
		<c:if test="${member == null}">
			<div>
				<label for="u_id"></label>
				<input type="text" id="u_id" name="u_id" placeholder="아이디">
			</div>
			<div>
				<label for="userPass"></label>
				<input type="password" id="u_pw" name="u_pw" placeholder="암호">
			</div>
			<div>
				<button type="submit" id="submit">로그인</button>
				<button type="button" onclick="location.href='./member/register'">회원가입</button>
			</div>
		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>${member.u_id}님 환영 합니다.</p>
				<button id="logoutBtn" type="button">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
</body>
</html>