<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>403 - No permission</title>
</head>

<body>
	<div class="row">
		<div class="span6 offset3">
			<div class="alert alert-block alert-warn">
				<a class="close" data-dismiss="alert" href="#">×</a>
				<h3 class="alert-heading">No permission</h3>
				<p>Admin does not allow users to do so.</p>
				<p>
					<a href="javascript:history.back()">Return</a><br />
					<a href="${ctx}/">Return</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>