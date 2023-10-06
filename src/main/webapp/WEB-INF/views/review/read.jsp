<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>

<style>
	.div-title {
		width: 50%;
		float: left;
	}
	.div-content {
		width: 50%;
		float: left;
	}
	
</style>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/reply.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var operForm = $("#operForm");

		$('button[data-oper="modify"]').on("click", function(e) {
			operForm.attr("action", "${pageContext.request.contextPath}/review/modify").submit();
		});

		$('button[data-oper="list"]').on("click", function(e) {
			operForm.find("#r_id").remove();
			operForm.attr("action", "${pageContext.request.contextPath}/review/list").submit();
		});
		

		var rIdValue = '<c:out value="${reviewVO.r_id}"/>';
		var replyUL = $(".chat");

		showList(1);
		function showList(page) {
			reviewReplyService.getList({r_id:rIdValue, page:page || 1}, function(replyCount, list) {
				console.log("replyCount : " + replyCount);
				console.log("list : " + list);
				
				if(page == -1) {
					page = Math.ceil(replyCount / 10.0);
					showList(page);
					return;
				}
				
				var str = "";
				if (list == null || list.length == 0) {
					replyUL.html("");
					return;
				}
				for (var i = 0, len = list.length || 0; i < len; i++) {
					str += "<li class='left clearfix' data-rno='"+list[i].r_r_id+"'>";
					str += "<div class='header'><strong class='primary-font'>" + list[i].r_r_writer + "</strong>";
					str += "<small class='pull-right text-muted'>" + reviewReplyService.displayTime(list[i].r_r_regDate) + "</small></div>";
					str += "<p>" + list[i].r_r_title + "</p></li>";
				}
				replyUL.html(str);
				
				showReviewPage(replyCount);
			});
		}
		
		var page = 1;
		var reviewPageFooter = $(".panel-footer");
		
		function showReviewPage(replyCount) {
			var endNum = Math.ceil(page / 10.0) * 10;
			var startNum = endNum - 9;
			
			var prev = startNum != 1;
			var next = false;
			if(endNum * 10 >= replyCount) {
				endNum = Math.ceil(replyCount / 10.0);
			} else {
				next = true;
			}
			
			var str = "<ul class='pagination pull-right'>"
			
			if(prev) {
				str += "<li class='page-item'><a class='page-link' href='" + (startNum - 1) + "'>Previous</a></li>"
			}
			for(var i = startNum; i <= endNum; i++) {
				var active = page == i ? " active" : "";
				str += "<li class='page-item" + active + "'><a class='page-link' href='" + i + "'>" + i + "</a></li>"
			}
			if(next) {
				str += "<li class='page-item'><a class='page-link' href='" + (endNum + 1) + "'>Next</a></li>"
			}
			str += "</ul>"
			
			console.log(str);
			
			reviewPageFooter.html(str);
		}
		
		reviewPageFooter.on("click", "li a", function(e) {
			e.preventDefault();
			console.log("page click");
			
			var targetPage = $(this).attr("href");
			console.log("targetPage : " + targetPage);
			page = targetPage;
			showList(page);
		});

		
		var modal = $(".modal");
		var modalInputTitle = modal.find("input[name='r_r_title']");
		var modalInputContent = modal.find("input[name='r_r_content']");
		var modalInputWriter = modal.find("input[name='r_r_writer']");
		var modalInputRegDate = modal.find("input[name='r_r_regDate']");

		var modalModifyBtn = $("#modalModifyBtn");
		var modalDeleteBtn = $("#modalDeleteBtn");
		var modalRegisterBtn = $("#modalRegisterBtn");

		$("#addReplyBtn").on("click", function(e) {
			console.log("addReplyBtn");
			modal.find("input").val("");
			modalInputRegDate.closest("div").hide();
			modal.find("button[id != 'modalCloseBtn']").hide();
			modalRegisterBtn.show();

			modal.modal("show");
		});
		
		$("#modalCloseBtn").on("click", function(e) {
			modal.modal("hide");
		});
		
		modalRegisterBtn.on("click", function(e) {
			var reply = {
				r_r_title : modalInputTitle.val(),
				r_r_content : modalInputContent.val(),
				r_r_writer : modalInputWriter.val(),
				r_id : rIdValue
			}
			
			reviewReplyService.add(reply, function(result) {
				alert(result);
				modal.find("input").val("");
				modal.modal("hide");
				
				showList(-1);
			});
		});

		replyUL.on("click", "li", function(e) {
			var r_r_id = $(this).data("r_r_id");
			
			reviewReplyService.read(r_r_id, function(reply) {
				modalInputTitle.val(reply.r_r_title);
				modalInputContent.val(reply.r_r_content)
				modalInputWriter.val(reply.r_r_writer).attr("readonly", "readonly");
				modalInputReplyDate.closest("div").show();
				modalInputRegDate.val(reviewReplyService.displayTime(reply.r_r_redDate)).attr("readonly", "readonly");
				modal.data("r_r_id", review.r_r_id);
				
				modal.find("button[id != 'modalCloseBtn']").hide();
				modalModBtn.show();
				modalRemoveBtn.show();
				
				modal.modal("show");
			});
		});
		
		modalModifyBtn.on("click", function(e) {
			var reply = {r_r_id:modal.data("r_r_id"), reply:modalInputTitle.val()};
			
			reviewReplySerivce.update(reply, function(result) {
				alert(result);
				modal.modal("hide");
				showList(page);
			});
		});
		
		modalDeleteBtn.on("click", function(e) {
			var r_r_id = modal.data("r_r_id");
			
			reviewReplyService.delete(r_r_id, function(result) {
				alert(result);
				modal.modal("hide");
				showList(page);
			});
		});
	});
