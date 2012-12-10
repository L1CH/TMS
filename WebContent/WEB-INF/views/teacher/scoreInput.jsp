<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
	<ul id="tab" class="nav nav-tabs">
		<li><a href="#zhidao" data-toggle="tab">Advisor</a></li>
		<li><a href="#pingyue" data-toggle="tab">Reviewer</a></li>
		<li><a href="#dabian" data-toggle="tab">Oral Defense Team</a></li>
	</ul>
	<div id="tab-content" class="tab-content">
		<div id="zhidao" class="tab-pane fade active in">
			<h2>Status</h2>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>no.</th>
						<th>name</th>
						<th>Thesis name</th>
						<th>Status of Advisor</th>
						<th>Status of Reviewer</th>
						<th>Status of Oral Defense Team</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${students}" var="student" varStatus="st">
						<tr>
							<td>${student.loginName}</td>
							<td>${student.name}</td>
							<td>${studentsThesises[st.index].name}</td>
							<td>${studentsZhidaoScoreStatuses[st.index]}</td>
							<td>${studentsPingyueScoreStatuses[st.index]}</td>
							<td>${studentsDabianScoreStatuses[st.index]}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<h2>Score Input</h2>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th rowspan="2" style="vertical-align: middle;">no.</th>
						<th rowspan="2" style="vertical-align: middle;">name</th>
						<th rowspan="2" style="vertical-align: middle;">Thesis name</th>
						<th>Thesis (paper) quantity</th>
						<th>Expression</th>
						<th>Solving</th>
						<th>Attitude</th>
						<th rowspan="2" style="vertical-align: middle;">operate</th>
					</tr>
					<tr>
						<th>ratio:0.15</th>
						<th>ratio:0.05</th>
						<th>ratio:0.05</th>
						<th>ratio:0.05</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${students}" var="student" varStatus="st">
						<form name="student" action="${ctx}/teacher/scoreInput/zhidao/update/${student.loginName}" method="post">
							<tr>
								<td>${student.loginName}</td>
								<td>${student.name}</td>
								<td>${studentsThesises[st.index].name}</td>
								<td><input type="text" name="zd1grade" value="${student.zd1grade}" class="input-mini" /></td>
								<td><input type="text" name="zd2grade" value="${student.zd2grade}" class="input-mini" /></td>
								<td><input type="text" name="zd3grade" value="${student.zd3grade}" class="input-mini" /></td>
								<td><input type="text" name="zd4grade" value="${student.zd4grade}" class="input-mini" /></td>
								<td><input type="submit" class="btn btn-primary btn-mini" value="Mod" />&nbsp;<a
									href="${ctx}/teacher/pingyuInput/zhidao/${student.loginName}" class="btn btn-primary btn-mini">评语</a></td>
							</tr>
						</form>
					</c:forEach>
				</tbody>
			</table>
		</div>

		<div id="pingyue" class="tab-pane fade">
			<h2>Reviewer</h2>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th rowspan="2" style="vertical-align: middle;">no.</th>
						<th rowspan="2" style="vertical-align: middle;">name</th>
						<th rowspan="2" style="vertical-align: middle;">Thesis name</th>
						<th>Thesis (paper) Quantity</th>
						<th>Expression quantity</th>
						<th rowspan="2" style="vertical-align: middle;">operate</th>
					</tr>
					<tr>
						<th>ratio:0.2</th>
						<th>ratio:0.1</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pingyueStudents}" var="student" varStatus="st">
						<tr>
							<td>${student.loginName}</td>
							<td>${student.name}</td>
							<td>${pingyueStudentsThesises[st.index].name}</td>
							<td>${student.py1grade}</td>
							<td>${student.py2grade}</td>
							<td><a href="${ctx}/teacher/scoreInput/pingyue/del/${student.loginName}" class="btn btn-mini">Del</a>&nbsp;<a
								href="${ctx}/teacher/pingyuInput/pingyue/${student.loginName}" class="btn btn-primary btn-mini">评语</a></td>
						</tr>
					</c:forEach>
					<form name="student" action="${ctx}/teacher/scoreInput/pingyue/add" method="post">
						<tr>
							<td><input type="text" class="input-mini" name="loginName" /></td>
							<td></td>
							<td></td>
							<td><input type="text" class="input-mini" name="py1grade" /></td>
							<td><input type="text" class="input-mini" name="py2grade" /></td>
							<td><input type="submit" class="btn btn-primary btn-mini" value="Add" /></td>
						</tr>
					</form>
				</tbody>
			</table>
		</div>

		<div id="dabian" class="tab-pane fade">
			<h2>Oral Defense Team</h2>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th rowspan="2" style="vertical-align: middle;">no.</th>
						<th rowspan="2" style="vertical-align: middle;">name</th>
						<th rowspan="2" style="vertical-align: middle;">Thesis name</th>
						<th>Oral Presentation</th>
						<th>Answer Skill</th>
						<th rowspan="2" style="vertical-align: middle;">operate</th>
					</tr>
					<tr>
						<th>ratio:0.1</th>
						<th>ratio:0.3</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${dabianStudents}" var="student" varStatus="st">
						<tr>
							<td>${student.loginName}</td>
							<td>${student.name}</td>
							<td>${dabianStudentsThesises[st.index].name}</td>
							<td>${student.db1grade}</td>
							<td>${student.db2grade}</td>
							<td><a href="${ctx}/teacher/scoreInput/dabian/del/${student.loginName}" class="btn btn-mini">Del</a>&nbsp;<a
								href="${ctx}/teacher/pingyuInput/dabian/${student.loginName}" class="btn btn-primary btn-mini">评语</a></td>
						</tr>
					</c:forEach>
					<form name="student" action="${ctx}/teacher/scoreInput/dabian/add" method="post">
						<tr>
							<td><input type="text" class="input-mini" name="loginName" /></td>
							<td></td>
							<td></td>
							<td><input type="text" class="input-mini" name="db1grade" /></td>
							<td><input type="text" class="input-mini" name="db2grade" /></td>
							<td><input type="submit" class="btn btn-primary btn-mini" value="Add" /></td>
						</tr>
					</form>
				</tbody>
			</table>
		</div>
	</div>

	<h3>Level</h3>
	<table class="table table-bordered">
		<tr>
			<td>A</td>
			<td>B</td>
			<td>C</td>
			<td>D</td>
			<td>F</td>
		</tr>
		<tr>
			<td>85～100</td>
			<td>75～84.9</td>
			<td>67～74.9</td>
			<td>60～66.9</td>
			<td>＜60</td>
		</tr>
	</table>

	<div style="visibility: hidden;">
		<span id="tabChoose">${tabChoose}</span>
	</div>

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-teacher_score').addClass('active');

			var tabChoose = $('#tabChoose').text();
			if (tabChoose == 'pingyue')
				$('#tab a:nth(1)').tab('show');
			else if (tabChoose == 'dabian')
				$('#tab a:nth(2)').tab('show');
			else
				$('#tab a:nth(0)').tab('show');
		});
	</script>
</body>
</html>