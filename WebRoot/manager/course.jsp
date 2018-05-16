<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>课程</title>
	<style type="text/css">
	.panel{
		margin: 5px 5px 5px 5px;
	}
	</style>
  </head>
  
  <body>
  <div class="panel panel-default">
		<div class="panel-heading ">
			课程管理
		</div>
		<div class="panel-body form-group " style="margin-bottom:0px;">
			<div class="top-btn-group btn-group">
				<button class="layui-btn" data-menu="1">添加课程</button>
			</div>
		</div>
	</div>
	<div class="panel panel-default ">
		<div class="panel-heading">在线课程信息</div>
		<div class="panel-body " style="">
			<table class="tab-list"></table>
		</div>
	</div>
	
	<div class="gl layui-hide">
		<div class="layui-btn-group">
			<button class="layui-btn btn-update">修改</button>
			<button class="layui-btn btn-del">删除</button>
		</div>
	</div>
	<script type="text/javascript">
	$(function() {
		$(".tab-list").bootstrapTable({
			method : 'get',
			url : "./list/course_list.do", //要请求数据的文件路径
			striped : true, //是否显示行间隔色
			cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			pagination : true, //是否显示分页（*）
			sidePagination : "client", //分页方式：client客户端分页，server服务端分页（*）
			sortable : false, //是否启用排序
			sortOrder : "asc", //排序方式
			pageNumber : 1,//初始化加载第一页，默认第一页
			pageSize : 10, //每页的记录行数（*）
			pageList : [ 10, 25, 50, 100 ], //可供选择的每页的行数（*）
			search : true, //搜索
			searchText : '',//默认文本
			strictSearch : false,//t:匹配 f:like
			buttonsAlign : 'left', //表格默认按钮位置
			searchAlign : 'left', //搜索框位置
			toolbarAlign : 'left', //自定义工具栏位置
			clickToSelect : true, //是否启用点击选中行
			columns : [ {
				field : 'id',
				title : '编号',
				align : 'center',
			},
			{
				field : 'course',
				title : '课程名称',
				align : 'center',
			},
			{
				field : 'addTime',
				title : '添加时间',
				align : 'center',
			},
			{
				field : 'tabUserInfo.userName',
				title : '添加用户',
				align : 'center',
			},
			{
				title:'管理',
				formatter : function(v, r, i) {
						var idCode = "<input type='hidden' class='id_code' value='" + r.id + "'  />";
						return $(".gl").html() + idCode ;
				}
			}
			]
		});
		$(document).on("click",".btn-del",function(){
		
		});
		$(document).on("click",".btn-update",function(){
			var id = $(this).parent().siblings(".id_code").val();
			layer.open({
				title:'修改密码',
				content:$('.pwd_div').html(),
				btn:['修改','取消'],
				btn1:function(index,layero){
					
				}
			});
		});
	});
</script>
  </body>
</html>
