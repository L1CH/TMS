<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thesis Info</title>
</head>
<body>
	<h2 style="text-align: center;">Thesis Info</h2>
	<p>&nbsp;</p>

	<div class="row">
		<div class="span10 offset1">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th style="vertical-align: middle;">Thesis name</th>
						<th style="vertical-align: middle;">type</th>
						<th style="vertical-align: middle;">property</th>
						<th style="vertical-align: middle;">mode</th>
						<th style="vertical-align: middle;" width="80px">Available major</th>
						<th style="vertical-align: middle;" width="80px">operate</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${thesises}" var="thesis" varStatus="st">
						<tr>
							<td>${thesis.name}</td>
							<td>${thesis.type}</td>
							<td>${thesis.property}</td>
							<td>${thesis.mode}</td>
							<c:if test="${thesis.majorRestrict!=''}">
								<td><a href="#" rel="tooltip" data-original-title="${thesis.majorRestrict}">click to view</a></td>
							</c:if>
							<c:if test="${thesis.majorRestrict==''}">
								<td>no restriction</td>
							</c:if>
							<td><a href="${ctx}/teacher/thesisManage/mod/${thesis.id}" class="btn btn-primary btn-mini">Mod</a>&nbsp;<a
								href="${ctx}/teacher/thesisManage/del/${thesis.id}" class="btn btn-danger btn-mini">Del</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a class="btn btn-info pull-right" data-toggle="collapse" href="#add">AddThesis</a>
		</div>
		<!-- /span8 offset2 -->
	</div>
	<!-- /row -->

	<div class="row">
		<div class="span8 offset2">
			<div id="add" class="collapse in">
				<form:form modelAttribute="thesis" action="${ctx}/teacher/thesisManage/add" cssClass="form-horizontal">
					<div class="control-group">
						<label class="control-label">Thesis name:</label>
						<div class="controls">
							<form:input path="name" />
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">type:</label>
						<div class="controls">
							<form:select path="type" cssClass="input-xlarge">
								<form:option value="type1">type1</form:option>
							</form:select>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">property:</label>
						<div class="controls">
							<form:select path="property" cssClass="input-xlarge">
								<form:option value="property1">property1</form:option>
							</form:select>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">mode:</label>
						<div class="controls">
							<form:select path="mode" cssClass="input-xlarge">
								<form:option value="mode1">mode1</form:option>
							</form:select>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Available major:</label>
						<div class="controls">
							<label class="checkbox"><form:checkboxes items="${majors}" path="majorRes" itemLabel="name"
									itemValue="name" /><input id="majorResAll" type="checkbox">All</input></label>
						</div>
					</div>

					<div class="form-actions">
						<input type="submit" class="btn btn-primary" value="Add" /> <input type="reset" class="btn" value="cancel" />
					</div>

				</form:form>
			</div>
		</div>
		<!-- /span8 offset2 -->
	</div>
	<!-- /row -->

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-teacher_thesis').addClass('active');
			$(".collapse").collapse();
			$("#majorResAll").click(function() {
				if ($(this).attr("checked")) {
					$("input[name='majorRes']").each(function() {
						$(this).attr("checked", true);
					});
				} else {
					$("input[name='majorRes']").each(function() {
						$(this).attr("checked", false);
					});
				}
			});
			//显示tooltip
			$("a[rel='tooltip']").tooltip();
		});
	</script>
</body>
</html>