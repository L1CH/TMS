<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户登录</title>
</head>

<body>
	<div class="row">
		<div class="span6 offset3">
			<p>&nbsp;</p>
			<!-- DEFAULT_ERROR_KEY_ATTRIBUTE_NAME = "shiroLoginFailure" -->
			<c:if test="${shiroLoginFailure!=null}">
				<div class="alert alert-block alert-error">
					<a class="close" data-dismiss="alert" href="#">×</a>
					<c:choose>
						<c:when test="${shiroLoginFailure=='org.apache.shiro.authc.UnknownAccountException'}">
							<h4 class="alert-heading">User not available!</h4>
						</c:when>
						<c:when test="${shiroLoginFailure=='org.apache.shiro.authc.IncorrectCredentialsException'}">
							<h4 class="alert-heading">username password not match!</h4>
						</c:when>
						<c:otherwise>
							<h4 class="alert-heading">other!</h4>
						</c:otherwise>
					</c:choose>
					<p>Login failed, please relogin!</p>
				</div>
			</c:if>

			<c:if test="${param.unauthorized!=null}">
				<div class="alert alert-block">
					<a class="close" data-dismiss="alert" href="#">×</a>
					<h4 class="alert-heading">Warn!</h4>
					<p>choose correct user account type.</p>
				</div>
			</c:if>

			<form:form id="loginForm" action="${ctx}/login" method="post" cssClass="form-horizontal">
				<div class="control-group">
					<label class="control-label">username:</label>
					<div class="controls">
						<input type="text" id="username" name="username" value="${username}" class="input-xlarge" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">password:</label>
					<div class="controls">
						<input type="password" id="password" name="password" class="input-xlarge" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">type:</label>
					<div class="controls">
						<select id="roleType" name="roleType">
							<option value="student">student</option>
							<option value="teacher">teacher</option>
							<option value="admin">admin</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Auto Login:</label>
					<div class="controls">
						<label class="checkbox"> <input type="checkbox" id="rememberMe" name="rememberMe" />Remember Password
						</label>
					</div>
				</div>
				<div class="form-actions">
					<input type="submit" class="btn btn-primary" value="Login" /> <input type="reset" class="btn" value="Reset" />
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
