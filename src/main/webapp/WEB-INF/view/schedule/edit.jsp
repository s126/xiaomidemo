<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小米在线预约系统</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<style>
	input {
		font-size: 20px;
	}
	.xuxian {
		margin-top: 10px;
	}
	.info {
		color: red;
	}
</style>
</head>
<body>
<s:debug />
	<h1 style="color: orange;">填写预约信息</h1>
	<form id="form" action="${pageContext.request.contextPath }/schedule/save" method="post" >
	
		<input type="hidden" name="schedule.productName" value="${phoneName }" />
		<input type="hidden" name="schedule.buyDate" value="${buyTime }" />
	
		<table style="width:50%" cellpadding="5" cellspacing="5">
			<tr>
				<td colspan="2" style="border-top: 1px dashed #000;">
					<p>请务必填写您的真实信息， 购买时使用此信息验证您的身份</p>
				</td>
			</tr>
			<tr>
				<td style="width: 60px;">收货人：</td>
				<td><input id="name" name="schedule.consignee" type="text" /><span class="info" id="nameinfo"></span></td>
			</tr>
			<tr>
				<td>电子邮件：</td>
				<td><input id="email" type="email" name="schedule.email" /><span class="info" id="emailinfo"></span></td>
			</tr>
			<tr>
				<td>手机号：</td>
				<td><input id="tel" type="tel" name="schedule.mobile" /><span class="info" id="telinfo"></span></td>
			</tr>
			<tr>
				<td colspan="2">
					<p  style="border-top: 1px dashed #000;padding-top: 10px;">为防黄牛,请填写您的详细地址， 提交后将作为订单地址且不能更改</p>
				</td>
			</tr>
			<tr style="border-bottom: 1px dashed #000;">
				<td style="width: 100px;">收货地址：</td>
				<td><input id="address" name="schedule.address" type="text" /><span class="info" id="addressinfo"></span></td>
			</tr>
			
			<tr>
				<td class="xuxian" colspan="2" style="border-top: 1px dashed #000;padding-top: 10px;">
					<input type="submit" value="下一步" />
				</td>
			</tr>
		</table>
	</form>
	<script>
		$(function (){
			$("#form").submit(function(){
				if ($("#name").val() == ""|| $("#name").val().length < 1){
					$("#nameinfo").text("请您输入真实姓名（仅限中文名）");
					return false;
				}else {
					$("#nameinfo").text("");
				}
				
				
				if ($("#email").val() == ""|| $("#email").val().length < 1){
					$("#emailinfo").text("请您输入正确的邮箱地址");
					return false;
				}else {
					$("#emailinfo").text("");
				}
				
				
				if ($("#tel").val() == ""|| $("#tel").val().length < 1){
					$("#telinfo").text("请您输入正确的手机号码");
					return false;
				}else {
					$("#telinfo").text("");
				}
				
				
				if ($("#address").val() == ""|| $("#address").val().length < 1){
					$("#addressinfo").text("地址信息有误");
					return false;
				}else {
					$("#addressinfo").text("");
				}
				
				return true;
			});
		})
	</script>
</body>
</html>