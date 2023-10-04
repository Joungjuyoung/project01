<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
 <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원가입</title>

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css?after"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <link href="<c:url value='/resources/css/user/register.css?after' />" rel="stylesheet" type="text/css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </head>

	<script type="text/javascript">
		$(document).ready(function(){
	
			$("#submit").on("click", function(){
				if($("#u_id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#u_id").focus();
					return false;
				}
				if($("#u_pw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#u_pw").focus();
					return false;
				}
				if($("#u_pw_again").val() != $("#u_pw").val()){
					alert("비밀번호가 일치하지 않습니다.");
					$("#u_pw").focus();
					return false;
				}
				if($("#u_nickname").val()==""){
					alert("닉네임을 입력해주세요.");
					$("#u_nickname").focus();
					return false;
				}
				if($("#u_phone").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#u_phone").focus();
					return false;
				}
				if($("#u_email").val()==""){
					alert("E메일을 입력해주세요.");
					$("#u_email").focus();
					return false;
				}
				var idChkVal = $("#idChk").val();
				if(idChkVal == "N"){
					alert("중복확인 버튼을 눌러주세요.");
				}else if(idChkVal == "Y"){
					$("#regForm").submit();
				}
			});
		})
		function fn_idChk(){
			$.ajax({
				url : "./idChk",
				type : "post",
				dataType : "json",
				data : {"u_id" : $("#u_id").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
						return false;
					}else if(data == 0){
						$("#idChk").attr("value","Y");
						alert("사용가능한 아이디입니다.");
						$("#u_pw").focus();
					}
				}
			})
		}
		function fn_nameChk(){
			$("#nameChk").attr("value","N");
			$.ajax({
				url : "./nameChk",
				type : "post",
				dataType : "json",
				data : {"u_nickname" : $("#u_nickname").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 닉네임입니다.");
						return false;
					}else if(data == 0){
						$("#nameChk").attr("value","Y");
						alert("사용가능한 닉네임입니다.");
					}
				}
			})
		}
	      window.addEventListener(
	    	        "load",
	    	        () => {
	    	          const forms = document.getElementsByClassName("validation-form");

	    	          Array.prototype.filter.call(forms, (form) => {
	    	            form.addEventListener(
	    	              "submit",
	    	              function (event) {
	    	            	  if($("#u_pw_again").val() != $("#u_pw").val()){
	    	  					alert("비밀번호가 일치하지 않습니다.");
	    	  					$("#u_pw").focus();
	    	  					return false;
	    	  				}
	    	                if (form.checkValidity() === false) {
	    	                  event.preventDefault();
	    	                  event.stopPropagation();
	    	                }
	    	               
	    	                form.classList.add("was-validated");
	    	              },
	    	              false
	    	            );
	    	          });
	    	        },
	    	        false
	    	      );
	</script>
	<body>
    <div class="container">
      <div class="input-form-backgroud row">
        <div class="input-form col-md-12 mx-auto">
          <h4 class="mb-3">회원가입</h4>
          <form action="./register" method="post" class="validation-form" >
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="u_id">아이디</label>
                <input
                  type="text"
                  class="form-control"
                  id="u_id"
                  name="u_id"
                  placeholder="ID"
                  value=""
                  required
                />
                <input type="hidden" id="u_auth" name="u_auth" value="0" />
                <div class="invalid-feedback">아이디를 입력해주세요.</div>
                <button
                  class="idChk"
                  type="button"
                  id="idChk"
                  onclick="fn_idChk();"
                  value="N"
                >
                  중복확인
                </button>
              </div>
              <div class="col-md-6 mb-3">
                <label for="u_nickname">별명</label>
                <input
                  type="text"
                  class="form-control"
                  id="u_nickname"
                  name="u_nickname"
                  placeholder="NickName"
                  value=""
                  required
                />
                <div class="invalid-feedback">별명을 입력해주세요.</div>
                <button
                  class="nameChk"
                  type="button"
                  id="nameChk"
                  onclick="fn_nameChk();"
                  value="N"
                >
                  중복확인
                </button>
              </div>
            </div>

            <div class="mb-3">
              <label for="u_pw">암호</label>
              <input
                type="password"
                class="form-control"
                id="u_pw"
                name="u_pw"
                placeholder="Password"
                required
              />
              <div class="invalid-feedback">암호를 입력해주세요.</div>
            </div>

            <div class="mb-3">
              <label for="u_pw_again">암호 확인</label>
              <input
                type="password"
                class="form-control"
                id="u_pw_again"
                placeholder=""
                required
              />
              <div class="invalid-feedback">암호확인을 입력해주세요.</div>
            </div>

            <div class="mb-3">
              <label for="u_email"
                >E-Mail<span class="text-muted"></span
              ></label>
              <input
                type="text"
                class="form-control"
                id="u_email"
                name="u_email"
                placeholder="E-Mail"
              />
            </div>

            <div class="row">
              <div class="col-md-8 mb-3">
                <label for="u_phone">전화번호</label>
                <input
                  type="text"
                  class="form-control"
                  id="u_phone"
                  name="u_phone"
                  placeholder="Phone"
                />
                <div class="invalid-feedback">전화번호를 입력해주세요.</div>
              </div>
            </div>
            <hr class="mb-4" />
            <div class="custom-control custom-checkbox">
              <input
                type="checkbox"
                class="custom-control-input"
                id="aggrement"
                required
              />
              <label class="custom-control-label" for="aggrement"
                >개인정보 수집 및 이용에 동의합니다.</label
              >
            </div>
            <div class="mb-4"></div>
            <button class="btn btn-primary btn-lg btn-block" type="submit">
              가입 완료
            </button>
          </form>
        </div>
      </div>
      <footer class="my-3 text-center text-small">
        <p class="mb-1">&copy; 2021 YD</p>
      </footer>
    </div>

  </body>
	
</html>