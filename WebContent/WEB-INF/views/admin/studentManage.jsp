<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student</title>
</head>
<body>
	<h3>Student</h3>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th style="vertical-align: middle;">no.</th>
				<th style="vertical-align: middle;">name</th>
				<th style="vertical-align: middle;">password</th>
				<th style="vertical-align: middle;">gender</th>
				<th style="vertical-align: middle;">major</th>
				<th style="vertical-align: middle;">class</th>
				<th style="vertical-align: middle;">phone</th>
				<th style="vertical-align: middle;">mail</th>
				<th style="vertical-align: middle;">grade</th>
				<th style="vertical-align: middle;">thesis id</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${students}" var="student" varStatus="st">
				<tr>
					<td>${student.loginName}</td>
					<td>${student.name}</td>
					<td><span style="display: none;">${student.password}</span></td>
					<td>${student.gender}</td>
					<td>${student.major}</td>
					<td>${student.stuClass}</td>
					<td>${student.phone}</td>
					<td>${student.email}</td>
					<td>${student.credit}</td>
					<td>${student.thesisId}</td>
					<td><a href="${ctx}/admin/studentManage/del/${student.id}" class="btn btn-mini">Del</a>&nbsp;<a
						class="btn btn-mini">Mod</a></td>
				</tr>
			</c:forEach>
			<form name="student" action="${ctx}/admin/studentManage/add" method="post">
				<tr>
					<td><input type="text" class="input-mini" name="loginName" /></td>
					<td><input type="text" class="input-mini" name="name" /></td>
					<td><input type="text" class="input-mini" name="password" /></td>
					<td><select name="gender" class="input-small">
							<option value="男">Male</option>
							<option value="女">Female</option>
					</select></td>
					<td><select name="major" class="input-small">
							<c:forEach items="${studentMajors}" var="major" varStatus="st1">
								<option value="${major.name}">${major.name}</option>
							</c:forEach>
					</select></td>
					<td><select name="stuClass" class="input-small">
							<c:forEach items="${studentClasss}" var="stuClass" varStatus="st2">
								<option value="${stuClass.name}">${stuClass.name}</option>
							</c:forEach>
					</select></td>
					<td><input type="text" class="input-small" name="phone" /></td>
					<td><input type="text" class="input-small" name="email" /></td>
					<td><input type="text" class="input-medium" name="credit" /></td>
					<td><select name="thesisId" class="input-small">
							<c:forEach items="${thesises}" var="thesis" varStatus="st2">
								<option value="${thesis.id}">${thesis.id}</option>
							</c:forEach>
					</select></td>
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
			})
		});
	</script>
</body>
</html>