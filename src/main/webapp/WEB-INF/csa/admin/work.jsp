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
            <li><a href="setlist">ตั้งค่ารายการ</a></li>
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
            <li class="active"><a class="nav-link current" href="work">งานโค</a></li>
           
              <li><a href="user">สมาชิก</a></li>
                <li><a href="report">ออกรายงาน</a></li>
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
<div align="center"><h1>งานโค</h1></div>
<hr>

 <div class="row demo-row">
        <div class="col-xs-1"></div>
          
          
  <div class="example">
        <div class="row">
          <div class="col-md-10">
           <div class="panel">
            
              <ul id="myTab1" class="nav nav-pills nav-justified">
                <li class="active"><a href="#home1" data-toggle="tab">ประกวดโค</a></li>
                <li><a href="#profile1" data-toggle="tab">ประมูลโคพันธุ์</a></li>
                 <li><a href="#profile2" data-toggle="tab">ประมูลโคขุน</a></li>
                
              </ul>
              <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="home1">
                 
                 
                 <div>
                 <a href="newfestivity"><button type="button" class="btn btn-success fui-plus-circle"> เพิ่มงานโคประกวด</button></a>
                 </div>
                 <br>
                 <table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th align="center">ลำดับที่</th>
				    	<th align="center">ชื่องาน</th>
				        <th align="center">ประเภทงาน</th>
				        <th align="center">วันเริ่มงาน</th>
				        <th align="center">สถานะงาน</th>
				        <th align="center">แก้ไข</th>
				        <th align="center">ลบ</th>
				        <th align="center">นำโคร่วมงาน</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				    <td><div align="center">${festivity.type.name}</div></td>
				    <td><div align="center">${festivity.title}</div></td>
				    <td><div align="center">${festivity.gene}</div></td>
				    <td><div align="center">${festivity.SWork}</div></td>
				    <td><div align="center" class="col-md-offset-3"><input type='checkbox' checked data-toggle='switch' id='custom-switch-01' /></div></td>
				        <td><div align="center"><a href="#"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></div></td>
				        <td><div align="center"><a href="#"><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></div></td>
				        <td><div align="center"><a href="addfes_sh"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-plus-sign"></span></button></a></div></td>
				      </tr>

				</tbody>
			</table>
			
                </div>
                <div class="tab-pane fade" id="profile1">
                  
                  <div>
                 <a href="newfestivity"><button type="button" class="btn btn-warning  fui-plus-circle"> เพิ่มงานประมูลโคพันธุ์</button></a>
                 </div>
                 <br>
                 <table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th align="center">ลำดับที่</th>
				    	<th align="center">ชื่องาน</th>
				        <th align="center">ประเภทงาน</th>
				        <th align="center">วันเริ่มงาน</th>
				        <th align="center">สถานะงาน</th>
				        <th align="center">แก้ไข</th>
				        <th align="center">ลบ</th>
				        <th align="center">นำโคร่วมงาน</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				    <td><div align="center">${festivity.type.name}</div></td>
				    <td><div align="center">${festivity.title}</div></td>
				    <td><div align="center">${festivity.gene}</div></td>
				    <td><div align="center">${festivity.SWork}</div></td>
				    <td><div align="center" class="col-md-offset-3"><input type='checkbox' checked data-toggle='switch' id='custom-switch-01' /></div></td>
				        <td><div align="center"><a href="#"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></div></td>
				        <td><div align="center"><a href="#"><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></div></td>
				        <td><div align="center"><a href="addfes_2"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-plus-sign"></span></button></a></div></td>
				      </tr>

				</tbody>
			</table>
			
                </div>
                 <div class="tab-pane fade" id="profile2">
                 
                 <div>
                 <a href="newfestivity"><button type="button" class="btn btn-danger  fui-plus-circle"> เพิ่มงานประมูลโคขุน</button></a>
                 </div>
                 <br>
                 <table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th align="center">ลำดับที่</th>
				    	<th align="center">ชื่องาน</th>
				        <th align="center">ประเภทงาน</th>
				        <th align="center">วันเริ่มงาน</th>
				        <th align="center">สถานะงาน</th>
				        <th align="center">แก้ไข</th>
				        <th align="center">ลบ</th>
				        <th align="center">นำโคร่วมงาน</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				    <td><div align="center">${festivity.type.name}</div></td>
				    <td><div align="center">${festivity.title}</div></td>
				    <td><div align="center">${festivity.gene}</div></td>
				    <td><div align="center">${festivity.SWork}</div></td>
				    <td><div align="center" class="col-md-offset-3"><input type='checkbox' checked data-toggle='switch' id='custom-switch-01' /></div></td>
				        <td><div align="center"><a href="#"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></div></td>
				        <td><div align="center"><a href="#"><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></div></td>
				        <td><div align="center"><a href="addfes_3"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-plus-sign"></span></button></a></div></td>
				      </tr>

				</tbody>
			</table>
			
			
			
                </div>
               
              </div>
            </div>
          </div></div></div>
          </div>
          
          
</body>
</html>