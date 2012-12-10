<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Thesis Preview</title>
</head>
<body>
	<h2 style="text-align: center;">Student Thesis Preview</h2>
	<p>&nbsp;</p>

	<div class="row">
		<div class="span10 offset1">
			<c:if test="${(success!=null&&success)||(param.success!=null&&param.success)}">
				<div class="alert alert-block alert-success">
					<a class="close" data-dismiss="alert" href="#">×</a>
					<h4 class="alert-heading">success</h4>
				</div>
			</c:if>
			<c:if test="${(success!=null&&!success)||(param.success!=null&&!param.success)}">
				<div class="alert alert-block alert-warn">
					<a class="close" data-dismiss="alert" href="#">×</a>
					<h4 class="alert-heading">failed</h4>
				</div>
			</c:if>

			<table id="table" class="table table-bordered">
				<thead>
					<tr>
						<th style="vertical-align: middle;">Thesis name</th>
						<th style="vertical-align: middle;">Order</th>
						<th style="vertical-align: middle;">Student name</th>
						<th style="vertical-align: middle;" width="100px">operate</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${thesises}" var="thesis" varStatus="st">
						<tr>
							<td>${thesis.name}</td>
							<td>${orders[st.index]}</td>
							<td>${students[st.index].name}</td>
							<c:if test="${assigns[st.index]=='0'}">
								<td><a href="${ctx}/teacher/thesisPreview/assign/${thesis.id}/${students[st.index].id}"
									class="btn btn-primary btn-mini">Pre-Assign</a></td>
							</c:if>
							<c:if test="${assigns[st.index]!='0'}">
								<td>${assigns[st.index]}</td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- /span8 offset2 -->
	</div>
	<!-- /row -->

	<!-- Javascript -->
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#li-teacher_thesis').addClass('active');
							var sDom = "<'row'<'span5'l><'span5'f>r>t<'row'<'span5'i><'span5'p>>";
							var sPaginationType = "bootstrap";
							var sUrl = "${ctx}/static/datatables-1.9.1/zh_CN.txt";
							$('#table').dataTable({
								"sDom" : sDom,
								"sPaginationType" : sPaginationType,
								"oLanguage" : {
									"sUrl" : sUrl
								},
								"aaSorting" : [ [ 0, "asc" ], [ 1, "asc" ] ]
							});
						});
	</script>
</body>
</html>