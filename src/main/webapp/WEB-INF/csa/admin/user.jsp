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
              <li class="active"><a class="nav-link current" href="user">สมาชิก</a></li>
                <li><a href="report">ออกรายงาน</a></li>
            </ul>
             <ul class="nav navbar-nav navbar-right">
            
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
	
		<h1><center>สมาชิก</center></h1>
		<hr>
		
		 <div class="row demo-row">
        <div class="col-xs-1"></div>
        
          <div class="col-xs-10">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">รายชื่อสมาชิก</h4>
	   	</div>
		<div class="panel-body">
		
		<!-- 
		  	<table class="table table-striped table-hover  table-bordered">
				<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>ชื่อผู้ใช้</center></th>
				        <th><center>ชื่อ</center></th>
				        <th><center>นามสกุล</center></th>
				        <th><center>เบอร์โทร</center></th>
				        <th><center>สถานะ</center></th>
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
				    <td><img src="img/new.gif" alt="" width="20" height="9" />
				</td>
				        <td><center><a href="update.jsp?CusID="><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        
				        <td><center><a href="del_user.jsp?CusID="><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>
				        
				        <td><center><a href="viewuser.jsp?CusID="  data-toggle="modal"
				data-target="#log"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-list"></span></button></a></center></td>
					</tr>
				</tbody>
	
			</table>
			
			
			<ul class="nav navbar-nav navbar-right">
			<li class="font-nav"></li>
			<li class="font-nav"></li>
		</ul>
			
		    <div class="row">
		        <div class="col-md-offset-10"><p>
		        	<button type="button" class="btn btn-success glyphicon glyphicon-print"> พิมพ์ใบเสร็จทั้งหมด</button>
		        </p></div>        
		   	</div>
		   	-->
		   	<table class="table table-striped table-hover  table-bordered">		  	
		  		<!--
		  		<button type="button" class="btn btn-success fui-plus-circle"><a href="newfestivity"><font color="white"> เพิ่มงานโค</font></a></button>
		  		 -->
				<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>ชื่อผู้ใช้</center></th>
				        <th><center>ชื่อ</center></th>
				        <th><center>นามสกุล</center></th>
				        <th><center>เบอร์โทร</center></th>
				        <th><center>สถานะ</center></th>
				        <th><center>แก้ไข</center></th>
				        <th><center>ลบ</center></th>
				        <th><center>รายละเอียด</center></th>
			      </tr>
			    </thead>
			    <tbody>		   	
					<c:forEach items="${memberlist }" var="member" varStatus="loop">		  	
					
			      	<tr>
				  
				    <td><div align="center">${loop.index+1}</div></td>
				    <td><div align="center">${member.user}</div></td>
				    <td><div align="center">${member.name}</div></td>
				    <td><div align="center">${member.surname}</div></td>
				    <td><div align="center">${member.tel}</div></td>
				    <td><div align="center">
						    <c:choose>
						    	<c:when test="${member.statusNo.statusName.equals('ผู้ดูแลระบบ')}">
							        ${member.statusNo.statusName}
							    </c:when>
							    <c:when test="${member.statusNo.statusName.equals('เจ้าหน้าที่')}">
							        ${member.statusNo.statusName}
							    </c:when>							    
							    <c:when test="${member.statusNo.statusName.equals('เจ้าหน้าที่')}">
							        ${member.statusNo.statusName}
							    </c:when>
							    <c:when test="${member.statusNo.statusName.equals('เจ้าหน้าที่')}">
							        ${member.statusNo.statusName}
							    </c:when>
							    <c:otherwise>
							        ${member.statusNo.statusName}
							    </c:otherwise>
							</c:choose>				    
						    </div></td>				    
				        <td><center><a href="#" onclick="onClickEdit('${member.id}')"><button type="button" class="btn btn-primary">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        
				        <td><center><a href="#" onclick="onClickDelete('${member.id}')"><button type="button" class="btn btn-danger">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>
				        
				        <td><center><a href="#" onclick="onClickView('${member.id}')"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-list"></span></button></a></center></td>
					</tr>

				
		   	</c:forEach>
		   	</tbody>
			</table>
		    <div class="row">
		        <div class="col-md-offset-10"><p>
		        	<!-- <button type="button" class="btn btn-success glyphicon glyphicon-print"> พิมพ์ใบเสร็จทั้งหมด</button>  -->
		        </p></div>        
		   	</div>
		   	
		</div>
	</div>
	</div>
	</div>
	
 <!-- end container -->



