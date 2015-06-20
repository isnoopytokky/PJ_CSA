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
            <li class="active"><a class="nav-link current" href="setlist">ตั้งค่ารายการ</a></li>
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
								<form:form action="" commandName="colorType" id="colorForm">									
									<form:input path="colorName" id="colorName" class="form-control"  placeholder="สี"/>									
								</form:form>
							</div>
						</div></div></td>
				   
				       
				        <td><div align="center"><a><button type="button" class="btn btn-success" id="btn_color_save">
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
				   
				   	  <c:forEach items="${colortypelist }" var="color" varStatus="loop">
				      <tr>				   
				    	<td><div align="center">${color.colorName}</div></td>
				        <td>
				        	<div align="center"><a href="#" onclick="onClickDeleteColor('${color.idcolor}')"><button type="button" class="btn btn-danger">
			        			<span class="glyphicon glyphicon-floppy-remove"></span></button></a>
		        			</div>
	        			</td>
				      </tr>
				      </c:forEach>

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
								<form:form action="" commandName="genType" id="genForm">									
									<form:input path="genName" id="genName" class="form-control"  placeholder="สายพันธุ์"/>									
								</form:form>
							</div>
						</div></div></td>
				   
				       
				        <td><div align="center"><a><button type="button" class="btn btn-success" id="btn_gen_save">
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
				   
 
				      
				      <c:forEach items="${genTypelist }" var="genType" varStatus="loop">
				      <tr>				   
				    	<td><div align="center">${genType.genName}</div></td>
				        <td>
				        	<div align="center"><a href="#"  onclick="onClickDeleteGen('${genType.idgen}')"><button type="button" class="btn btn-danger">
			        			<span class="glyphicon glyphicon-floppy-remove"></span></button></a>
		        			</div>
	        			</td>
				      </tr>
				      </c:forEach>
				      

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
          
          
          
          <!-- modal -->
		<div id="modal-delete-color" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ลบสีโค</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>						
						<input type="text" id="delete-color-id" readonly class="form-control hide"/>
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="submit" class="btn btn-danger" id="btn_color_delete">ลบ</button>					
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		
		<!-- modal -->
		<div id="modal-delete-gen" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ลบพันธุ์โค</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>						
						<input type="text" id="delete-gen-id" readonly class="form-control hide"/>
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="submit" class="btn btn-danger" id="btn_gen_delete">ลบ</button>					
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		
		<script type="text/javascript">
		
				$( "#btn_color_save" ).click(function() { 
		         	var msg ="";		         	 
					var colorname = $("#colorName").val();
		         	
		         	if (colorname==""){
		        		msg+="กรุณากรอกสี\n";
		        	}
		         	
		         	if(msg!=""){
		         		alert(msg);
		         		$("#colorName").focus();
		         	}
		         	else{
		 	        	$.ajax({
		 					url:"/PJ_CSA/api/addColor",
		 					encoding:"UTF-8",
		 					method:"POST",
		 					data:$("#colorForm").serialize() 
		 				}).done(function(a){
		 					debugger;
		 					alert("เพิ่มเรียบร้อย");
		 					window.location.href = ("setlist");
		 				});
	        		}
		         	
	        	});
				
				function deleteColor(url, params, compName) {
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
			    
			    function onClickDeleteColor(val){
			        $("#modal-delete-color").modal('show');
			        $("#delete-color-id").val(val);
			    }        
			    
			    $( "#btn_color_delete" ).click(function() {
			    	deleteColor('/PJ_CSA/api/deleteColor', {'id': $("#delete-color-id").val()}, 'modal-delete-color');
			   	});
			    
			    
			    ///
			    $( "#btn_gen_save" ).click(function() { 
		         	var msg ="";
		         	var genname = $("#genName").val();
		         	
		         	if (genname==""){
		        		msg+="กรุณากรอกชื่อสายพันธุ์\n";
		        	}
		         	
		         	if(msg!=""){
		         		alert(msg);
		         		$("#genName").focus();
		         	}
		         	else{
		 	        	$.ajax({
		 					url:"/PJ_CSA/api/addGen",
		 					encoding:"UTF-8",
		 					method:"POST",
		 					data:$("#genForm").serialize() 
		 				}).done(function(a){
		 					debugger;
		 					alert("เพิ่มเรียบร้อย");
		 					window.location.href = ("setlist");
		 				});
	        		}
		         	
	        	});
			    
			    function deleteGen(url, params, compName) {
			        $.post(url, params, function(data) {
			        	if(data=="success")
			    		{
			    			alert( "ลบข้อมูลเรียบร้อย" );
			   	  			$("#modal-delete-gen").modal('hide');
			   	  			window.location.reload();
			    		}
			        	else
			    		{
			        		alert( "ไม่สามารถลบข้อมูลได้" );
			    		}
			        });
				}
			    
			    function onClickDeleteGen(val){
			        $("#modal-delete-gen").modal('show');
			        $("#delete-gen-id").val(val);
			    }        
			    
			    $( "#btn_gen_delete" ).click(function() {
			    	deleteGen('/PJ_CSA/api/deleteGen', {'id': $("#delete-gen-id").val()}, 'modal-delete-gen');
			   	});
		
		</script>
</body>
</html>