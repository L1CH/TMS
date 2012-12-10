<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Auto Assign</title>
</head>
<body>
	<div class="row">
		<div class="span6 offset3">
			<c:if test="${(success!=null&&success)||(param.success!=null&&param.success)}">
				<div class="alert alert-block alert-success">
					<a class="close" data-dismiss="alert" href="#">×</a>
					<h4 class="alert-heading">success</h4>
					<c:forEach items="${message.messages}" var="message">
						<p>${message}</p>
					</c:forEach>
				</div>
			</c:if>
			<c:if test="${(success!=null&&!success)||(param.success!=null&&!param.success)}">
				<div class="alert alert-block alert-warn">
					<a class="close" data-dismiss="alert" href="#">×</a>
					<h4 class="alert-heading">failed</h4>
					<c:forEach items="${message.messages}" var="message">
						<p>${message}</p>
					</c:forEach>
				</div>
			</c:if>
		</div>
		<!-- /span6 offset3 -->
	</div>
	<!-- /row -->

	<div class="row">
		<div class="span6 offset3">
			<p>&nbsp;</p>
			<h2 style="text-align: center;">Auto Assign</h2>

			<div id="autoAssignInfo" class="form-horizontal">
				<div class="control-group">
					<label class="control-label">Assigned thesis number:</label>
					<div class="controls">
						<span class="input-medium uneditable-input">${thesisAssignedNum}</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Unassigned thesis number:</label>
					<div class="controls">
						<span class="input-medium uneditable-input">${thesisUnassignedNum}</span>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">Assigned Student number:</label>
					<div class="controls">
						<span class="input-medium uneditable-input">${studentAssignedNum}</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Unassigned Student number:</label>
					<div class="controls">
						<span class="input-medium uneditable-input">${studentUnassignedNum}</span>
					</div>
				</div>

				<div class="form-actions">
					<a class="btn btn-primary" href="${ctx}/admin/autoAssign/start">Auto Assign</a>
				</div>
			</div>

		</div>
		<!-- /span6 offset3 -->
	</div>
	<!-- /row -->

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-teacher_file').addClass('active');
		});
	</script>
</body>
</html>