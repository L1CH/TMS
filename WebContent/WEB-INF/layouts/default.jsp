<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Sitemesh标题 -->
<title>TMS: <sitemesh:title /></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />


<link href="${ctx}/static/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${ctx}/static/bootstrap/css/docs.css" rel="stylesheet">

<script type="text/javascript" src="${ctx}/static/jquery/jquery-1.7.2.js"></script>
<script type="text/javascript" src="${ctx}/static/bootstrap/js/bootstrap.js"></script>

<script type="text/javascript" src="${ctx}/static/datatables-1.9.1/js/jquery.dataTables.js"></script>
<link href="${ctx}/static/datatables-1.9.1/css/DT_bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="${ctx}/static/datatables-1.9.1/js/DT_bootstrap.js"></script>

<!-- Sitemesh头部 -->
<sitemesh:head />
</head>

<body>
	<div class="container">
		<div id="header" class="jumbotron masthead" style="margin-top: 20px; margin-bottom: 10px;">
			<h1>T M S</h1>
			<p>Thesis Management System</p>
		</div>

		<div id="menu" class="row">
			<div class="span12">
				<ul id="menu" class="nav nav-pills">
					<li id="li-index"><a href="${ctx}/">Index</a></li>

					<!-- 主页链接 -->
					<!--
				<shiro:hasRole name="ROLE_STUDENT">
					<li id="li-student_index"><a href="${ctx}/student/index">Student主页</a></li>
				</shiro:hasRole>
				<shiro:hasRole name="ROLE_TEACHER">
					<li id="li-teacher_index"><a href="${ctx}/teacher/index">Teacher主页</a></li>
				</shiro:hasRole>
				<shiro:hasRole name="ROLE_ADMIN">
					<li id="li-admin_index"><a href="${ctx}/admin/index">Admin主页</a></li>
				</shiro:hasRole>
				-->
					<!-- /主页链接 -->
					<shiro:guest>
						<li id="li-studentReg"><a href="${ctx}/studentReg">Student Reg</a></li>
					</shiro:guest>

					<!-- Student菜单 -->
					<shiro:hasAnyRoles name="ROLE_STUDENT">
						<li id="li-student_info"><a href="${ctx}/student/info">Info</a></li>

						<li id="li-student_thesis" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Thesis<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/student/thesisManage">Thesis Manage</a></li>
								<li><a href="${ctx}/student/thesisResult">Thesis Result</a></li>
							</ul></li>

						<li id="li-student_file"><a href="${ctx}/student/fileManage">File</a></li>

						<li id="li-student_score" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Score<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/student/midternCheck">Midtern Check</a></li>
								<li><a href="${ctx}/student/finalScore">Final Score</a></li>
							</ul></li>

					</shiro:hasAnyRoles>
					<!-- /Student菜单 -->

					<!-- Teacher菜单 -->
					<shiro:hasRole name="ROLE_TEACHER">
						<li id="li-teacher_info"><a href="${ctx}/teacher/info">Info</a></li>
						<li id="li-teacher_thesis" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Thesis<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/teacher/thesisManage">Thesis Info</a></li>
								<li><a href="${ctx}/teacher/thesisAssign">Thesis Assign</a></li>
								<li><a href="${ctx}/teacher/thesisPreview">Thesis Preview</a></li>
							</ul></li>

						<li id="li-teacher_file" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">File<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/teacher/fileManage">File</a></li>
								<li><a href="${ctx}/teacher/printManage">Print</a></li>
							</ul></li>

						<li id="li-teacher_score" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Score<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/teacher/midternCheck">Midtern Check</a></li>
								<li><a href="${ctx}/teacher/scoreInput">Input</a></li>
								<!--<li><a href="${ctx}/teacher/scoreSplit">分数拆分</a></li>-->
							</ul></li>

					</shiro:hasRole>
					<!-- /Teacher菜单 -->

					<!-- Admin菜单 -->
					<shiro:hasRole name="ROLE_ADMIN">
						<!--<li id="li-admin_info"><a href="${ctx}/admin/info">Info</a></li>-->
						<li id="li-admin_news"><a href="${ctx}/admin/newsManage">News</a></li>
						<li id="li-admin_people" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Users<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/admin/adminManage">Admin</a></li>
								<li><a href="${ctx}/admin/teacherManage">Teacher</a></li>
								<li><a href="${ctx}/admin/teacherDeptManage">Teacher Dept</a></li>
								<li><a href="${ctx}/admin/studentManage">Student</a></li>
								<li><a href="${ctx}/admin/studentMajorClassManage">Major/Class</a></li>
							</ul></li>

						<li id="li-admin_material" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Material<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/admin/paperManage">Thesis Temple</a></li>
								<!--<li><a href="${ctx}/admin/commentTempleManage">Comment Temple</a></li>-->
							</ul></li>

						<li id="li-admin_thesis" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Thesis<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/admin/thesisManage">Thesis</a></li>
								<li><a href="${ctx}/admin/thesisPreview">Preview</a></li>
								<li><a href="${ctx}/admin/thesisAssign">Thesis Assign</a></li>
								<li><a href="${ctx}/admin/studentAssign">Student Assign</a></li>
								<li><a href="${ctx}/admin/autoAssign">Auto Assign</a></li>
							</ul></li>

						<li id="li-admin_system" class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">System<b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${ctx}/admin/dbOperate">DB</a></li>
								<li><a href="${ctx}/admin/view">View</a></li>
								<li><a href="${ctx}/admin/printManage">Print</a></li>
								<li><a href="${ctx}/admin/sysProperty">Properties</a></li>
							</ul></li>
					</shiro:hasRole>
					<!-- /Admin菜单 -->

					<!-- 用户信息、登录注销 -->
					<shiro:guest>
						<li style="float: right;"><a href="${ctx}/login" class="btn" style="background-color: #E6E6E6;">Login</a></li>
						<li style="float: right;"><a>Not Login!</a></li>
					</shiro:guest>
					<shiro:user>
						<li style="float: right;"><a href="${ctx}/logout" class="btn" style="background-color: #E6E6E6;">Logout</a></li>
						<li style="float: right;"><a>Current: <shiro:principal property="name" />&nbsp(<shiro:principal />)&nbsp
						</a></li>
					</shiro:user>
					<!-- /用户信息、登录注销 -->
				</ul>
			</div>
		</div>

		<hr class="soften" style="margin-top: -15px; margin-bottom: 10px;" />

		<div class="row" style="min-height: 400px;">
			<div class="span12">
				<div id="globalMessageRow" class="row">
					<div id="globalMessageSpan" class="span12">
						<!-- 成功消息 -->
						<c:if test="${successMessage!=null}">
							<div class="alert alert-block alert-success">
								<a class="close" data-dismiss="alert" href="#">×</a>
								<h4 class="alert-heading">Success！</h4>
								<p>${successMessage}</p>
							</div>
						</c:if>
						<!-- /成功消息 -->
						<!-- 提示消息 -->
						<c:if test="${infoMessage!=null}">
							<div class="alert alert-block alert-info">
								<a class="close" data-dismiss="alert" href="#">×</a>
								<h4 class="alert-heading">Info</h4>
								<p>${infoMessage}</p>
							</div>
						</c:if>
						<!-- /提示消息 -->
						<!--  Warn消息 -->
						<c:if test="${warnMessage!=null}">
							<div class="alert alert-block">
								<a class="close" data-dismiss="alert" href="#">×</a>
								<h4 class="alert-heading">Warn</h4>
								<p>${warnMessage}</p>
							</div>
						</c:if>
						<!-- / Warn消息 -->
						<!-- 错误消息 -->
						<c:if test="${errorMessage!=null}">
							<div class="alert alert-block alert-error">
								<a class="close" data-dismiss="alert" href="#">×</a>
								<h4 class="alert-heading">Error</h4>
								<p>${errorMessage}</p>
							</div>
						</c:if>
						<!-- /错误消息 -->
					</div>
				</div>
				<!--/row-->
				<div id="bodyRow" class="row">
					<div id="bodyClass" class="span12">
						<!-- Sitemesh正文 -->
						<sitemesh:body />
						<!-- /Sitemesh正文 -->
					</div>
				</div>
				<!--/row-->
			</div>
		</div>
		<!--/row-->

		<hr>

		<div id="footer" style="text-align: center;">
			<p>&copy; Qiyu Li, Junyi Hu 2012</p>
			<p>
				Contact:<a href="mailto:johnnyli@gwu.edu">johnnyli@gwu.edu</a>
			</p>
		</div>

	</div>
	<!--/.container-->
</body>
</html>