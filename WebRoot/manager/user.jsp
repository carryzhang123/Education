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

<title>用户管理</title>
<script type="text/javascript">
	$(function() {
		$(".user-tab").bootstrapTable({
			method : 'get',
			url : "./list/user_list.do", //要请求数据的文件路径
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
				title : '用户编号',
				align : 'center',
				"class": "layui-hide"
			},
			{
				field : 'userId',
				title : '用户账号',
				align : 'center'
			},
			{
				field : 'tabRole.role',
				title : '身份',
				align : 'center'
			},
			{
				field : 'userName',
				title : '姓名',
				align : 'center'
			},
			
			{
				field : 'userSex',
				title : '性别',
				align : 'center'
			},
			
			{
				field : 'userAge',
				title : '年龄',
				align : 'center'
			},
			{
				field : 'tabChinaCitys.name',
				title : '用户所在城市',
				align : 'center'
			},
			{
				field : 'userAddress',
				title : '详细地址',
				align : 'center'
			},
			{
				field : 'tabCommentsForPublishUser.length',
				title : '评论数',
				align : 'center'
			},
			{
				field : 'tabCommentsForReplyUser.length',
				title : '留言',
				align : 'center'
			},{
				title:'管理',
				formatter : function(v, r, i) {
						var idCode = "<input type='hidden' class='id_code' value='" + r.id + "'  />";
						if(r.tabRole==undefined){return;}
						switch(r.tabRole.id){
							case 1:
								return $(".gly").html() + idCode ;
							case 2:
								return $(".jy").html() + idCode ;
							case 3:
								return $(".xy").html() + idCode ;
						}
				}
			}
			]
		});
		$(document).on("click",".btn-pwd",function(){
			var id = $(this).parent().siblings(".id_code").val();
			layer.open({
				title:'修改密码',
				content:$('.pwd_div').html(),
				btn:['修改','取消'],
				btn1:function(index,layero){
					var p1=$(".layui-input",layero).eq("0").val();
					var p2=$(".layui-input",layero).eq("1").val();
					if(p1==''||p1.length<6){
						layer.tips('密码太短', $(".layui-input",layero).eq("0"));
						return;
					}else if(p1!=p2){
						layer.tips('2次输入不一致', $(".layui-input",layero).eq("1"));
						return;
					}
					layer.close(index);
					$.post("./manager/pwd.do",{"id":id,"pwd":p1},function(r){
						layer.msg(r);
					},"text");
				}
			});
		});
	});
</script>
</head>

<body>
	<div class="body-div">
		<table class="user-tab"></table>
	</div>
	<div class="gly layui-hide">
		<div class="layui-btn-group">
			<button class="layui-btn btn-pwd">修改密码</button>
		</div>
	</div>
	<div class="jy layui-hide">
		<div class="layui-btn-group">
			<button class="layui-btn ">修改密码</button>
			<button class="layui-btn ">审核</button>
		</div>
	</div>
	<div class="xy layui-hide">
		<div class="layui-btn-group">
			<button class="layui-btn ">修改密码</button>
		</div>
	</div>
	<!-- ajax 登录div -->
	<div class='pwd_div' style="display:none;">
		<form action="" class="layui-form">
		<div class="layui-inline " style="text-align: center;">
			<div class="layui-form-item"></div>
			<div class="layui-form-item layui-form-pane layui-input-inline">
				<label class="layui-form-label">新密码</label>
				<div class="layui-input-inline">
					<input name="pwd" lay-verify="required" placeholder="输入6位以上密码"
						autocomplete="off" class="layui-input" type="password">
				</div>
			</div>
			<div class="layui-form-item layui-form-pane layui-input-inline">
				<label class="layui-form-label">再次输入</label>
				<div class="layui-input-inline">
					<input name="pwd_too" lay-verify="required" placeholder="再次输入密码"
						autocomplete="off" class="layui-input " type="password">
				</div>
			</div>
		</div>
		</form>
	</div>
</body>
</html>
