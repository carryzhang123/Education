<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>系统公告</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="layui-col-md12">
		<div class="fly-panel">
			<!-- 公告 -->
			<h3 class="fly-panel-title">
				<i class="layui-icon">&#xe645;</i>
				<label class="notice-title">${notice.title}</label>
			</h3>
			<div class="fly-panel-main layui-form  ">
				<div class="layui-text">
					${notice.info}
				</div>
				<hr/>
				发布:${notice.user.userName} 于 ${notice.publishTime} 发表
			</div>
		</div>
	</div>
	
  </body>
</html>
