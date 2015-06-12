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
		<a class="navbar-brand" href="index_official"><img
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
           
              <!-- ดอบดาว -->
            <!-- ดอบดาว -->
            <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">จัดการโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="official_viewcowsh">โคประกวด</a></li>
                <li><a href="official_viewcow2">โคประมูล</a></li>
               
                </ul>
                </li>
              </ul>
              <!-- ปิดดอบดาว -->  
           </ul>
             <ul class="nav navbar-nav">
            <li><a href="work_official">งานโค</a></li>
           
              
                <li><a href="report_official">ออกรายงาน</a></li>
                <li class="active"><a class="nav-link current" href="official_setlist">ตั้งค่ารายการ</a></li>
            </ul>
             <ul class="nav navbar-nav navbar-right">
              <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-5">
            <span class="sr-only">Toggle navigation</span>
          </button>
         <a class="navbar-brand" href=""><img src="<c:url value="resources/img/a1.png"/> "
			height="40"></a>
        </div>
             <li ><a href="logout" class="fa fa-times">ออกจากระบบ</a></li>
             </ul>
           </div>
           </div>
           </nav>
</header>
<div align="center"><h1>ตั้งค่ารายการ</h1></div>
<hr>

 <div class="row demo-row">
        <div class="col-xs-1"></div>
          
          
  <div class="example">
        <div class="row">
          <div class="col-md-10">
           <div class="panel">
            
              <ul id="myTab1" class="nav nav-pills nav-justified">
                <li class="active"><a href="#home1" data-toggle="tab">เพิ่มสีโค</a></li>
                <li><a href="#profile1" data-toggle="tab">เพิ่มสายพันธุ์</a></li>
                 <li><a href="#profile2" data-toggle="tab">เลือกแบบฟอร์ม</a></li>
                
              </ul>
              <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="home1">
                
                 <div class="example">
      
        			<div class="row">
          			<div class="col-md-6">
            		<div class="panel panel-Primary">
              		<div class="panel-heading">
               		<h3 class="panel-title">เพิ่มสี</h3>
              		</div>
              		<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				      <tr>
				    <td><div align="center"><div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สี :</h4>
							</div>
							<div class="col-md-7">
								<input type="tel" id="tel" class="form-control" placeholder="สี" required/>
							</div>
						</div></div></td>
				   
				       
				        <td><div align="center"><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-floppy-saved"></span></button></a></div></td>
				      </tr>
				</tbody>
			</table>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-Primary">
              <div class="panel-heading">
                <h3 class="panel-title">สีที่มีอยู่</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		  
				<thead>
					<tr>
						
				    	<th align="center">สี</th>
				        <th align="center">ลบ</th>
				      </tr>
				    </thead>
				    <tbody>
				   
				      <tr>
				   
				    <td><div align="center">แดง</div></td>
				        <td><div align="center"><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-danger">
				        	<span class="glyphicon glyphicon-floppy-remove"></span></button></a></div></td>
				      </tr>

						</tbody>
						</table>
            			</div>
          				</div>
        				</div>
      					</div>
      			</div>
                
                <div class="tab-pane fade" id="profile1">
                  
                  <div class="example">
      
        			<div class="row">
          			<div class="col-md-6">
            		<div class="panel panel-Primary">
              		<div class="panel-heading">
               		<h3 class="panel-title">เพิ่มสายพันธุ์</h3>
              		</div>
              		<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				      <tr>
				    <td><div align="center"><div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สายพันธุ์ :</h4>
							</div>
							<div class="col-md-7">
								<input type="tel" id="tel" class="form-control" placeholder="สายพันธุ์" required/>
							</div>
						</div></div></td>
				   
				       
				        <td><div align="center"><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-floppy-saved"></span></button></a></div></td>
				      </tr>
				</tbody>
			</table>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-Primary">
              <div class="panel-heading">
                <h3 class="panel-title">สายพันธุ์ที่มีอยู่</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		  
				<thead>
					<tr>
						
				    	<th align="center">สายพันธุ์</th>
				        <th align="center">ลบ</th>
				      </tr>
				    </thead>
				    <tbody>
				   
				      <tr>
				   
				    <td><div align="center">วากิว</div></td>
				        <td><div align="center"><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-danger">
				        	<span class="glyphicon glyphicon-floppy-remove"></span></button></a></div></td>
				      </tr>

						</tbody>
						</table>
            			</div>
          				</div>
        				</div>
      					</div>
                  
                </div>
                
                
                <div class="tab-pane fade" id="profile2">
                  
                  <div class="example">
      
        			<div class="row">
          			<div class="col-md-6">
            		<div class="panel panel-Primary">
              		<div class="panel-heading">
               		<h3 class="panel-title">เลือกแบบฟอร์ม</h3>
              		</div>
              		<table class="table table-striped table-hover  table-bordered">
				    <tbody>
				      <tr>
				    <td><div align="center"><div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ฟอร์ม:</h4>
							</div>
							
						<div class="col-md-7">
				<select class="form-control" name="" id="" value=""  required>
                <option></option>
                <option>แบบที่1</option>
                <option>แบบที่2</option>
                <option>แบบที่3</option>
                <option>แบบที่4</option>
                <option>แบบที่5</option>
           		</select>    
						</div>
						</div>
						</div>
						</td>
				   
				       
				        <td><div align="center"><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-cog"></span></button></a></div></td>
				      </tr>
				</tbody>
			</table>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-Primary">
              <div class="panel-heading">
                <h3 class="panel-title">แบบฟอร์ม</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		  
				<thead>
					<tr>
						
				    	<th align="center">แบบฟอร์ม</th>
				        <th align="center">แก้ไข</th>
				      </tr>
				    </thead>
				    <tbody>
				   
				      <tr>
				   
				    <td><div align="center">แบบที่ 1</div></td>
				        <td><div align="center"><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-danger">
				        	<span class="glyphicon glyphicon-floppy-remove"></span></button></a></div></td>
				      </tr>

						</tbody>
						</table>
            			</div>
          				</div>
        				</div>
      					</div>
                  
                </div>
                 
               
              </div>
            </div>
          </div></div></div>
          </div>
</body>
</html>