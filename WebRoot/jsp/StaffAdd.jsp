<%@ page language="java" import="java.util.*" import="com.mybean.data.*"
	pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>控制台</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/lightbox.css">
<link href="css/font-awesome.css" rel="stylesheet">
<script src="js/jquery-2.1.4.min.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
	rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />

<script type="text/javascript">
function t(){
var now= new Date();
var y=now.getFullYear();
var mo=now.getMonth()+1;
var d=now.getDay();
var h=now.getHours();
var mi=now.getMinutes();
var s=now.getSeconds(); 
var tt=y+"-"+mo+"-"+d+"-"+h+"-"+mi+"-"+s;
document.getElementById("sRegDate").value=tt;
}
setInterval('t()',500);
</script>

</head>

<body>
	<div class="page-container">
		<div class="left-content">
			<div class="mother-grid-inner">
				<jsp:include page="baseJsp/Header.jsp"></jsp:include>
				<!-- Item begin -->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">员工信息</a><i
						class="fa fa-angle-right"></i>添加员工</li>
				</ol>
				<!-- Item end -->
				<!-- Main begin -->
				<div class="validation-system">
					<!-- 这是大背景 -->
					<div class="validation-form">
						<!---->
					<div class="alert alert-warning" >
						<strong>${returnMessage}</strong>	<!-- 这是注册是否成功等的提示 -->	
					</div>
						<form action="StaffAddToSql" method="post">
							<div class="vali-form">
								<div class="col-md-6 form-group1">
									<label class="control-label">员工号</label> <input name="sIdStr"
										type="text" placeholder="123456" required="">
								</div>
								<div class="col-md-6 form-group1 form-last">
									<label class="control-label">员工姓名</label> <input name="sName"
										type="text" placeholder="张三" required="">
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="col-md-6 form-group1 form-last">
									<label class="control-label">员工助记符</label> <input name="sMark"
										type="text" required="">
							</div>
							<div class="col-md-12 form-group2 group-mail">
								<label class="control-label">员工性别</label> <select name="sSex">
									<option value="0">男</option>
									<option value="1">女</option>
								</select>
							</div>
						
							<div class="clearfix"></div>
							<div class="vali-form">
							<div class="col-md-6 form-group1">
								<label class="control-label">员工电话</label> <input name="sTel"
									type="text" >
							</div>
						
							<div class="clearfix"></div>
							</div>
							<div class="col-md-12 form-group1 group-mail">
								<label class="control-label">员工地址</label> <input name="sAddr"
									type="text">
								<p class=" hint-block">格式:X省X市X县X街道</p>
							</div>
							<div class="col-md-12 form-group1 group-mail">
								<label class="control-label ">注册日期</label> <input id="sRegDate" name="sRegDate"
									type="text"
									class="form-control1 ng-invalid ng-invalid-required"
									ng-model="model.date"  value="" readonly="readonly">
							</div>

							<div class="clearfix"></div>
							<div class="col-md-12 form-group1 ">
								<label class="control-label">备注</label>
								<textarea name="sRemark" placeholder="个人说明等备注"></textarea>
							</div>
							<div class="clearfix"></div>

							<div class="clearfix"></div>

							<div class="col-md-12 form-group">
								<button type="submit" class="btn btn-primary">保存</button>
								<button type="reset" class="btn btn-default">重置</button>
							</div>
							<div class="clearfix"></div>
						</form>

						<!---->
					</div>

				</div>
				<!-- Main end -->
				<jsp:include page="baseJsp/Footer.jsp"></jsp:include>
			</div>
		</div>
		<jsp:include page="baseJsp/SidebarMenu.jsp"></jsp:include>
	</div>
	<jsp:include page="baseJsp/MenuScript.jsp"></jsp:include>
</body>
</html>