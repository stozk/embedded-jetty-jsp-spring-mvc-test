<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ligature-symbols.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flat-ui.css">

<script
	src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/js/jquery-migrate-1.2.1.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap-hover-dropdown.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>
<body>


	<tilesx:useAttribute name="current" />
	<br>
	<div class="container">

		<!-- Static navbar -->
		<div class="navbar navbar-default" data-role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<spring:url value="/"/>"> Docker Registry UI <!-- <span
						class="lsf-icon" title="sitemap"></span> --></a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">

						<!-- Home -->
						<li class="${current == 'index' ? 'active' : ''}"><a
							href="<spring:url value="/"/>"><span class="lsf-icon"
								title="home"></span> Home</a></li>

						<!-- Repositories -->
						<li class="dropdown ${current == 'repositories' ? 'active' : ''}"><a
							href="#" class="dropdown-toggle" data-toggle="dropdown"
							data-hover="dropdown" data-delay="1000"><span
								class="lsf-icon" title="drawer"></span> Repositories <b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<spring:url value="/repositories.html"/>"><span
										class="lsf-icon" title="folder"></span> Repositories</a></li>
								<li><a href="<spring:url value="/repositories.html"/>"><span
										class="lsf-icon" title="folder"></span> Repositories</a></li>
								<li><a href="<spring:url value="/repositories.html"/>"><span
										class="lsf-icon" title="folder"></span> Repositories</a></li>
								<li><a href="<spring:url value="/repositories.html"/>"><span
										class="lsf-icon" title="folder"></span> Repositories</a></li>
								<li><a href="<spring:url value="/repositories.html"/>"><span
										class="lsf-icon" title="folder"></span> Repositories</a></li>
								
								

								<!-- About -->
							</ul></li>
						<li class="${current == 'about' ? 'active' : ''}"><a
							href="<spring:url value="/about.html"/>"><span
								class="lsf-icon" title="album"></span> About</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</div>

		<tiles:insertAttribute name="body" />
		<br> <br>
		<div align="center">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>