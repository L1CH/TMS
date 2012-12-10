<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Warn</title>
</head>
<body>
	<div class="row">
		<div class="span8 offset2">
			<h2 style="text-align: center;">File</h2>


			<table class="table table-bordered">
				<thead>
					<tr>
						<th style="vertical-align: middle;" width="64px">type</th>
						<th style="vertical-align: middle;">Filename</th>
						<th style="vertical-align: middle;" width="80px">operate</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="vertical-align: middle;">abstract</td>
						<c:choose>
							<c:when test="${kt!=''}">
								<td style="vertical-align: middle;"><a href="${ctx}/file/ktup/${kt}">${kt}</a></td>
								<td style="vertical-align: middle;"><a href="${ctx}/student/fileManage/del/kt"
									class="btn btn-danger btn-mini">Del</a></td>
							</c:when>
							<c:otherwise>
								<form action="${ctx}/student/fileManage/add/kt" method="post" enctype="multipart/form-data">
									<td style="vertical-align: middle;"><input type="file" class="input-medium" name="ktup" /></td>
									<td style="vertical-align: middle;"><input type="submit" class="btn btn-primary btn-mini" value="Upload" /></td>
								</form>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td style="vertical-alizgn: middle;">schedule</td>
						<c:choose>
							<c:when test="${rws!=''}">
								<td style="vertical-align: middle;"><a href="${ctx}/file/rwsup/${rws}">${rws}</a></td>
								<td style="vertical-align: middle;"><a href="${ctx}/student/fileManage/del/rws"
									class="btn btn-danger btn-mini">Del</a></td>
							</c:when>
							<c:otherwise>
								<form action="${ctx}/student/fileManage/add/rws" method="post" enctype="multipart/form-data">
									<td style="vertical-align: middle;"><input type="file" class="input-medium" name="rwsup" /></td>
									<td style="vertical-align: middle;"><input type="submit" class="btn btn-primary btn-mini" value="Upload" /></td>
								</form>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td style="vertical-align: middle;">reference</td>
						<c:choose>
							<c:when test="${trans!=''}">
								<td style="vertical-align: middle;"><a href="${ctx}/file/transup/${trans}">${trans}</a></td>
								<td style="vertical-align: middle;"><a href="${ctx}/student/fileManage/del/trans"
									class="btn btn-danger btn-mini">Del</a></td>
							</c:when>
							<c:otherwise>
								<form action="${ctx}/student/fileManage/add/trans" method="post" enctype="multipart/form-data">
									<td style="vertical-align: middle;"><input type="file" class="input-medium" name="transup" /></td>
									<td style="vertical-align: middle;"><input type="submit" class="btn btn-primary btn-mini" value="Upload" /></td>
								</form>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td style="vertical-align: middle;">paper</td>
						<c:choose>
							<c:when test="${thesis!=''}">
								<td style="vertical-align: middle;"><a href="${ctx}/file/thesisup/${thesis}">${thesis}</a></td>
								<td style="vertical-align: middle;"><a href="${ctx}/student/fileManage/del/thesis"
									class="btn btn-danger btn-mini">Del</a></td>
							</c:when>
							<c:otherwise>
								<form action="${ctx}/student/fileManage/add/thesis" method="post" enctype="multipart/form-data">
									<td style="vertical-align: middle;"><input type="file" class="input-medium" name="thesisup" /></td>
									<td style="vertical-align: middle;"><input type="submit" class="btn btn-primary btn-mini" value="Upload" /></td>
								</form>
							</c:otherwise>
						</c:choose>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- /span8 offset2 -->
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