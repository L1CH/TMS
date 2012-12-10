<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teacher</title>
</head>
<body>
	<h3>Teacher</h3>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th style="vertical-align: middle;">no.</th>
				<th style="vertical-align: middle;">name</th>
				<th style="vertical-align: middle;">password</th>
				<th style="vertical-align: middle;">Area</th>
				<th style="vertical-align: middle;">Thesis number</th>
				<th style="vertical-align: middle;">phone</th>
				<th style="vertical-align: middle;">mail</th>
				<th style="vertical-align: middle;">operate</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${teachers}" var="teacher" varStatus="st">
				<tr>
					<td>${teacher.loginName}</td>
					<td>${teacher.name}</td>
					<td><span style="display: none;">${teacher.password}</span></td>
					<td>${teacher.dept}</td>
					<td>${teacher.subnum}</td>
					<td>${teacher.tel}</td>
					<td>${teacher.mail}</td>
					<td><a href="${ctx}/admin/teacherManage/del/${teacher.id}" class="btn btn-mini">Del</a>&nbsp;<a
						class="btn btn-mini">Mod</a></td>
				</tr>
			</c:forEach>
			<form name="teacher" action="${ctx}/admin/teacherManage/add" method="post">
				<tr>
					<td><input type="text" class="input-mini" name="loginName" /></td>
					<td><input type="text" class="input-mini" name="name" /></td>
					<td><input type="text" class="input-mini" name="password" /></td>
					<td><select name="dept" class="input-small">
							<c:forEach items="${depts}" var="dept" varStatus="st">
								<option value="${dept.name}">${dept.name}</option>
							</c:forEach>
					</select></td>
					<td><input type="text" class="input-small" name="subnum" /></td>
					<td><input type="text" class="input-small" name="tel" /></td>
					<td><input type="text" class="input-medium" name="mail" /></td>
					<td><input type="submit" class="btn btn-primary btn-mini" value="Add" />&nbsp;<input type="submit"
						class="btn btn-primary btn-mini" value="Mod" /></td>
				</tr>
			</form>
		</tbody>
	</table>

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-admin_people').addClass('active');
			//实现点击表格条目，将内容复制到最后一行
			$('tbody tr:not(:last)').click(function() {
				var num = $('thead tr th').size() - 1;//减去最后operate一列
				for ( var i = 0; i < num; i++) {
					var val = $(this).children(':nth(' + i + ')').text();
					$('tbody tr:last td:nth(' + i + ') input').val(val);
				}
			});
		});
	</script>
</body>
</html>