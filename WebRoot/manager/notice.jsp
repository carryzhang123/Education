<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>公告</title>
<style type="text/css">
.panel {
	margin: 5px 5px 5px 5px;
}
</style>
</head>

<body>
	<div class="panel panel-default">
		<div class="panel-heading ">公告管理</div>
		<div class="panel-body form-group " style="margin-bottom:0px;">
			<div class="top-btn-group btn-group">
				<button class="layui-btn btn-add" >新建公告</button>
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
			<button class="layui-btn btn-open">预览</button>
			<button class="layui-btn btn-del">删除公告</button>
		</div>
	</div>
	<div class="add layui-hide">
		<div class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">公告标题</label>
				<div class="layui-input-block">
					<input type="text" name="title"
						placeholder="请输入标题" class="layui-input">
				</div>
			</div>
			  <div class="layui-form-item layui-form-text">
			    <label class="layui-form-label">公告文本</label>
			    <div class="layui-input-block">
			      <textarea name="info" placeholder="请输入内容" class="layui-textarea"></textarea>
			    </div>
			  </div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$(".tab-list").bootstrapTable({
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
				},
					{
						field : 'title',
						title : '公告标题',
						align : 'center',
					},
					{
						title : '管理',
						formatter : function(v, r, i) {
							var idCode = "<input type='hidden' class='id_code' value='" + r.id + "'  />";
							return $(".gl").html() + idCode;
						}
					}
				]
			});
			$(document).on("click", ".btn-del", function() {
				var id = $(this).parent().siblings(".id_code").val();
				layer.msg('是否删除?', {
					time : 0, //不自动关闭
					btn : [ '删除', '取消' ],
					yes : function(index) {
						layer.close(index);
						$.post("./notice/del.do", {
							"id" : id
						}, function(r) {
							$(".tab-list").bootstrapTable("refresh");
							layer.msg(r);
						}, "text");
					}
				});
			});
			$(document).on("click", ".btn-open", function() {
				var id = $(this).parent().siblings(".id_code").val();
				window.open("./notice/show.do?id=" + id);
			});
			
			$(document).on("click", ".btn-add", function() {
				layer.open({
					id:'layer-add',
					title:'添加新公告',
					offset:'t',
					area:['500px','450px'],
					content:$(".add").html(),
					btn:['添加','重置','取消'],
					btn2:function(index,layero){
						layer.close(index);
						$(".btn-add").click();
					},
					btn1:function(index,layero){
						var title=$(".layui-input",layero).val();
						var info =$(".layui-textarea",layero).val();
						layer.close(index);//关闭窗口
						$.post("./notice/publish.do", {
							"title" : title,
							"info" : info
						}, function(r) {
							$(".tab-list").bootstrapTable("refresh");
							layer.msg(r);
						}, "text");
					}
				});
			});
		});
	</script>
</body>
</html>
