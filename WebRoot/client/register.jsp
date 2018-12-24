<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注册</title>
    <!-- Vendor CSS -->
	<link href="./static/css/material-design-iconic-font.css"
		rel="stylesheet" type="text/css" />
	<link href="./static/css/login.css" rel="stylesheet" type="text/css">
	<link href="./static/css/register.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    	.select{
    		border:1px solid #ccc;
    		margin-right: 10px;
    		border-radius: 2px;
    		color: #ccc;
    	}
    	.select:FIRST-CHILD {
			width: 120px;
		}
    </style>
  </head>
  <body>
  	<div class="register-body layui-col-md12">
  		<div class="layui-col-md3">&nbsp;</div>
  		<div class="register-div layui-col-md5">
  			<form action="./register.do" method="post" class="form layui-form">
  				<!-- title -->
  				<h1 class="lean">用户注册</h1>
  				<div class="layui-col-md1" style="float: left;">&nbsp;</div>
  				<div class="layui-col-md10" >
	  				<!-- info -->
	  				<div class="input-group m-b-20">
						<span class="input-group-addon"> <i class="layui-icon">&#xe612;</i>
						</span>
						<div class="fg-line">
							<input class="form-control sub-data" data-key="id" placeholder="账号" type="text">
						</div>
					</div>
					<div class="input-group m-b-20">
						<span class="input-group-addon "> <i class="layui-icon">&#xe600;</i>
						</span>
						<div class="fg-line">
							<input class="form-control sub-data" data-key="password" placeholder="密码" type="password">
						</div>
					</div>
					<div class="input-group m-b-20">
						<span class="input-group-addon"> <i class="layui-icon">&#xe6b2;</i>
						</span>
						<div class="fg-line">
							<input class="form-control sub-data" data-key="again-password" placeholder="再次输入密码" type="password">
						</div>
					</div>
					<hr/><!-- 分割线  -->
					<div class="input-group m-b-20">
						<span class="input-group-addon" > <i class="layui-icon" >&#xe61b;</i>
						</span>
						<div class="fg-line ">
							<select class="sub-data" data-key="role" >
								<option value=''>请选择角色 </option>
								<c:forEach begin="0" step="1" var="li" items="${user_roles_0507}" >
									<option value='${li.id}'>${li.role}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<!-- name -->
					<div class="input-group m-b-20">
						<span class="input-group-addon"> <i class="layui-icon">&#xe60c;</i>
						</span>
						<div class="fg-line">
							<input class="form-control sub-data" placeholder="姓名" type="text">
						</div>
					</div>
					<!-- age -->
					<div class="input-group m-b-20">
						<span class="input-group-addon"> <i class="layui-icon">&#xe62e;</i>
						</span>
						<div class="fg-line">
							<select class="sub-data">
								<option value=''>请选择年龄 </option>
								<c:forEach begin="0" step="1" var="li" items="${age}" >
									<option value='${li}'>${li}岁</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<!-- sex -->
					<div class="input-group m-b-20">
						<span class="input-group-addon"> <i class="layui-icon">&#xe662;</i>/<i class="layui-icon">&#xe661;</i>
						</span>
						<div class="fg-line">
							    <input type="radio" name="sex" value="nan" title="男">
								<input type="radio" name="sex" value="nv" title="女" checked>
						</div>
					</div>
					<!-- address city -->
					<%--<div class="input-group m-b-20">--%>
						<%--<span class="input-group-addon"> <i class="layui-icon">&#xe715;</i>--%>
						<%--</span>--%>
						<%--<div class="fg-line ">--%>
							    <%--<select class="select layui-col-md3" id="province" name="province" lay-ignore>--%>
									<%--<option value="">选择我的城市</option>--%>
								<%--</select>--%>
								<%----%>
								<%--<select class="select layui-col-md3"  name="city" id="city" lay-ignore>--%>
									<%--<option value="">选择城市</option>--%>
								<%--</select>--%>
						<%----%>
								<%--<select class="select layui-col-md3"  name="town" id="town" lay-ignore>--%>
									<%--<option value="">选择区域</option>--%>
								<%--</select>--%>
						<%--</div>--%>
					<%--</div>--%>
  					<!-- address -->
  					<div class="input-group m-b-20">
						<span class="input-group-addon"> <i class="layui-icon">&#xe65b;</i>
						</span>
						<div class="fg-line">
							<input class="form-control login-password" placeholder="详细地址" type="text">
						</div>
					</div>
  				</div> 
  				<!-- submit -->
  				<div class="layui-col-md12 sub-div" style="text-align: center;">
  					<button class="button button-primary button-pill button-small">
  					<i class="layui-icon">&#xe609;</i>
  					注册</button>
  				</div>
  				<div class="layui-col-md12 ">
  					<br/>
  				</div>
  			</form>
  		</div>
  	</div>
  <script type="text/javascript">
  	$(function(){
  		layui.use('form',function(){
  			var form = layui.form;
  			form.render();
  		});
  		$.post("./client/city.do?t=0&p=",{},function(r){
  			
  		},"json");
  	});
  </script>
  </body>
</html>
