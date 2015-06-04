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
			<li class="active"><a class="nav-link current" href="index">หน้าแรก</a></li>
			<li><a href="home_report">รายงานผล</a></li>
            <li><a href="news">ข่าวประกาศ</a></li>
            <li><a href="about">เกี่ยวกับเรา</a></li>
             <li style="font-size: 18px;"><a href="#" data-toggle="modal"
				data-target="#log3">
					เข้าร่วมงาน</a></li>
           
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li style="font-size: 18px;"><a href="#" data-toggle="modal"
				data-target="#log2"><i class="glyphicon glyphicon-user"></i>
					สมัครสมาชิก</a></li>
			<li style="font-size: 18px;"><a href="#" data-toggle="modal"
				data-target="#log"><i class="glyphicon glyphicon-log-in"></i>
					เข้าสู่ระบบ</a></li>

		</ul>
	</div>
</div>
</nav> </header>
<body>
	<div class="section-bg">
		<div class="container">
			<img class="icon"
				src="<c:url value=  "resources/img/b2.png"/> "
				height="100"> <br>
			<div>
				<h3 class="homepage-title">ระบบการจัดการฟาร์ม :
					ระบบออกใบสูจิบัตรโคประกวดโคประมูล</h3>
			</div>
			<div>
				<h3 class="homepage-subtitle">Farm Management System : Certificate of Cattle Shows and Auction System Phase 2</h3>
			</div>
		</div>
		<br> <br> <br> <br>
	</div>


	<div class="container">
		<!-- modal -->
		<div id="log" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">เข้าสู่ระบบ</h3>
					</div>
					<div class="modal-body">
						<form action="login" method="POST" id="loginForm">
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อผู้ใช้:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" name="username" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>รหัสผ่าน:</h4>
							</div>
							<div class="col-md-6">
								<input type="password" name="password" class="form-control">
								
							</div>
						</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
						<!-- <a href="index_admin">  -->
							<button type="button"
								class="btn btn-primary" id="btn_login">ล็อคอิน</button>
						<!-- </a> -->
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
	</div>

<div class="container">
		<!-- modal -->
		<div id="log2" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">สมัครสมาชิก</h3>
					</div>
					<form:form action="" commandName="member" id="member">
					<div class="modal-body">
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อผู้ใช้:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="user" id="user" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>รหัสผ่าน:</h4>
							</div>
							<div class="col-md-6">
								<form:password path="pass" id="password" class="form-control"/>
							</div>
						</div>
							<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ยืนยัน-รหัสผ่าน:</h4>
							</div>
							<div class="col-md-6">
								<input type="password" name="password2" id="password2" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>อีเมลล์:</h4>
							</div>
							<div class="col-md-6">
								<form:input type="email" path="email" id="email" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เลขประชาชน:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="idcard" id="idcard" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อ:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="name" id="name" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>นามสกุล:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="surname" id="surname" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ที่อยู่:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="address" id="address" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ฟาร์ม:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="farm" id="farm" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เบอร์โทร:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="tel" id="tel" class="form-control"/>
							</div>
						</div>
					</div>
					<form:hidden path="StatusNo.idstatusNo" value="5" />
					</form:form>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>
						<button type="submit" class="btn btn-primary" id="add3">สมัคร</button>
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
	</div>
	
	<div class="container">
		<!-- modal -->
		<div id="log3" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ร่วมงาน</h3>
					</div>
					<div class="modal-body">
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อ:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>นามสกุล:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เลขประชาชน:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ที่อยู่:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
						<a href="test"><button type="button"
								class="btn btn-primary">ต่อไป</button></a>
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
	</div>
	<footer class="footer" role="cententinof">
	<div class="contrainer">
		<p style="color: white;">Copyright © 2014 - 2015</p>
		
	</div>
	</footer>
	<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

<script type="text/javascript">

//login 
$(document).on('click','#btn_login',function(s){
	
	var user = $("[name=username]").val();
	var pass = $("[name=password]").val();
	
	
	var msg ="";
	if (user==""){
		msg+="กรุณากรอกชื่อผู้ใช้\n";
	}
	if (pass==""){
		msg+="กรุณากรอกรหัสผ่าน\n";
	}
	
	if(msg!=""){
		alert(msg);
	}
	else{
		/*
		$.post('login',{username:user,password:pass},function(message){
			if(message=="yes"){
				alert('do login');	
			}
			alert(message);
		});*/
		
		$( "#loginForm" ).submit();
	}
	
});

//register
$(document).on('click','#add3',function(s){
	var user = $("#user").val();
	var pass = $("#password").val();
	var pass2 = $("#password2").val();
	var email = $("#email").val();
	var idcard = $("#idcard").val();
	var name = $("#name").val();
	var surname = $("#surname").val();
	var address = $("#address").val();
	var farm = $("#farm").val();
	var tel = $("#tel").val();
	var msg ="";
	if (user==""){
		msg+="กรุณากรอกชื่อผู้ใช้\n";
	}
	if (pass==""){
		msg+="กรุณากรอกรหัสผ่าน\n";
	}
	if (pass!=pass2){
		msg+="รหัสไม่ตรงกัน\n";
	}
	if (email=="" ||email.indexOf('@') == -1 || email.indexOf('.') == -1){
		error = 1;
		msg+="กรุณากรอกอีเมลล์\n";
	}
	if (idcard==""){
		msg+="กรุณากรอกเลขบัตรประชาชน\n";
	}
	if (name==""){
		msg+="กรุณากรอกชื่อ\n";
	}
	if (surname==""){
		msg+="กรุณากรอกนามสกุล\n";
	}
	if (address==""){
		msg+="กรุณากรอกที่อยู่\n";
	}
	if (farm==""){
		msg+="กรุณากรอกชื่อฟาร์ม\n";
	}
	if (tel==""){
		msg+="กรุณากรอกเบอร์โทร\n";
	}
	if(msg!=""){
		alert(msg);
	}
	else{
		$.post('checkuser',{username:$("#user").val()},function(message){
			if(message=="yes"){
				$.ajax({
					url:"register",
					method:"POST",
					data:$("#member").serialize()
				}).done(function(a){
					alert("สมัครเรียบร้อย");
				});
			}else{
				alert("ชื่อผู้ใช้ซ้ำ");
			}
		});
		s.preventDefault();
	}
});

</script>
</body>
</html>