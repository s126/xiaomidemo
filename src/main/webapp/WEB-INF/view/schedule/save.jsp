<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小米在线预约系统</title>
<style>
	* {
		margin: 0 auto;
		padding: 0 auto;
	}
</style>
</head>
<body>
	<div style="text-align: center">
		<h1 style="color: red;">恭喜您！</h1>
		<h3>成功预约开放购买</h3>
		<p>你已具备${schedule.productName }购买资格</p>
		
		<p>请于<s:date name="schedule.buyDate" format="yyyy年MM月dd日 HH:mm:ss" />准时前往小米官网购买</p>
		<button onclick="dropout()">退出</button>
	</div>
</body>
<script type="text/javascript">
	function dropout () {
		if (confirm("确定退出本页面")){
			var userAgent = navigator.userAgent;
			if (userAgent.indexOf("Firefox") != -1 || userAgent.indexOf("Chrome") !=-1) {
			   window.location.href="about:blank";
			} else {
			   window.opener = null;
			   window.open("", "_self");
			   window.close();
			}
		}
	};
	
</script>
</html>