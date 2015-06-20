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
            <li><a href="work">งานโค</a></li>
           
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
		 
			 <form:form action="" commandName="festivity" id="festivity">
			 <div class="row form-group">
			 	<div class="col-md-offset-1 col-md-2">
			 		<h4>ประเภทงาน :</h4>
			 	</div>
			 	<div class="col-md-7">
			 	 
			 	 <select id="typeids"  class="form-control">
			 	 <c:forEach items="${typeList }" var="type" varStatus="loop">
			 	 	<option value="${type.key}">${type.value}</option>
			 	 </c:forEach>			 	  
			 	 </select>	
			 	 
			 	 
			 	 	    
			 	</div>
			 </div>
			 
			 <div class="row form-group">
			 	<div class="col-md-offset-1 col-md-2">
			 		<h4>ชื่องาน :</h4>
			 	</div>
			 	<div class="col-md-7">			 		
			 		<form:input path="title" id="title" class="form-control"  placeholder="ชื่องาน"/>
			 	</div>
			 </div>
			 
			 <div class="row form-group">
			 	<div class="col-md-offset-1 col-md-2">
			 		<h4>สายพันธุ์ :</h4>
			 	</div>
			 	<div class="col-md-7">
			 		
		 		<form:select path="gene" id="gene" class="form-control">
		 			<form:options items="${genList}" />
		 		</form:select>			 	
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>วันเริ่มงาน :</h4>
				</div>
				<div class="col-md-7">					
					<form:input path="SWork" id="SWork" class="form-control" type="date"/>
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>วันสิ้นสุดงาน :</h4>
				</div>
				<div class="col-md-7">
					<form:input path="EWork" id="EWork" class="form-control" type="date"/>
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>เริ่มรับข้อมูล :</h4>
				</div>
				<div class="col-md-7">
					<form:input path="SData" id="SData" class="form-control" type="date"/>
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>สิ้นสุดรับข้อมูล :</h4>
				</div>
				<div class="col-md-7">
					<form:input path="EData" id="EData" class="form-control" type="date"/>
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>โลโก้งาน :</h4>
				</div>
				<div class="col-md-7">
					<input type="file" id="tel" class="form-control" />
					<form:input path="logo" id="logo" class="form-control hide" />
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>โปสเตอร์งาน :</h4>
				</div>
				<div class="col-md-7">
					<input type="file" id="tel" class="form-control" />
					<form:input path="poster" id="poster" class="form-control hide" />
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>รายละเอียดงาน :</h4>
				</div>
				<div class="col-md-7">					
					<form:textarea path="details" id="details" class="form-control" />				
				</div>
			</div>
	
			<div class="row form-group">
				<div class="col-md-offset-1 col-md-2">
					<h4>ติดต่อสอบถาม :</h4>
				</div>
				<div class="col-md-7">					
					<form:input path="location" id="location" class="form-control" />
					<form:input path="memberId" id="memberId" class="form-control hide" />
				</div>
			</div>
			</form:form>
	
			<div class="row">
				<div class="col-md-12 text-center">
					
					<button type="button" name="btn_save" id="btn_save" class="btn btn-success">จัดงาน</button>					
					<a href="work">
						<button type="button" class="btn btn-danger fui-plus-circle">ย้อนกลับ</button>
					</a>
				</div>
			</div>
                    
            </div>
            
              </div>
            </div>
         </div>
        
         <script type="text/javascript">
         
         
         $( "#btn_save" ).click(function() { 
         	var msg ="";
         	var typeid = $("#typeids").val();
         	
         	 
         	if(msg!=""){
         		alert(msg);
         	}
         	else
        		{
 	        	$.ajax({
 					url:"/PJ_CSA/api/addFestivity",
 					encoding:"UTF-8",
 					method:"POST",
 					data:$("#festivity").serialize() + "&flg=" + typeid
 				}).done(function(a){
 					debugger;
 					alert("เพิ่มเรียบร้อย");
 					window.location.href = ("work");
 				});
        		}
         	
        	});
         
         </script>



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