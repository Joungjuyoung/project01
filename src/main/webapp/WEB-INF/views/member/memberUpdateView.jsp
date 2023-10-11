<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원가입</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
			});
			$.ajax({
				url : "/member/passChk",
				type : "POST",
				dateType : "json",
				data : $("#updateForm").serializeArray(),
				success: function(data){
					
					if(data==true){
						if(confirm("회원수정하시겠습니까?")){
							$("#updateForm").submit();
						}
						
					}else{
						alert("패스워드가 틀렸습니다.");
						return;
						
					}
				}
			})
		});
	})
				
			
		})
	</script>
	<body>
		<section id="container">
			<form action="/member/memberUpdate" method="post" id="updateForm">
				<div class="form-group has-feedback">
					<label class="control-label" for="u_id">아이디</label>
					<input class="form-control" type="text" id="u_id" name="u_id" value="${member.u_id}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="u_pw">패스워드</label>
					<input class="form-control" type="password" id="u_pw" name="u_pw" value="${member.u_pw}" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="u_nickname">성명</label>
					<input class="form-control" type="text" id="u_nickname" name="u_nickname" value="${member.u_nickname}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="u_nickname">이메일</label>
					<input class="form-control" type="text" id="u_email" name="u_email" value="${member.u_email}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="u_phone">전화번호</label>
					<input class="form-control" type="text" id="u_phone" name="u_phone" value="${member.u_phone}"/>
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
				
			</form>
		</section>
		
	</body>
	
</html>