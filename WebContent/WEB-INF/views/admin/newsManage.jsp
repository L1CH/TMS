<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Message</title>
</head>
<body>
	<h3>Message</h3>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th style="vertical-align: middle;">Message Title</th>
				<th style="vertical-align: middle;">Message Body</th>
				<th style="vertical-align: middle;">Target</th>
				<th style="vertical-align: middle;">operate</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${newses}" var="news" varStatus="st">
				<tr>
					<td>${news.title}</td>
					<td>${news.message}</td>
					<td>${news.receiver}</td>
					<td><a href="${ctx}/admin/newsManage/del/${news.id}" class="btn btn-mini">Del</a></td>
				</tr>
			</c:forEach>
			<form name="news" action="${ctx}/admin/newsManage/add" method="post">
				<tr>
					<td><input type="text" class="input-small" name="title" /></td>
					<td><input type="text" class="input-xxlarge" name="message" /></td>
					<td><select class="input-small" name="receiver"><option value="all">所有人</option>
							<option value="student">Student</option>
							<option value="teacher">Teacher</option>
							<option value="admin">Admin</option>
					</select></td>
					<td><input type="submit" class="btn btn-primary btn-mini" value="Add" /></td>
				</tr>
			</form>
		</tbody>
	</table>

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-admin_news').addClass('active');
			//实现点击表格条目，将内容复制到最后一行
			$('tbody tr:not(:last)').click(function() {
				var num = $('thead tr th').size() - 1;//减去最后operate一列
				for ( var i = 0; i < num; i++) {
					var val = $(this).children(':nth(' + i + ')').text();
					$('tbody tr:last td:nth(' + i + ') input').val(val);
				}
			})
		});
	</script>
</body>
</html>