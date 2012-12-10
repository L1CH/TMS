<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
	<c:if test="${success!=null&&success}">
		<div class="alert alert-block alert-success">
			<a class="close" data-dismiss="alert" href="#">×</a>
			<h4 class="alert-heading">success</h4>
		</div>
	</c:if>
	<c:if test="${success!=null&&!success}">
		<div class="alert alert-block alert-error">
			<a class="close" data-dismiss="alert" href="#">×</a>
			<h4 class="alert-heading">failed</h4>
		</div>
	</c:if>

	<c:if test="${studentOrders.size()>0}">
		<h3 align="center">Student Preview</h3>
		<table id="studentTable" class="table table-bordered">
			<thead>
				<tr>
					<td>Order</td>
					<td>Thesis name</td>
					<td>Advisor</td>
					<td>type</td>
					<td>property</td>
					<td>mode</td>
					<td>Selected Times</td>
					<td style="width: 140px;">operate</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${studentThesises}" var="studentThesis" varStatus="st">
					<tr>
						<c:choose>
							<c:when test="${studentOrders[st.index]==1}">
								<td class="thesisOrder">First</td>
							</c:when>
							<c:when test="${studentOrders[st.index]==2}">
								<td class="thesisOrder">Second</td>
							</c:when>
							<c:when test="${studentOrders[st.index]==3}">
								<td class="thesisOrder">Third</td>
							</c:when>
							<c:otherwise>
								<td>Error</td>
							</c:otherwise>
						</c:choose>
						<td>${studentThesis.name}</td>
						<td>${studentThesis.teacher.name}</td>
						<td>${studentThesis.type}</td>
						<td>${studentThesis.property}</td>
						<td>${studentThesis.mode}</td>
						<td>${studentCounts[st.index]}</td>
						<td><a class="btn btn-primary btn-mini" href="${ctx}/student/thesisManage/del/${studentThesis.id}">Del</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>

	<c:if test="${studentOrders.size()<3}">
		<br />
		<h3 align="center">Thesis Choose</h3>

		<table id="table" class="table table-bordered">
			<thead>
				<tr>
					<td>Thesis name</td>
					<td>Advisor</td>
					<td>type</td>
					<td>property</td>
					<td>mode</td>
					<td>Selected times</td>
					<td style="width: 140px;">operate</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${thesises}" var="thesis" varStatus="st">
					<tr>
						<td>${thesis.name}</td>
						<td>${thesis.teacher.name}</td>
						<td>${thesis.type}</td>
						<td>${thesis.property}</td>
						<td>${thesis.mode}</td>
						<td>${counts[st.index]}</td>
						<form action="${ctx}/student/thesisManage/choose/${thesis.id}" method="POST">
							<td><select style="width: 90px" name="order"><option value="1">First</option>
									<option value="2">Second</option>
									<option value="3">Third</option></select><input type="submit" class="btn btn-primary btn-mini" value="Select"></input></td>
						</form>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-student_thesis').addClass('active');
			$('#table').dataTable({
				"sDom" : "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
				"sPaginationType" : "bootstrap",
				"oLanguage" : {
					"sUrl" : "${ctx}/static/datatables-1.9.1/zh_CN.txt"
				}
			});
			$('.thesisOrder').each(function(){
				var text = $(this).text();
				if(text=="First")
					$('select').find('option[value=1]').remove();
				if(text=="Second")
					$('select').find('option[value=2]').remove();
				if(text=="Third")
					$('select').find('option[value=3]').remove();
			});
		});
	</script>
</body>
</html>