</script>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Review Detail Page</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Review Detail Page</div>
			<div class="panel-body">

				<div class="form-group">
					<div class="div div-title id">
						<label>R_Id</label>
					</div>
					<div class="div div-title count">
						<label>ReadCount</label>
					</div>
					<div class="div div-content id">
						<input class="form-control" name="r_id" value='<c:out value="${reviewVO.r_id}"/>' readonly="readonly">
					</div>
					<div class="div div-content count">
						<input class="form-control" name="r_writer" value='<c:out value="${reviewVO.r_readCount}"/>' readonly="readonly">
					</div>
				</div>
				<div class="form-group">
					<label>Title</label>
					<input class="form-control" name="r_title" value='<c:out value="${reviewVO.r_title}"/>' readonly="readonly">
				</div>
				<div class="form-group">
					<label>Content</label>
					<textarea class="form-control" rows="3" name="r_content" readonly="readonly"><c:out value="${reviewVO.r_content}" /></textarea>
				</div>
				<div class="form-group">
					<label>Writer</label>
					<input class="form-control" name="r_writer" value='<c:out value="${reviewVO.r_writer}"/>' readonly="readonly">
				</div>
				<c:if test="${reviewVO.r_writer == member.u_id}">
				<button data-oper="modify" class="btn btn-default">Modify</button>
				</c:if>
				<button data-oper="list" class="btn btn-info">List</button>

				<div class='row'>
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-comments fa-fw"></i> Reply
								<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">New Reply</button>
							</div>
							<div class="panel-body">
								<ul class="chat">
								</ul>
								<div class="panel-footer">
								</div>
							</div>
						</div>
					</div>
				</div>

				<form id='operForm' action="${pageContext.request.contextPath}/review/modify" method="get">
					<input type='hidden' id='r_id' name='r_id' value='<c:out value="${reviewVO.r_id}"/>'>
					<input type='hidden' name='page' value='<c:out value="${criteriaVO.page}"/>'>
  				<input type='hidden' name='size' value='<c:out value="${criteriaVO.size}"/>'>
					<input type='hidden' name="type" value='<c:out value="${criteriaVO.type}"/>' />
					<input type='hidden' name="keyword" value='<c:out value="${criteriaVO.keyword}"/>' />
				</form>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal" tabIndex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Reply Modal</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>Title</label><input class="form-control" name='r_r_title' value='New Reply!!!'>
				</div>
				<div class="form-group">
					<label>Content</label><input class="form-control" name='r_r_content' value='New Reply!!!'>
				</div>
				<div class="form-group">
					<label>Replyer</label><input class="form-control" name='r_r_writer' value='${member.u_id }'>
				</div>
				<div class="form-group">
					<label>Reg Date</label><input class="form-control" name='r_r_writer' value=''>
				</div>
			</div>
			<div class="modal-footer">
				<button id='modalModifyBtn' type='button' class='btn btn-warning'>MODIFY</button>
				<button id='modalDeleteBtn' type='button' class='btn btn-danger'>DELETE</button>
				<button id='modalRegisterBtn' type='button' class='btn btn-primary'>REGISTER</button>
				<button id='modalCloseBtn' type='button' class='btn btn-default'>CLOSE</button>
				
			</div>
		</div>
	</div>
</div>

<%@ include file="../includes/footer.jsp"%>