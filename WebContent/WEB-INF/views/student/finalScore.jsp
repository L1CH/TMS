<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Score</title>
</head>
<body>
	<div class="row">
		<div class="span6 offset3">
			<h2 align="center">Student Score</h2>
			<p>&nbsp</p>

			<form:form id="score" modelAttribute="student" method="post" cssClass="form-horizontal">
				<!-- ID -->
				<form:hidden path="id" />

				<div class="control-group">
					<label class="control-label">no.:</label>
					<div class="controls">
						<form:input path="loginName" cssClass="input-large uneditable-input" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">name:</label>
					<div class="controls">
						<form:input path="name" cssClass="input-large uneditable-input" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Thesis name:</label>
					<div class="controls">
						<span type="text" id="thesisName" class="input-large uneditable-input">${thesis.name}</span>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">Total:</label>
					<div class="controls">
						<div class="input-append">
							<form:input path="grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
							<span class="add-on">/100</span>
						</div>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label"></label>
					<div class="controls">
						<a class="btn btn-info" data-toggle="collapse" href="#detail">Click for details</a>
					</div>
				</div>

				<div id="detail" class="collapse in">
					<div class="control-group">
						<label class="control-label">Thesis (paper)quantity:</label>
						<div class="controls">
							<div class="input-append">
								<form:input path="zd1grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
								<span class="add-on">/100</span>
							</div>
							<span class="help-inline">ratio:0.15</span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Presentation:</label>
						<div class="controls">
							<div class="input-append">
								<form:input path="zd2grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
								<span class="add-on">/100</span>
							</div>
							<span class="help-inline">ratio:0.05</span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Solving:</label>
						<div class="controls">
							<div class="input-append">
								<form:input path="zd3grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
								<span class="add-on">/100</span>
							</div>
							<span class="help-inline">ratio:0.05</span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">attitude:</label>
						<div class="controls">
							<div class="input-append">
								<form:input path="zd4grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
								<span class="add-on">/100</span>
							</div>
							<span class="help-inline">ratio:0.05</span>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Thesis (paper) Quantity:</label>
						<div class="controls">
							<div class="input-append">
								<form:input path="py1grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
								<span class="add-on">/100</span>
							</div>
							<span class="help-inline">ratio:0.2</span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">quantity:</label>
						<div class="controls">
							<div class="input-append">
								<form:input path="py2grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
								<span class="add-on">/100</span>
							</div>
							<span class="help-inline">ratio:0.1</span>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Oral Presentation:</label>
						<div class="controls">
							<div class="input-append">
								<form:input path="db1grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
								<span class="add-on">/100</span>
							</div>
							<span class="help-inline">ratio:0.1</span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">Answer Skill:</label>
						<div class="controls">
							<div class="input-append">
								<form:input path="db2grade" cssClass="input-mini uneditable-input" cssStyle="text-align: right;" />
								<span class="add-on">/100</span>
							</div>
							<span class="help-inline">ratio:0.3</span>
						</div>
					</div>
				</div>

			</form:form>
		</div>
	</div>

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-student_score').addClass('active');
			$(".collapse").collapse();
		});
	</script>
</body>
</html>