<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>索学家教中心管理系统 - <sitemesh:write property='title' /></title>
<!-- logo -->
<link rel="shortcut icon" href="./static/imgs/logo_icon.png" />
<!-- lib -->
<link rel="stylesheet" href="./static/lib/layui/css/layui.css" />
<link rel="stylesheet" href="./static/css/global.css" />
<link href="./static/css/buttons.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./static/js/jquery.min.js"></script>
<script type="text/javascript" src="./static/lib/layui/layui.all.js"></script>
	
<!-- tools -->
<link rel="stylesheet" href="./static/lib/search-form/search-form.css" />

<!-- Vendor CSS -->
<link href="./static/css/material-design-iconic-font.css"
	rel="stylesheet" type="text/css" />
<!-- CSS -->
<link href="./static/css/login.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="./static/js/jquery.cookie.min.js"></script>


<script type="text/javascript"
	src="./static/lib/search-form/search-form.js"></script>
<script type="text/javascript">
	$(function() {
		//serach
		$(".serach-container>i").click(function() {
			if ($(".serach-container>input").val() == "") {
				return;
			} else {
				location.href = './client/serach.jsp?w=' + $(".serach-container>input").val();
			}
		});
	});
</script>
<style type="text/css">
.bg{
	height: 45%;
	width: 100%;
	position: absolute;
	top: 0;
	left: 0;
	background: #00bcd4;
	z-index: 0;
}
</style>
<sitemesh:write property='head' />
</head>

<body>
	<!-- bg -->
	<div class="bg"></div>
	<!-- top -->
	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<div class="layui-col-xs2">
				<!-- 移动端 -->
				<img src="./static/imgs/logo_lang.png" alt="logo"
					class="fly-top-logo layui-hide-xs ">
				<!-- 完整 -->
				<img src="./static/imgs/logo_small.png" alt="logo"
					class="fly-top-logo-small layui-hide-sm ">
			</div>
			<div class="layui-col-xs6 layui-hide-xs">
				<section class="serach-container"> <input
					class="serach-input" placeholder="课程查询" /> <i
					class="layui-icon serach-icon">&#xe615;</i> </section>
			</div>
			<ul class="layui-nav fly-nav-user layui-hide-xs layui-col-xs4 ">
				<li class="layui-nav-item hvr-underline-from-center" style=""><a
					href="./course/index.do"><i
						class="layui-icon layui-icon-right-nbsp">&#xe68e;</i>首页</a></li>
				<c:if test="${userInfo eq null}">
					<li class="layui-nav-item hvr-underline-from-center" style=""><a
						href="./client/signIn.do"><i
							class="layui-icon layui-icon-right-nbsp">&#xe612;</i>登录</a></li>
					<li class="layui-nav-item hvr-underline-from-center " style=""><a
						href="./client/signUp.do"><i
							class="layui-icon layui-icon-right-nbsp">&#xe64c;</i>注册</a></li>
				</c:if>
				<c:if test="${userInfo ne null}">
				<li class="layui-nav-item hvr-underline-from-center " style=""><a
					href="./client/logOut.jsp"><i
						class="layui-icon layui-icon-right-nbsp fly-btn-logOut">&#xe633;</i>注销</a></li>
				</c:if>
			</ul>
			<ul class="layui-nav fly-nav-user layui-hide-sm layui-col-xs8 "
				style="float: right;">
				<c:if test="${userInfo eq null}">
				<li class="layui-nav-item hvr-underline-from-center" style=""><a
					href="./client/signIn.do"><i
						class="layui-icon layui-icon-right-nbsp">&#xe612;</i>登录</a></li>
				<li class="layui-nav-item hvr-underline-from-center " style=""><a
					href="./client/signUp.do"><i
						class="layui-icon layui-icon-right-nbsp">&#xe64c;</i>注册</a></li>
				</c:if>
				<c:if test="${userInfo ne null}">
				<li class="layui-nav-item hvr-underline-from-center " style=""><a
					href="./client/logOut.jsp"><i
						class="layui-icon layui-icon-right-nbsp fly-btn-logOut">&#xe633;</i>注销</a></li>
				</c:if>
			</ul>
		</div>


	</div>
	<!-- end -->


	<div class="layui-container">
		<sitemesh:write property='body' />
	</div>
</body>
</html>