<div class="container">
		<!-- modal -->
		<div id="modal-edit" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">แก้ไขข้อมูลสมาชิก</h3>
					</div>
					<form:form action="" commandName="member" id="member">
					<div class="modal-body">
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อผู้ใช้:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="id" id="id" class="form-control hide"/>
								<form:input path="user" id="user" class="form-control"/>
							</div>
						</div>
						<div class="row form-group hide">
							<div class="col-md-offset-2 col-md-2">
								<h4>รหัสผ่าน:</h4>
							</div>
							<div class="col-md-6">
								<form:password path="pass" id="password" class="form-control"/>
							</div>
						</div>
						<div class="row form-group hide">
							<div class="col-md-offset-2 col-md-2">
								<h4>ยืนยัน-รหัสผ่าน:</h4>
							</div>
							<div class="col-md-6">
								<input type="password" name="password2" id="password2" class="form-control"/>
								<input type="text" id="password-old" class="form-control hide"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>อีเมลล์:</h4>
							</div>
							<div class="col-md-6">
								<form:input type="email" path="email" id="email" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เลขประชาชน:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="idcard" id="idcard" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อ:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="name" id="name" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>นามสกุล:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="surname" id="surname" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ที่อยู่:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="address" id="address" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ฟาร์ม:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="farm" id="farm" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เบอร์โทร:</h4>
							</div>
							<div class="col-md-6">
								<form:input path="tel" id="tel" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เบอร์โทร:</h4>
							</div>
							<div class="col-md-6">								
								<form:select path="StatusNo.idstatusNo" id="idstatusNo" class="form-control">
								 <form:options items="${statusNoList}" />
								</form:select>
							</div>
						</div>
					</div>
					
					</form:form>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>
						<button type="submit" class="btn btn-primary" id="btn_save">บันทึก</button>
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		
		<!-- modal -->
		<div id="modal-view" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ดูข้อมูลสมาชิก</h3>
					</div>
					<form:form action="" commandName="member" id="member">
					<div class="modal-body">
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อผู้ใช้:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-id" readonly class="form-control hide"/>
								<input type="text" id="modal-view-user" readonly class="form-control"/>
							</div>
						</div>
						 
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>อีเมลล์:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-email" readonly id="email" class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เลขประชาชน:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-idcard" readonly class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ชื่อ:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-name" readonly class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>นามสกุล:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-surname" readonly class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ที่อยู่:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-address" readonly class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>ฟาร์ม:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-farm" readonly class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>เบอร์โทร:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-tel" readonly class="form-control"/>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-offset-2 col-md-2">
								<h4>สถานะ:</h4>
							</div>
							<div class="col-md-6">
								<input type="text" id="modal-view-statusNo" readonly class="form-control"/>
							</div>
						</div>
					</div>					
					</form:form>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>						
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		
		<!-- modal -->
		<div id="modal-delete" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ลบข้อมูลสมาชิก</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไหม</h4>						
						<input type="text" id="delete-id" readonly class="form-control hide"/>
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="submit" class="btn btn-danger" id="btn_delete">ลบ</button>					
					</div>
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


	<script type="text/javascript">
		function getUserInfo(url, params, compName) {
	        $.post(url, params, function(data) {
	        	debugger;
	        	$("#"+ compName +"id").val(params.id);
	        	$("#"+ compName +"user").val(data.user.user);
	        	$("#"+ compName +"pass").val(data.user.pass);
	        	$("#"+ compName +"email").val(data.user.email);
	        	$("#"+ compName +"idcard").val(data.user.idcard);
	        	$("#"+ compName +"name").val(data.user.name);
	        	$("#"+ compName +"surname").val(data.user.surname);
	        	$("#"+ compName +"address").val(data.user.address);
	        	$("#"+ compName +"farm").val(data.user.farm);
	        	$("#"+ compName +"tel").val(data.user.tel);	        	
	        	//data.statusNoId
	        	//data.statusNoName
	        	$("#"+ compName +"statusNo").val(data.statusNoName);	 
	        	
	        	
	        	if(compName == '')
        		{
	        		$("#idstatusNo").val(data.statusNoId);
	        		$("#password-old").val(data.user.pass);
	        	
        		}
	        });
		}
		
		function deleteUser(url, params, compName) {
	        $.post(url, params, function(data) {
	        	if(data=="success")
        		{
        			alert( "ลบข้อมูลเรียบร้อย" );
       	  			$("#modal-delete").modal('hide');
       	  			window.location.reload();
        		}
	        	else
        		{
	        		alert( "ไม่สามารถลบข้อมูลได้" );
        		}
	        });
		}
		
        
        function onClickEdit(val){        	
        	getUserInfo('/PJ_CSA/api/getUser', {'id': val}, '');
            $("#modal-edit").modal('show');
        }
        function onClickDelete(val){        	
            //ajaxLink('/PJ_CSA/api/deleteUser', {'id': val}, 'modal-delete');
            $("#modal-delete").modal('show');
            $("#delete-id").val(val);
        }
        function onClickView(val){        	
        	getUserInfo('/PJ_CSA/api/getUser', {'id': val}, 'modal-view-');
            $("#modal-view").modal('show');            
        }
        
        $( "#btn_delete" ).click(function() {
        	deleteUser('/PJ_CSA/api/deleteUser', {'id': $("#delete-id").val()}, 'modal-delete');
       	});
        $( "#btn_save" ).click(function() { 
        	var flg = 'new';
        	var user = $("#user").val();
        	var pass = $("#password").val();
        	var pass2 = $("#password2").val();
        	var email = $("#email").val();
        	var idcard = $("#idcard").val();
        	var name = $("#name").val();
        	var surname = $("#surname").val();
        	var address = $("#address").val();
        	var farm = $("#farm").val();
        	var tel = $("#tel").val();
        	var msg ="";
        	if (user==""){
        		msg+="กรุณากรอกชื่อผู้ใช้\n";
        	}
        	if (pass!=""){
        		//msg+="กรุณากรอกรหัสผ่าน\n";        	
	        	if (pass!=pass2){
	        		msg+="รหัสไม่ตรงกัน\n";
	        	}
        	}
        	else
       		{
        		$("#password").val($("#password-old").val());
        		flg = 'old';        		
        	}
        	if (email=="" ||email.indexOf('@') == -1 || email.indexOf('.') == -1){
        		error = 1;
        		msg+="กรุณากรอกอีเมลล์\n";
        	}
        	if (idcard==""){
        		msg+="กรุณากรอกเลขบัตรประชาชน\n";
        	}
        	if (name==""){
        		msg+="กรุณากรอกชื่อ\n";
        	}
        	if (surname==""){
        		msg+="กรุณากรอกนามสกุล\n";
        	}
        	if (address==""){
        		msg+="กรุณากรอกที่อยู่\n";
        	}
        	if (farm==""){
        		msg+="กรุณากรอกชื่อฟาร์ม\n";
        	}
        	if (tel==""){
        		msg+="กรุณากรอกเบอร์โทร\n";
        	}
        	if(msg!=""){
        		alert(msg);
        	}
        	else
       		{
	        	$.ajax({
					url:"/PJ_CSA/api/updateUser",
					encoding:"UTF-8",
					method:"POST",
					data:$("#member").serialize() + '&flg=' + flg
				}).done(function(a){
					debugger;
					alert("แก้ไขเรียบร้อย");
					window.location.reload();
				});
       		}
        	
       	});
	</script>

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