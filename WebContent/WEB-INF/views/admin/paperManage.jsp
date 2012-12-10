<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Paper Template</title>
</head>
<body>
	<div class="row">
		<div class="span6 offset3">
			<h3 style="text-align: center;">Paper Template</h3>
			<p>Notice: don't upload file with blank</p>

			<table class="table table-bordered">
				<thead>
					<tr>
						<th colspan="2" style="vertical-align: middle;">Filename</th>
						<th style="vertical-align: middle;">operate</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${papers}" var="paper" varStatus="st">
						<tr>
							<form:url value="${ctx}/file/paper/${paper.filename}" var="url" htmlEncoding="true" />
							<td colspan="2"><a href="${ctx}/file/paper/${paper.filename}">${paper.description}</a></td>
							<td><a href="${ctx}/admin/paperManage/del/${paper.id}" class="btn btn-mini">Del</a></td>
						</tr>
					</c:forEach>
					<form action="${ctx}/admin/paperManage/add" method="post" enctype="multipart/form-data">
						<tr>
							<td><input type="text" class="input-medium" name="description" /></td>
							<td><input type="file" class="input-medium" name="uploadFile" /></td>
							<td><input type="submit" class="btn btn-primary btn-mini" value="Add" /></td>
						</tr>
					</form>
				</tbody>
			</table>
		</div>
		<!-- /span6 offset3 -->
	</div>
	<!-- /row -->

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-admin_material').addClass('active');
		});
	</script>
</body>
</html>