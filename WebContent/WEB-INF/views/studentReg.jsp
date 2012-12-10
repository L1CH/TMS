<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student注册</title>
</head>
<body>
	<div class="row">
		<div class="span6 offset3">
			<h2 align="center">Student</h2>
			<p>&nbsp</p>

			<c:if test="${success!=null&&success}">
				<div class="alert alert-block alert-success">
					<a class="close" data-dismiss="alert" href="#">×</a>
					<h4 class="alert-heading">success</h4>
				</div>
			</c:if>
			<c:if test="${success!=null&&!success}">
				<div class="alert alert-block alert-error">
					<a class="close" data-dismiss="alert" href="#">×</a>
					<h4 class="alert-heading">fail</h4>
				</div>
			</c:if>

			<form:form id="info" modelAttribute="student" method="post" cssClass="form-horizontal">
				<!-- ID -->
				<form:hidden path="id" />

				<div class="control-group">
					<label class="control-label">no.:</label>
					<div class="controls">
						<form:input path="loginName" cssClass="input-xlarge" />
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">password:</label>
					<div class="controls">
						<form:password path="password" cssClass="input-xlarge" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">password again:</label>
					<div class="controls">
						<input type="password" id="rePassword" name="rePassword" class="input-xlarge">
						<div id="password_error" class="alert alert-block alert-error" style="display: none;">
							<p>passowrd not match</p>
						</div>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">name:</label>
					<div class="controls">
						<form:input path="name" cssClass="input-xlarge" />
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">gender:</label>
					<div class="controls">
						<form:select path="gender" cssClass="input-xlarge">
							<form:option value="男">Male</form:option>
							<form:option value="女">Female</form:option>
						</form:select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">phone:</label>
					<div class="controls">
						<form:input path="phone" cssClass="input-xlarge" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">mail:</label>
					<div class="controls">
						<form:input path="email" cssClass="input-xlarge" />
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">major:</label>
					<div class="controls">
						<form:select path="major" cssClass="input-xlarge">
							<form:options items="${majors}" itemLabel="name" itemValue="name" />
						</form:select>
					</div>
				</div>

				<div class="control-group">
					<label class="control-label">class:</label>
					<div class="controls">
						<form:select path="stuClass" cssClass="input-xlarge">
							<form:options items="${stuClasses}" itemLabel="name" itemValue="name" />
						</form:select>
					</div>
				</div>

				<div class="form-actions">
					<input type="submit" class="btn btn-primary" value="Reg" /> <input type="reset" class="btn" value="reset" />
				</div>

			</form:form>
		</div>
	</div>

	<!-- Javascript -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#li-studentReg').addClass('active');
			//校验两次password
			$('#rePassword').keyup(function() {
				if ($('#rePassword').val() != $('#password').val())
					$('#password_error').show();
				else
					$('#password_error').hide();
			});
		});
	</script>
</body>
</html>