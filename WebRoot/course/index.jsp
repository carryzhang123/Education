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

<title>课程</title>
<style type="text/css">
.layui-tab {
	background: #FFF;
}

.show-notice {
	margin-left: 15px;
	
}

.show-notice a {
	color: #01AAED;
}

.serach-menu-div {
	height: 50px;
}

.serach-menu-div>.layui-col-md4 {
	margin-top: 8px;
}
.fly-panel-title>label :FIRST-CHILD {
	float: left;
}
.layui-tab{
	text-align: center;
}
.btn-go-login{
	margin: 0px auto;
}
</style>
<link rel="stylesheet" href="./static/lib/liMarquee/css/liMarquee.css">
<script type="text/javascript"
	src="./static/lib/liMarquee/js/jquery.liMarquee.js"></script>
</head>

<body>
	<div class="layui-col-md12">
		<div class="fly-panel">
			<!-- 公告 -->
			<div class="fly-panel-title">
				<h3 class="layui-col-md1" style="float: left;">
					<label><i class="layui-icon">&#xe645;</i>&nbsp;公告:</label>
				</h3>
				<div class="fly-panel-title alert alert-warning  show-notice " 
					style="height:38px;margin-top:5px;font-size:13px;line-height: 24px;width:80%;background: #fff;border:none;font-size:14px;">
					<c:if test="${notices.size() == 0}">
						<a href='javascript:void(0)'>没有新公告...</a>
					</c:if>
					 <c:forEach items="${notices}" begin="0" step="1" var="info">
						<a href="./notice/show.do?id=${info.id}"
							style="color: #01AAED;width: 100%;height:38px;">${info.title}</a>
						<br />
					</c:forEach>
				</div>
			</div>
			
		</div>
	</div>
	<div class="layui-col-md12">
		<div class="fly-panel">
			<!-- 公告 -->
			<h3 class="fly-panel-title">
				<font>查询条件</font><font style="font-size: 12px;color: #ccc;">(输入课程/教员姓名
					可进行模糊匹配)</font>
			</h3>
			<div class="fly-panel-main   layui-form  serach-menu-div">
				<div class="layui-col-md4">
					<div class="layui-form-item">
						<label class="layui-form-label">课程</label>
						<div class="layui-input-block">
							<input class="layui-input" type="text">
						</div>
					</div>
				</div>
				<div class="layui-col-md4">
					<div class="layui-form-item">
						<label class="layui-form-label">教员</label>
						<div class="layui-input-block">
							<input class="layui-input" type="text">
						</div>
					</div>
				</div>
				<div class="layui-col-md4">
					<div class="layui-form-item">
						<label class="layui-form-label"><button
								class="button button-primary button-rounded button-small">
								<i class="layui-icon">&#xe615;</i>
							</button></label>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="layui-col-md12 layui-tab layui-tab-brief"
		lay-filter="check">
		<ul class="layui-tab-title">
			<li class="layui-this">最新课程</li>
			<li><i class="layui-icon " style="color: #FF5722;">&#xe756;</i>&nbsp;推荐</li>
		</ul>
		<div class="layui-tab-content" style="height: 100px;">
			<div class="layui-tab-item layui-show">
				<!-- 最新课程列表 -->
				<table id="tab_course_list_new layui-col-md12" style="width: 100%;min-height: 100px;display:block;border:1px solid #000;"></table>
			</div>
			<div class="layui-tab-item layui-tab">
				<c:if test="${sessionScope.user_info_0504 eq null}">
					<div class="layui-col-md12" style="text-align: center;">
						<button class="layui-btn btn-go-login">请登录</button>
					</div>
				</c:if>
				<c:if test="${sessionScope.user_info_0504 ne null}">
					<!-- 推荐课程列表 -->
					<table id="tab_course_list_hot"></table>
				</c:if>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('.show-notice').liMarquee({
				drag : false,
				direction : 'up',
				scrollamount : 16,
				runshort : false
			});
			$(".btn-go-login").click(function(){
				location.href="./client/signIn.do";
			});
			$(".tab_course_list_new").bootstrapTable({
				method : 'get',
				url : "./list/notice_list.do", //要请求数据的文件路径
				striped : true, //是否显示行间隔色
				cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
				pagination : true, //是否显示分页（*）
				sidePagination : "client", //分页方式：client客户端分页，server服务端分页（*）
				sortable : false, //是否启用排序
				sortOrder : "asc", //排序方式
				pageNumber : 1, //初始化加载第一页，默认第一页
				pageSize : 10, //每页的记录行数（*）
				pageList : [ 10, 25, 50, 100 ], //可供选择的每页的行数（*）
				search : true, //搜索
				searchText : '', //默认文本
				strictSearch : false, //t:匹配 f:like
				buttonsAlign : 'left', //表格默认按钮位置
				searchAlign : 'left', //搜索框位置
				toolbarAlign : 'left', //自定义工具栏位置
				clickToSelect : true, //是否启用点击选中行
				columns : [ {
					field : 'id',
					title : '编号',
					align : 'center',
				},{
					field : '课程',
						title : '公告标题',
						align : 'center',
				  },
				  {
					field : '教员',
						title : '公告标题',
						align : 'center',
				  },
				  {
					field : '学生数',
						title : '公告标题',
						align : 'center',
				  },
				  {
					field : '学生数',
						title : '资料卡',
						
				  },
				  {
					field : '学生数',
						title : '报名',
						
				  }
				]
			});
		});
	</script>
</body>
</html>
