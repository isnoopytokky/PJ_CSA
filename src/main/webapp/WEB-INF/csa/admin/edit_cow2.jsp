<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>แก้ไขโคประมูลโคพันธุ์</title>

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
<c:if test="${sessionScope.name == null }">
	<c:redirect url="index"/>
</c:if>

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
                <li><a href="report">ออกรายงาน</a></li>
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
<h1 align="center">แก้ไขโคประมูลโคพันธุ์</h1>
<hr>

<div class="example">
      
        <div class="row">
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">ข้อมูลโค</h3>
              </div>
              <div class="panel-body">
		 
		
            
           <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ชื่อโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="ชื่อโค" required/>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>หมายเลขโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="หมายเลขโค" required/>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>วันเกิดโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="date" id="tel" class="form-control" placeholder="ชื่องาน" required/>
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>อายุโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="อายุโค" required/>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สายพันธุ์ :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="gene" id="gene" value=""  required>
                <option></option>
                <option>วากิว</option>
                <option>กำแพงแสน</option>
               
           		</select>    
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>สี :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="gene" id="gene" value=""  required>
                <option></option>
                <option>ขาว</option>
                <option>ดำ</option>
               
           		</select>    
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>เพศ :</h4>
							</div>
							<div class="col-md-7">
				<select class="form-control" name="gene" id="gene" value=""  required>
                <option></option>
                <option>ผู้</option>
                <option>เมีย</option>
               
           		</select>    
							</div>
						</div>
									
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>รูปโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="file" id="tel" class="form-control" placeholder="อายุโค" required/>
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ใบพันธุ์ประวัติ :</h4>
							</div>
							<div class="col-md-7">
								<input type="file" id="tel" class="form-control" placeholder="อายุโค" required/>
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ชื่อพ่อโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="ชื่อพ่อโค" required/>
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ชื่อแม่โค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="ชื่อแม่โค" required/>
							</div>
						</div>
            </div>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">เพิ่มข้อมูล</h3>
              </div>
                  <div class="panel-body">
		 
		
            
           <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>นน. แรกคลอด :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="น้ำหนักแรกคลอด" required/>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>นน. หย่านม :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="น้ำหนักหย่านม" required/>
							</div>
						</div>
						
			 <div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>นน. หนึ่งปี :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="น้ำหนักอายุ1ปี" required/>
							</div>
						</div>
			
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>อัตราการให้นม :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="อัตตราการให้นม " required/>
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ปู่โค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="ปู่โค " required/>
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>ย่าโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="ย่าโค " required/>
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>พ่อปู่โค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="พ่อปู่โค " required/>
							</div>
						</div>
						
			<div class="row form-group">
							<div class="col-md-offset-1 col-md-2">
								<h4>แม่ย่าโค :</h4>
							</div>
							<div class="col-md-7">
								<input type="text" id="tel" class="form-control" placeholder="แม่ย่าโค " required/>
							</div>
						</div>
						
			 
			
            </div>
            </div>
            
          </div>
        </div>
      </div>	
		
         
   
     
      
      <div align="center">
      				<a href="admin_viewcow2"><button type="button" class="btn btn-danger glyphicon glyphicon-arrow-left"> </button></a>
		        	<button type="button" class="btn btn-success glyphicon glyphicon-floppy-saved"> บันทึก</button>
		        	
		      </div> 
</body>
</html>