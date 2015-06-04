<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<title>ระบบออกใบสูจิบัตรโคประกวดและโคประมูล</title>

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
		<a class="navbar-brand" href="index_member"><img
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
            <li class="active"><a class="nav-link current" href="cow_member">จัดการโค</a></li>
            <li><a href="festivity_mem">งานโค</a></li>
               
            </ul>
             <ul class="nav navbar-nav navbar-right">
               <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-5">
            <span class="sr-only">Toggle navigation</span>
          </button>
         <a class="navbar-brand" href="edit_member.jsp"><img
			src="<c:url value=  "resources/img/m1.png"/> "
			height="40"></a>
        </div>
             <li ><a href="logout" class="fa fa-times">ออกจากระบบ</a></li>
             </ul>
           </div>
           </div>
           </nav>
           </header>

<div align="center"><h1>จัดการโค</h1></div>
<hr>

<div class="row demo-row">
        <div class="col-xs-1"></div>  
  <div class="example">
        <div class="row">
          <div class="col-md-10">
           <div class="panel">
            
              <ul id="myTab1" class="nav nav-pills nav-justified">
                <li class="active"><a href="#home1" data-toggle="tab">โคประกวด</a></li>
                <li><a href="#profile1" data-toggle="tab">โคพันธุ์</a></li>
                 <li><a href="#profile2" data-toggle="tab">โคขุน</a></li>
                
              </ul>
            <!-- -------------------  โคประกวด---------------------------------- -->
              <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="home1">
		  	<div>
		  	<a href=""><button type="button" class="btn btn-success fui-plus-circle"> เพิ่มโคประกวด</button></a>
		  	</div><br>
		  	<table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>ชื่อโค</center></th>
				        <th><center>อายุโค</center></th>
				        <th><center>สายพันธุ์</center></th>
				        <th><center>เพศ</center></th>
				        <th><center>แก้ไข</center></th>
				        <th><center>ลบ</center></th>
				        <th><center>รายละเอียด</center></th>
				      </tr>
				    </thead>
				    <tbody>
				   
				      <tr>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				        <td><center><a href="#"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        
				        <td><center><a href="#"><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>
				        
				        <td><center><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-list"></span></button></a></center></td>
				      </tr>

				</tbody>
			</table>
                </div>
                <!----------------------- โคพันธุ์--------------------------------- -->
                <div class="tab-pane fade" id="profile1">
                <div><a href="admin_addcow2"><button type="button" class="btn btn-success fui-plus-circle"> เพิ่มโคพันธุ์</button></a></div>
                <br>
                  	<table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>ชื่อโค</center></th>
				        <th><center>อายุโค</center></th>
				        <th><center>สายพันธุ์</center></th>
				        <th><center>เพศ</center></th>
				        <th><center>แก้ไข</center></th>
				        <th><center>ลบ</center></th>
				        <th><center>รายละเอียด</center></th>
				      </tr>
				    </thead>
				    <tbody>
				   
				      <tr>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				        <td><center><a href="#?CusID="><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        
				        <td><center><a href="#?CusID="><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>
				        
				        <td><center><a href="viewcow2.jsp?CusID="  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-list"></span></button></a></center></td>
				      </tr>

				</tbody>
			</table>
                </div>
              <!---------------------   โคขุน--------------------------- -->
                 <div class="tab-pane fade" id="profile2">
                 <div>
                 <a href="admin_addcow3"><button type="button" class="btn btn-success fui-plus-circle"> เพิ่มโคขุน</button></a>
                 </div><br>
                 <table class="table table-striped table-hover  table-bordered">
		  	
				<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>หมายเลขโค</center></th>
				        <th><center>สายพันธุ์</center></th>
				        <th><center>แก้ไข</center></th>
				        <th><center>ลบ</center></th>
				        <th><center>รายละเอียด</center></th>
				      </tr>
				    </thead>
				    <tbody>
				    
				      <tr>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				   
				        <td><center><a href="#?CusID="><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        
				        <td><center><a href="#?CusID="><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>
				        
				        <td><center><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-list"></span></button></center></td>
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