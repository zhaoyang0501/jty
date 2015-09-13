<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>

<!-- Basic Page Needs
================================================== -->
<meta charset="utf-8">
<title> - Free Theme s& Templates</title>

<!-- Mobile Specific
================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/boxed.css" id="layout">
<link rel="stylesheet" type="text/css" href="css/colors/green.css" id="colors">

<!-- Java Script
================================================== -->
<script src="js/jquery.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/selectnav.js"></script>
<script src="js/flexslider.js"></script>
<script src="js/twitter.js"></script>
<script src="js/tooltip.js"></script>
<script src="js/effects.js"></script>
<script src="js/fancybox.js"></script>
<script src="js/carousel.js"></script>
<script src="js/isotope.js"></script>

<!-- Styles Switcher
================================================== -->
<link rel="stylesheet" type="text/css" href="css/switcher.css">
<script src="js/switcher.js"></script>

</head>
<body>

<!-- Wrapper Start -->
<div id="wrapper">


<!-- Header
================================================== -->

<!-- 960 Container -->
<div class="container ie-dropdown-fix">
	<!-- Header -->
		<%@include file="./head.jsp" %>
	<!-- Header / End -->
	
</div>
<!-- 960 Container / End -->


<!-- Content
================================================== -->
<div class="container">
	<div class="sixteen columns">
		<div id="page-title">
			<h2>交易记录</h2>
			<div id="bolded-line"></div>
		</div>
	</div>
</div>

<div class="container">
<c:if test="${tip!=null }">
	<div class="sixteen columns">
		<div class="notification success  closeable" style="margin: 5px 0 25px 0;">
			<p>${tip}</p>
		</div>
	</div>
</c:if>
</div>
<div class="container">

<div class="twelve columns">
	<table class="standard-table">
				<tbody><tr>
					<th>姓名</th>
					<th>账号类型</th>
					<th>账号号码</th>
					<th>操作类型</th>
					<th>发生金额</th>
					<th>对方账号</th>
					<th>余额</th>
					<th>操作人</th>
					<th>备注</th>
				</tr>
				
								<tr>
								<td>22</td>
									<td>22</td>
									<td>22</td>
									<td>22222</td>
									<td>22222</td>
									<td>22</td>
									<td>22</td>
									<td>22</td>
									<td>22222</td>
								</tr>
				<tr>
								<td>22</td>
									<td>22</td>
									<td>22</td>
									<td>22222</td>
									<td>22222</td>
									<td>22</td>
									<td>22</td>
									<td>22</td>
									<td>22222</td>
								</tr>
									<tr>
								<td>22</td>
									<td>22</td>
									<td>22</td>
									<td>22222</td>
									<td>22222</td>
									<td>22</td>
									<td>22</td>
									<td>22</td>
									<td>22222</td>
								</tr>
									<tr>
								<td>22</td>
									<td>22</td>
									<td>22</td>
									<td>22222</td>
									<td>22222</td>
									<td>22</td>
									<td>22</td>
									<td>22</td>
									<td>22222</td>
								</tr>
			</tbody></table>
	
</div>


<!-- Widget
================================================== -->
<div class="four columns">

	
	<!-- Categories -->
	<div class="widget first">
		<div class="headline no-margin"><h4>所有账户</h4></div>
			<ul class="links-list-alt">
				<li><a href="#">基本账户</a></li>
				<li><a href="#">一般账户</a></li>
				<li><a href="#">专用庄户</a></li>
				<li><a href="#">Video Gallery</a></li>
				<li><a href="#">Technology</a></li>
			</ul>
	</div>
	
	
</div>

</div>

</div>
<!-- Wrapper / End -->
	<%@include file="./foot.jsp" %>


</body>
</html>