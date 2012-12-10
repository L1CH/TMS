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
	<div class="row">
		<div class="span6 offset3">
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
		</div>
		<!-- /span6 offset3 -->
	</div>
	<!-- /row -->

	<p>&nbsp;</p>
	<h2 style="text-align: center;">ModThesis信息</h2>

	<div class="row">
		<div class="span8 offset2">
			<form:form modelAttribute="thesis" cssClass="form-horizontal">

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
					<input type="submit" class="btn btn-primary" value="Mod" />&nbsp;<input type="reset" class="btn" value="Reset" />&nbsp;<a
						href="${ctx}/admin/thesisManage" class="btn btn-inverse">Return</a>
				</div>

			</form:form>
		</div>
		<!-- /span8 offset2 -->
	</div>
	<!-- /row -->

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-admin_thesis').addClass('active');
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
		});
	</script>
</body>
</html>