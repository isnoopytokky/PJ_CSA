<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>

<html>
<head>
<meta charset="utf-8">
<title>แอดมิน</title>
<meta name="viewport"
	content="initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="smartaddon-verification"
	content="936e8d43184bc47ef34e25e426c508fe">

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
<script src="<c:url value="/resources/js/jquery-2.1.3.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>	



</head>

<body>

	<header class="header"> <nav
	class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="index_admin"><img
			src="<c:url value=  "resources/img/b1.png"/> "
			height="40"></a>
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
	</div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-5">
          <ul class="nav navbar-nav">
            <!-- <li><a href="admin_section.jsp">หน้าแรก</a></li> -->
            <li><a href="#">ตั้งค่ารายการ</a></li>
              <!-- ดอบดาว -->
            <!-- ดอบดาว -->
            <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">จัดการโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="admin_viewcowsh">โคประกวด</a></li>
                <li><a href="admin_viewcow2">โคประมูล</a></li>
               
                </ul>
                </li>
              </ul>
              <!-- ปิดดอบดาว -->  
           </ul>
             <ul class="nav navbar-nav">
            <li><a href="festivity">งานโค</a></li>
           
              <li><a href="user">สมาชิก</a></li>
                <li><a href="#">ออกรายงาน</a></li>
            </ul>
             <ul class="nav navbar-nav navbar-right">
              <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-5">
            <span class="sr-only">Toggle navigation</span>
          </button>
         <a class="navbar-brand" href="edit_profile"><img
			src="<c:url value=  "resources/img/o1.png"/> "
			height="40"></a>
        </div>
             <li ><a href="logout" class="fa fa-times">ออกจากระบบ</a></li>
             </ul>
           </div>
           </div>
           </nav>
</header>
			<h1><center>ข้อมูลส่วนตัว</center></h1>
		<hr>
			<div class="row demo-row">
        <div class="col-xs-3"></div>
        
          <div class="col-xs-6">
		<div class="panel panel-primary">
	<div class="panel-heading">
        <h4 class="panel-title" style="font-size: 18px;">แก้ไขข้อมูลส่วนตัว</h4>
   	</div> 
			
			<form action='' method='post'>
			<c:forEach items="${adminlist }" var="user">
			<table cellpadding=2 cellspacing=1 width='300' align=center>
			<tr id=color1><td colspan=2 align=center><br></td></tr>

			<tr id=color2><td>อีเมล</td>
			<td><input type='text' class='form-control' name='email' size=30 value="${user.email }"></td></tr>
			<tr id=color2><td>ชื่อ</td>
			<td><input type='text' class='form-control' name='name' size=30 value='${user.name }'></td></tr>
			<tr id=color2><td>นามสกุล</td>
			<td><input type='text' class='form-control' name='sername' size=30 value='${user.surname }'></td></tr>
			<tr id=color2><td>ที่อยู่</td>
			<td><input type='text' class='form-control' name='address' size=30 value='${user.address }'></td></tr>
			<tr id=color2><td>ชื่อฟาร์ม</td>
			<td><input type='text' class='form-control' name='farm' size=30 value='${user.farm }'></td></tr>
			<tr id=color2><td >เบอร์โทร</td>
			<td><input type='text' class='form-control' name='tel' size=30 value='${user.tel }'></td></tr>
			<tr id=color2><td >สถานะ</td>
			<td><input type='text' class='form-control' name='statusNo' size=30 value=''></td></tr>
			
			<tr id=color2><td colspan=2 align=center>
			<input type='submit' name='submit' value='submit' class='btn btn-primary'></td></tr>
			
			</table>
		</c:forEach>
			<br>
			</form>
			
			</div>
			</div>
			</div>
	
	<footer class="footer">
	<div class="container">
		<p>
			<font color="white">© 2014-2015 </font>
		</p>
		<p class="text-muted">
		
		</p>
	</div>
	</footer>
	
	
	
 
    </body>
</html>