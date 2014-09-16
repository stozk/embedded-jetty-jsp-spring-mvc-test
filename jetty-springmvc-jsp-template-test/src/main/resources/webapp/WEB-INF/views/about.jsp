<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./layout/taglib.jsp" %>

<div class="panel panel-default">
<div class="panel-heading">About</div>
  <div class="panel-body">
  
Server Version: <%= application.getServerInfo() %>
<br> Servlet Version: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %> 
JSP Version: <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %> 

</div></div>