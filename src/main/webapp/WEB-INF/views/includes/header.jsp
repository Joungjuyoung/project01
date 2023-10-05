<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="<c:url value='/resources/css/user/login.css?after' />" rel="stylesheet" type="text/css">
	<title>SB Admin 2 - Bootstrap Admin Theme</title>
	<!-- jQuery -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



<!-- Bootstrap CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">



<!-- common CSS -->

<link rel="stylesheet" href="<c:url value='/resources/common/css/common.css'/>" >
	<%-- <!-- Bootstrap Core CSS -->
	<link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- MetisMenu CSS -->
	<link href="${pageContext.request.contextPath}/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
	<!-- DataTables CSS -->
	<link href="${pageContext.request.contextPath}/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">
	<!-- DataTables Responsive CSS -->
	<link href="${pageContext.request.contextPath}/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="${pageContext.request.contextPath}/resources/dist/css/sb-admin-2.css" rel="stylesheet">
	<!-- Custom Fonts -->
	<link href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 --%>
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<c:if test="${member != null}">
<nav class="py-2 bg-light border-bottom">
    <div class="container d-flex flex-wrap">
      <ul class="nav me-auto">
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2 active" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Features</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Pricing</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">FAQs</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">About</a></li>
      </ul>
      <ul class="nav">
        <c:if test="${member.u_auth == 1 }">
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">회원관리</a></li>
        </c:if>
        <c:if test="${member.u_auth == 0 }">
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">내정보</a></li>
        </c:if>
        <li class="nav-item"><a href="/member/logout" class="nav-link link-dark px-2">로그아웃</a></li>
      </ul>
    </div>
  </nav>
</c:if>
<c:if test="${member == null}">
<nav class="py-2 bg-light border-bottom">
    <div class="container d-flex flex-wrap">
      <ul class="nav me-auto">
        <li class="nav-item"><a href="/review/list" class="nav-link link-dark px-2 active" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Features</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">Pricing</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">FAQs</a></li>
        <li class="nav-item"><a href="#" class="nav-link link-dark px-2">About</a></li>
      </ul>
      <ul class="nav">
        <li class="nav-item"><a href="/" class="nav-link link-dark px-2">로그인</a></li>
        <li class="nav-item"><a href="/member/register" class="nav-link link-dark px-2">회원 가입</a></li>
      </ul>
    </div>
  </nav>
</c:if>
