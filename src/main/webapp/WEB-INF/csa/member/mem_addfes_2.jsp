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
            <li><a href="cow_member">จัดการโค</a></li>
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
<div align="center"><h1>นำโคร่วมประมูลพันธุ์</h1></div>
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
						
				    	<th align="center">ชื่อโค</th>
				        <th align="center">อายุโค</th>
				        <th align="center">สายพันธุ์</th>
				        <th align="center">เพศ</th>
				        <th align="center">นำเข้า</th>
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
						
				    	<th align="center">ชื่อโค</th>
				        <th align="center">อายุโค</th>
				        <th align="center">สายพันธุ์</th>
				        <th align="center">เพศ</th>
				        <th align="center">เพิ่มข้อมูล</th>
				        <th align="center">นำออก</th>
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
				        	<span class="glyphicon glyphicon-plus-sign"></span></button></a></div></td>
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
      				<a href="festivity_mem"><button type="button" class="btn btn-danger glyphicon glyphicon-arrow-left"> </button></a>
		        	
		        	
		      </div> 
		      
	<div class="container">
		<!-- modal -->
		<div id="log" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">เพิ่มข้อมูลโค</h3>
					</div>
					<div class="modal-body">
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ล็อตที่:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ราคาเริ่มต้น:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>น้ำหนัก:</h4>
							</div>
							<div class="col-md-6">
								<input type="password" class="form-control">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">ปิด</button>
						<a href="index_admin"><button type="button"
								class="btn btn-primary">บันทึก</button></a>
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
	</div>
</body>
</html>