<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理</title>
    <style type="text/css">
    .layui-nav-item{text-align: center;}
    .nav-item-title,.nav-item-title:hover{text-align: left;background:#393D49;}
    </style> 管理
  </head>
  <body>
  	<ul class="fly-panel-main fly-list-static layui-nav layui-nav-tree  layui-col-md2" lay-filter="menu" style="margin-right: 10px;">
				  <li class="layui-nav-item nav-item-title" style="">
				    <a href="javascript:void(0);"><i class="layui-icon">&#xe857;</i>&nbsp;&nbsp;功能菜单</a>
				  </li>
				  <hr/>
				  <li class="layui-nav-item item-menu">
				    <a href="javascript:void(0);" data-url="./manager/user.do"><i class="layui-icon">&#xe602;</i><span>用户管理</span></a>
				  </li>
				  <li class="layui-nav-item item-menu">
				    <a href="javascript:void(0);" data-url="./manager/course.do"><i class="layui-icon">&#xe602;</i><span>课程管理</span></a>
				  </li>
				  <li class="layui-nav-item item-menu">
				    <a href="javascript:void(0);" data-url="./manager/notice.do"><i class="layui-icon">&#xe602;</i><span>公告管理</span></a>
				  </li>
				  <li class="layui-nav-item item-menu">
				    <a href="javascript:void(0);" data-url="./manager/comment.do"><i class="layui-icon">&#xe602;</i><span>评论审核</span></a>
				  </li>
	 </ul>
	 <div class="layui-col-md9 ">
			<div class="fly-panel">
				<div class="fly-panel-title fly-filter">
					<div class="layui-col-md3">
						<i class="layui-icon" style="">&#xe857;</i>&nbsp;
						<label class="top-menu-title"></label>
					</div>
				</div>
				<div class="fly-panel-main show-section-div layui-col-md12" style="padding: 10px 10px 10px 10px;min-height:620px;background: #fff;">
					<iframe class="layui-col-md12 layui-iframe" src="" style="min-height:600px;border: 1px solid #ccc;border-radius: 3px;"></iframe>
				</div>
			</div>
		</div>
  	<script>
		layui.use('element', function(){
		  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
		});
		$(function(){
			$(".item-menu").click(function(){
				//go on
				var u=$(this).children("a").data("url");
				//set title
				$(".top-menu-title").text($(this).children("a").children("span").text());
				$(".layui-iframe").attr("src",u);
			});
			//def open first menu in user visit.
			$(".item-menu:first").click();
		});
	</script>
  </body>
</html>
