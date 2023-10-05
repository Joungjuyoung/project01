<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>
<script>
	$(document).ready(function(e) {
		
	}
	
</script>
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Review Register</h1>
		</div>
	</div>
  
  <div class="row">
  	<div class="col-lg-12">
  		<div class="panel panel-default">
  			<div class="panel-heading">Review Register</div>
  			<div class="panel-body">
  				<form role="form" action="${pageContext.request.contextPath}/review/register" method="post">
  					<div class="form-group">
  						<label>Title</label><input class="form-control" name="r_title">
  					</div>
  					<div class="form-group">
  						<label>Content</label>
  						<textarea class="form-control" rows="3" name="r_content"></textarea>
  					</div>
  					<div class="form-group">
  						<label>Writer</label><input class="form-control" name="r_writer">
  					</div>
  					<button type="submit" class="btn btn-default">Submit Button</button>
  					<button type="reset" class="btn btn-default">Reset Button</button>
  				</form>
  			</div>
  		</div>
  	</div>
  </div>
  
<%@ include file="../includes/footer.jsp" %>