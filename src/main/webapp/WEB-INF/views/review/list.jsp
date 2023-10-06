<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>

<script type="text/javascript">
	$(document).ready(function(){
		var result='<c:out value="${result}"/>';
		
		checkModal(result);
		
		history.replaceState({}, null, null);
		
		function checkModal(result) {
			if(result === '' || history.state){
				return;
			}
			if(parseInt(result) > 0) {
				$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
			}
			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function(){
			self.location="${pageContext.request.contextPath}/review/register";
		});
		
		var actionForm = $("#actionForm");
		
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='page']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		$(".move").on("click", function(e){
			e.preventDefault();
			actionForm.append("<input type='hidden' name='r_id' value='"+$(this).attr("href")+"'>");
			actionForm.attr("action", "${pageContext.request.contextPath}/review/read").submit()
		});	
		
		var searchForm = $("#searchForm");
		
		$("#searchForm button").on("click", function(e){
			
			if(!searchForm.find("option:selected").val()){
				alert("타입을 선택하세요");
				return false;
			}
			
			if(!searchForm.find("input[name='keyword']").val()){
				alert("내용을 입력하세요");
				return false;
			}
			
			searchForm.find("input[name='page']").val("1");
			e.preventDefault();
			
			searchForm.submit();
		});
	});
	
</script>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">REVIEW BOARD</h1>
	</div>
	<!-- /.col-lg-12 -->
	
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Board List Page
				<c:if test="${member.u_auth != null}">
				<button id='regBtn' type="button" class="btn btn-xs pull-right">Register New Board</button>
				</c:if>
			</div>
			<!-- /.panel-heading -->
			
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일/수정일</th>
							<th>조회수</th>
						</tr>
					</thead>

					<c:forEach items="${list}" var="reviewVO">
						<tr>
							<td><c:out value="${reviewVO.r_id}" /></td>
							<td><a class='move' href='<c:out value="${reviewVO.r_id}"/>'><c:out value="${reviewVO.r_title}" /></a></td>
							<td><c:out value="${reviewVO.r_writer}" /></td>
							<c:if test="${reviewVO.r_regDate eq reviewVO.r_modDate}">
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${reviewVO.r_regDate}" /></td>
							</c:if>
							<c:if test="${reviewVO.r_regDate ne reviewVO.r_modDate}">
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${reviewVO.r_modDate}" /></td>
							</c:if>
							<td><c:out value="${reviewVO.r_readCount}" /></td>
					</c:forEach>

				</table>

				<div class="row">
					<div class="col-lg-12">

						<form id='searchForm' action="${pageContext.request.contextPath}/review/list" method='get'>
							<input type="hidden" name="page" value="${pageMaker.criVO.page}">
							<input type="hidden" name="size" value="${pageMaker.criVO.size}">
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.criVO.type == null?'selected':''}"/>>--</option>
								<option value="T"
									<c:out value="${pageMaker.criVO.type eq 'T'?'selected':''}"/>>제목</option>
								<option value="C"
									<c:out value="${pageMaker.criVO.type eq 'C'?'selected':''}"/>>내용</option>
								<option value="W"
									<c:out value="${pageMaker.criVO.type eq 'W'?'selected':''}"/>>작성자</option>
								<option value="TC"
									<c:out value="${pageMaker.criVO.type eq 'TC'?'selected':''}"/>>제목/내용</option>
								<option value="TW"
									<c:out value="${pageMaker.criVO.type eq 'TW'?'selected':''}"/>>제목/작성자</option>
								<option value="TWC"
									<c:out value="${pageMaker.criVO.type eq 'TWC'?'selected':''}"/>>제목/작성자/내용</option>
							</select>
							<input type='text' name="keyword" value='<c:out value="${pageMaker.criVO.keyword}"/>' />
							<button class='btn btn-default'>Search</button>
						</form>
					</div>
				</div>

				<div class='pull-right'>
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a href="${pageMaker.startPage - 1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
							<li class="paginate_button ${pageMaker.criVO.page == num ? 'active' : ''}"><a href="${num}">${num}</a></li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage + 1}">Next</a></li>
						</c:if>
					</ul>
				</div>

				<form id="actionForm" action="${pageContext.request.contextPath}/review/list" method="get">
					<input type="hidden" name="page" value="${pageMaker.criVO.page}">
					<input type="hidden" name="size" value="${pageMaker.criVO.size}">
					<input type='hidden' name="type" value='<c:out value="${pageMaker.criVO.type}"/>' />
					<input type='hidden' name="keyword" value='<c:out value="${pageMaker.criVO.keyword}"/>' />
				</form>

				<!-- Modal 창 추가 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">처리 결과</h4>
							</div>
							<div class="modal-body">처리가 완료되었습니다.</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- /.panel-body -->
			
		</div>
		<!-- /.panel -->
		 
	</div>
	<!-- /.col-lg-6 -->
	
</div>
<!-- /.row -->


<%@ include file="../includes/footer.jsp" %>