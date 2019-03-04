<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="en" class="login-content">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>登录</title>
<script type="text/javascript">
var err="${result_info}";
$(function(){
	if(err!=""){
		alert(err);
		//layer.msg(err);
	}
});
</script>
</head>
<body class="">
	<div class="center-login">
		<div class="lc-block toggled login-body">
			<form action="./client/signIn.do" method="post" class="">
				<h1 class="lean">用户登录</h1>
				<div class="input-group m-b-20">
					<span class="input-group-addon"> <i
						class="zmdi zmdi-account"></i>
					</span>
					<div class="fg-line">
						<input class="form-control login-id" placeholder="Username"
							type="text" name="user_id">
					</div>
				</div>

				<div class="input-group m-b-20">
					<span class="input-group-addon"> <i class="zmdi zmdi-male"></i>
					</span>
					<div class="fg-line">
						<input class="form-control login-password" placeholder="Password" type="password"  name="user_password">
					</div>
				</div>

				<div class="clearfix"></div>

				<div class="checkbox">
					<label> <input value="" type="checkbox" class="btn-jz">
						<i class="input-helper"> 记住账号 </i>
					</label>
				</div>
				<a href="javascript:void(0)"
					class="btn btn-login btn-danger btn-float"> <i
					class="zmdi zmdi-arrow-forward"></i>
				</a>
				<button style="display: none;" type="submit" class="sub">提交</button>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		$(window).resize(function() {
			var t=$(".btn-login").offset().top;
			$(".bg").css("height",t-$(".btn-login").height()+63);
		});
		$(function(){
			//登录框定位重计算
			$(window).resize();
			$(".btn-jz").click(function(){
				if($(this).is(":checked")){
					//写入cookies
					$.cookie("cache-id",$(".login-id").val());
				}else{
					$.removeCookie("cache-id");
				}
			});
			//load cache id
			var loginId=$.cookie("cache-id");
			if(loginId!=undefined||loginId!=null){
				$(".login-id").val(loginId);
				$(".btn-jz").attr("checked","checked");
			}
			//login fun
			$(".btn-login").click(function(){
				if($(".login-id").val()==""){
					layer.tips("请输入账号",".login-id",{
						tips: [3, '#FFB800']
					});
					return;
				}
				if($(".login-password").val()==""){
					layer.tips("请输入密码",".login-password",{
						tips: [3, '#FFB800']
					});
					return;
				}
				$(".sub").click();
			});
		});
	</script>
</body>
</html>