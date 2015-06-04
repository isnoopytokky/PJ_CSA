<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
           <!--  <li><a href="admin_section.jsp">หน้าแรก</a></li> -->
            <li><a href="setlist">ตั้งค่ารายการ</a></li>
              <!-- ดอบดาว -->
            <!-- ดอบดาว -->
            <ul class="nav navbar-nav navbar-right">
            <li class="dropdown" >
              <a  class="nav-link current" href="#" class="dropdown-toggle" data-toggle="dropdown">จัดการโค <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="admin_viewcowsh.jsp">โคประกวด</a></li>
                <li class="active"><a href="admin_viewcow2">โคประมูล</a></li>
                
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
		<h1><center>โคประมูลโคขุน</center></h1>
		<hr>
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title" style="font-size: 25px;">รายชื่อโคประมูลโคขุน</h4>
	   	</div>
		<div class="panel-body">
		  	<table class="table table-striped table-hover  table-bordered">
		  	<button type="button" class="btn btn-success fui-plus-circle"><a href="admin_addcow3"><font color="white"> เพิ่มโคขุน</font></a></button> |
		  	<button type="button" class="btn btn-danger fui-plus-circle"><a href="admin_viewcow2"><font color="white"> รายชื่อโคพันธุ์</font></a></button>
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
		    <div class="row">
		        <div class="col-md-offset-10"><p>
		        	<button type="button" class="btn btn-success glyphicon glyphicon-print"> พิมพ์ใบเสร็จทั้งหมด</button>
		        </p></div>        
		   	</div>
		</div>
	</div>
</div> <!-- end container -->

			
			<ul class="nav navbar-nav navbar-right">
			<li class="font-nav"></li>
			<li class="font-nav"></li>
		</ul>
			 
		   



<div class="container">
		<!-- modal -->
		<div id="log" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					
				</div>
			</div>
		</div>
		<!-- modal -->
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
	
<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-48721682-1', 'bootflat.github.io');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
	</script>
</body>
</html>