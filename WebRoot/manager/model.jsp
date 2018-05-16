<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("webApp", basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <!-- UI渲染 -->
    <title>系统管理 - <sitemesh:write property='title' /></title>
	<!-- logo -->
	<link rel="shortcut icon" href="./static/imgs/logo_icon.png" />
    <script src="https://cdn.bootcss.com/jquery/1.11.0/jquery.min.js"></script>
    <!-- Tools -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <link rel="stylesheet" href="./static/lib/layui/css/layui.css" />
	<script type="text/javascript" src="./static/lib/layui/layui.all.js"></script>
    

    <script type="text/javascript">
    //public config
		var webApp = "${webApp}";
    </script>
	<sitemesh:write property='head' />
  </head>
  
  <body>
		<sitemesh:write property='body' />
  </body>
</html>
