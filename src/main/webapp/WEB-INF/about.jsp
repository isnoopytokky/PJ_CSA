<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ระบบออกใบสูจิบัตรโคประกวดโคประมูล</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/bootflat.css"/>"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/homestyle.css"/>"
	rel='stylesheet' type='text/css' />
<link
	href="<c:url value="/resources/font-awesome-4.3.0/css/font-awesome.min.css"/>"
	rel='stylesheet' type='text/css' />
<!-- Bootstrap -->

</head>

<header class="header"> <nav
	class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="index"><img
			src="<c:url value=  "resources/img/b1.png"/> "
			height="40"></a>
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
	</div>
	<div class="collapse navbar-collapse" id="myNavbar">
		<ul class="nav navbar-nav">
			<li><a href="index">หน้าแรก</a></li>
			<li><a href="home_report">รายงานผล</a></li>
            <li><a href="news">ข่าวประกาศ</a></li>
            <li class="active"><a class="nav-link current" href="about">เกี่ยวกับเรา</a></li>
             <li style="font-size: 18px;"><a href="#" data-toggle="modal"
				data-target="#log3">
					เข้าร่วมงาน</a></li>
           
		</ul>
		
	</div>
</div>
</nav> </header>
<body>

<div><h1 align="center">เกี่ยวกับเรา</h1></div>
<hr>


	


	<footer class="footer" role="cententinof">
	<div class="contrainer">
		<p style="color: white;">Copyright © 2014 - 2015</p>
		
	</div>
	</footer>
	<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>


</body>
</html>