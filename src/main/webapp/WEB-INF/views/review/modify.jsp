<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>

<script type="text/javascript">
	$(document).ready(function() {

	var formObj = $("form");
	
	$('button').on("click", function(e){
		e.preventDefault();
		var operation = $(this).data("oper");
		
		console.log(operation);
		
		if(operation === 'delete'){
			formObj.attr("action", "${pageContext.request.contextPath}/review/delete");
		} else if(operation === 'list') {
			formObj.attr("action", "${pageContext.request.contextPath}/review/list").attr("method", "get");
			var pageTag = $("input[name='page']").clone();
			var sizeTag = $("input[name='size']").clone();
			var keywordTag = $("input[name='keyword']").clone();
			var typeTag = $("input[name='type']").clone();
			
			formObj.empty();
			formObj.append(pageTag);
			formObj.append(sizeTag);
			formObj.append(keywordTag);
			formObj.append(typeTag);
		} else if(operation === 'modify') {
			console.log("submit clicked");

		}
		formObj.submit();
	});

});
</script>

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Reply Modify Page</h1>
		</div>
	</div>
  
  <div class="row">
  	<div class="col-lg-12">
  		<div class="panel panel-default">
  			<div class="panel-heading">Reply Modify Page</div>
  			<div class="panel-body">
  			
					<form role="form" action="${pageContext.request.contextPath}/review/modify" method="post">
 						<input type='hidden' name='page' value='<c:out value="${criteriaVO.page}"/>'>
 						<input type='hidden' name='size' value='<c:out value="${criteriaVO.size}"/>'>
 						<input type='hidden' name="type" value='<c:out value="${criteriaVO.type}"/>'/>
            <input type='hidden' name="keyword" value='<c:out value="${criteriaVO.keyword}"/>'/>						
					
	 					<div class="form-group">
	 						<label>r_Id</label>
	 						<input class="form-control" name="r_id" value='<c:out value="${reviewVO.r_id}"/>' readonly="readonly">
	 					</div>
	 					<div class="form-group">
	 						<label>Title</label>
	 						<input class="form-control" name="r_title" value='<c:out value="${reviewVO.r_title}"/>'>
	 					</div>
	 					<div class="form-group">
	 						<label>Text area</label>
	 						<textarea class="form-control" rows="3" name="r_content"><c:out value="${reviewVO.r_content}"/></textarea>
	 					</div>
	 					<div class="form-group">
	 						<label>Writer</label>
	 						<input class="form-control" name="r_writer" value='<c:out value="${reviewVO.r_writer}"/>' readonly="readonly">
	 					</div>
	 					<div class="form-group">
	 						<label>Registration Date</label>
	 						<input class="form-control" name="r_regDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${reviewVO.r_regDate}"/>' readonly="readonly">
	 					</div>
	 					<div class="form-group">
	 						<label>Modify Date</label>
	 						<input class="form-control" name="r_modDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${reviewVO.r_modDate}"/>' readonly="readonly">
	 					</div>
	 					<button type="submit" data-oper="modify" class="btn btn-default">Modify</button>
	 					<button type="submit" data-oper="delete" class="btn btn-danger">Delete</button>
	 					<button type="submit" data-oper="list" class="btn btn-info">List</button>
					</form>
  			</div>
  		</div>
  	</div>
  </div>
<%@ include file="../includes/footer.jsp" %>