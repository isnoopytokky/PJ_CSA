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
            <li><a href="festivity">งานโค</a></li>
           
              <li><a href="user">สมาชิก</a></li>
                <li><a href="#">ออกรายงาน</a></li>
            </ul>
             <ul class="nav navbar-nav navbar-right">
              <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-5">
            <span class="sr-only">Toggle navigation</span>
          </button>
         <a class="navbar-brand" href="edit_profile"><img src="<c:url value="resources/img/o1.png"/> "
			height="40"></a>
        </div>
             <li ><a href="logout" class="fa fa-times">ออกจากระบบ</a></li>
             </ul>
           </div>
           </div>
           </nav>
</header>
	
	    <h1 align="center">จัดงานโค </h1>
	    <hr>
	    
	    
		
	  <div class="row demo-row">
        <div class="col-xs-3"></div>
        
          <div class="col-xs-6">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">เพิ่มงานโค</h4>
	   	</div>
		<div class="panel-body">
		 
		
            
           <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ประเภทงาน :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="gene" id="gene" value=""  required>
                <option></option>
                <option>ประกวดโค</option>
                <option>ประมูลโคพันธุ์</option>
                <option>ประมูลโคขุน</option>
           		</select>    
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ชื่องาน :</h4>
							</div>
							<div class="col-md-7">
								<input type="tel" id="tel" class="form-control" placeholder="ชื่องาน" required/>
							</div>
						</div>
			
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สายพันธุ์ :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="gene" id="gene" value=""  required>
                <option></option>
                <option>Hydrogen</option>
                <option>Helium</option>
                <option>Lithium</option>
                <option>Beryllium</option>
                <option>Boron</option>
                <option>Carbon</option>
                <option>Nitrogen</option>
           		</select>    
							</div>
						</div>
			
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>วันเริ่มงาน :</h4>
							</div>
							<div class="col-md-7">
								<input type="date" id="tel" class="form-control" />
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>วันสิ้นสุดงาน :</h4>
							</div>
							<div class="col-md-7">
								<input type="date" id="tel" class="form-control" />
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>เริ่มรับข้อมูล :</h4>
							</div>
							<div class="col-md-7">
								<input type="date" id="tel" class="form-control" />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สิ้นสุดรับข้อมูล :</h4>
							</div>
							<div class="col-md-7">
								<input type="date" id="tel" class="form-control" />
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>โลโก้งาน :</h4>
							</div>
							<div class="col-md-7">
								<input type="file" id="tel" class="form-control" />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>โปสเตอร์งาน :</h4>
							</div>
							<div class="col-md-7">
								<input type="file" id="tel" class="form-control" />
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>รายละเอียดงาน :</h4>
							</div>
							<div class="col-md-7">
								<textarea id="tel" class="form-control" required />
								</textarea>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ติดต่อสอบถาม :</h4>
							</div>
							<div class="col-md-7">
								<input type="tel" id="tel" class="form-control" placeholder="ติดต่อสอบถาม" required/>
							</div>
						</div>
						
						<button type="submit" name="submit" id="submit" class="btn btn-success pull-left">จัดงาน</button>  |
						<a href="festivity"><button type="button" class="btn btn-danger fui-plus-circle">ย้อนกลับ</button></a>
						
                    
            </div>
            
              </div>
            </div>
         </div>
        
         



<footer class="footer">
	<div class="container">
		<p>
			<font color="white">© 2014-2015</font>
		</p>
		<p class="text-muted">
		
		</p>
	</div>
	</footer>
	
  
</body>
</html>