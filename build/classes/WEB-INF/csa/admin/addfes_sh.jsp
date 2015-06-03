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
           
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">จัดการโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="admin_viewcowsh">โคประกวด</a></li>
                <li><a href="admin_viewcow2">โคประมูล</a></li>
               
                </ul>
                </li>
             
              <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">จัดการงานโค<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="festivity">งานโค</a></li>
                <li><a href="#">ประวัติงานโค</a></li>
               
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
             <li ><a href="logout.jsp" class="fa fa-times">ออกจากระบบ</a></li>
             </ul>
           </div>
           </div>
           </nav>
</header>
<div align="center"><h1>นำโคร่วมงาน</h1></div>
<hr>

<div class="example">
      
        <div class="row">
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">รายชื่อโค</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		  
				<thead>
					<tr>
						
				    	<th><center>ชื่อโค</center></th>
				        <th><center>อายุโค</center></th>
				        <th><center>สายพันธุ์</center></th>
				        <th><center>เพศ</center></th>
				        <th><center>นำเข้า</center></th>
				      </tr>
				    </thead>
				    <tbody>
				   
				      <tr>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				   
				       
				        
				        <td><div align="center"><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-log-in"></span></button></a></div></td>
				      </tr>

				</tbody>
			</table>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">โคที่ร่วมงาน</h3>
              </div>
              <table class="table table-striped table-hover  table-bordered">
		  
				<thead>
					<tr>
						
				    	<th><center>ชื่อโค</center></th>
				        <th><center>อายุโค</center></th>
				        <th><center>สายพันธุ์</center></th>
				        <th><center>เพศ</center></th>
				        <th><center>นำออก</center></th>
				      </tr>
				    </thead>
				    <tbody>
				   
				      <tr>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				    <td><div align="center"></div></td>
				   
				       
				        
				        <td><div align="center"><a href="#"  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-log-out"></span></button></a></div></td>
				      </tr>

				</tbody>
			</table>
            </div>
            
          </div>
        </div>
      </div>	
		
         
   
     
      
      <div align="center">
      				<a href=""><button type="button" class="btn btn-danger glyphicon glyphicon-arrow-left"> </button></a>
		        	<button type="button" class="btn btn-success glyphicon glyphicon-print"> พิมพ์ใบสูจิบัตรเพศผู้</button>
		        	<button type="button" class="btn btn-success glyphicon glyphicon-print"> พิมพ์ใบสูจิบัตรเพศเมีย</button>
		      </div> 
</body>
</html>