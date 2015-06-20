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
            <li class="active"><a class="nav-link current" href="work">งานโค</a></li>
              <li><a href="user">สมาชิก</a></li>
               <li><a href="#">ออกรายงาน</a></li>
               
            </ul>
             <ul class="nav navbar-nav navbar-right">
              <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-5">
            <span class="sr-only">Toggle navigation</span>
          </button>
         <a class="navbar-brand" href="edit_profile"><img
			src="<c:url value="resources/img/o1.png"/> "height="40"></a>
        </div>
             <li ><a href="logout" class="fa fa-times">ออกจากระบบ</a></li>
             </ul>
           </div>
           </div>
           </nav>
           </header>
           
		<h1><center>ข้อมูลงานโค</center></h1>
		<hr>
		 <div class="row demo-row">
        <div class="col-xs-12">
        
          <div class="container">
<div class="panel panel-primary">
		<div class="panel-heading">
	        <h4 class="panel-title" style="font-size: 25px;">รายชื่องานโค</h4>
	   	</div>
		<div class="panel-body">
		<form action='' method='post'>		
		  	<table class="table table-striped table-hover  table-bordered">
		  	
		  		<button type="button" class="btn btn-success fui-plus-circle"><a href="newfestivity"><font color="white"> เพิ่มงานโค</font></a></button>
				<thead>
				
					
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>ชื่องาน</center></th>
				        <th><center>ประเภทงาน</center></th>
				        <th><center>วันเริ่มงาน</center></th>
				        <th><center>สถานะงาน</center></th>
				        <th><center>แก้ไข</center></th>
				        <th><center>ลบ</center></th>
				        <th><center>นำโคร่วมงาน</center></th>
				      </tr>
				    </thead>
				    <tbody>
				    
				    <c:forEach items="${festivitylist }" var="festivity" varStatus="loop">
				    <tr>
				    <td><div align="center">${loop.index+1}</div></td>
				    <td><div align="center">${festivity.title}</div></td>
				    <td><div align="center">${festivity.type.name}</div></td>				    				    
				    <td><div align="center">${festivity.SWork}</div></td>
				    <td><div class="col-md-offset-3"><input type='checkbox' checked data-toggle='switch' id='custom-switch-01' /></div></td>
			        <td><center><a><button type="button" class="btn btn-primary" onclick="onClickEdit('${festivity.no}','1')">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        	
			        <td><center><a><button type="button" class="btn btn-danger" onclick="onClickDelete('${festivity.no}','1')">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>
			        <td><center><a href="addfes_sh?id=${festivity.no}"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-plus-sign"></span></button></a></center></td>
				      </tr>
				      </c:forEach>

				</tbody>
			</table>
		  
		   	
		   	</form>
		</div>
	</div>
</div> <!-- end container -->
</div>
</div>

			
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
		
		<!-- modal -->
		<div id="modal-delete" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ลบงานโค</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไม่</h4>						
						<input type="text" id="delete-id" readonly class="form-control hide"/>
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="submit" class="btn btn-danger" id="btn_delete">ลบ</button>					
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		
		<!-- modal -->
		<div id="modal-edit" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">แก้ไขข้อมูลงานโค</h3>
					</div>
					
						<div class="modal-body">
							<form:form action="" commandName="festivity" id="festivity">
							 <div class="row form-group">
							 	<div class="col-md-offset-2 col-md-3">
							 		<h4>ประเภทงาน :</h4>
							 	</div>
							 	<div class="col-md-5">		
							 		 <select id="typeids"  class="form-control">
								 	 <c:forEach items="${typeList }" var="type" varStatus="loop">
								 	 	<option value="${type.key}">${type.value}</option>
								 	 </c:forEach>			 	  
								 	 </select>	
								 	 					 				 		    
							 	</div>
							 </div>
							 
							 <div class="row form-group">
							 	<div class="col-md-offset-2 col-md-3">
							 		<h4>ชื่องาน :</h4>
							 	</div>
							 	<div class="col-md-5">			 		
							 		<form:input path="title" id="title" class="form-control"  placeholder="ชื่องาน"/>
							 	</div>
							 </div>
							 
							 <div class="row form-group">
							 	<div class="col-md-offset-2 col-md-3">
							 		<h4>สายพันธุ์ :</h4>
							 	</div>
							 	<div class="col-md-5">
							 		
									<form:select path="gene" id="gene" class="form-control">
										<form:options items="${genList}" />
									</form:select>			 	
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-3">
									<h4>วันเริ่มงาน :</h4>
								</div>
								<div class="col-md-5">					
									<form:input path="SWork" id="SWork" class="form-control" type="date"/>
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-3">
									<h4>วันสิ้นสุดงาน :</h4>
								</div>
								<div class="col-md-5">
									<form:input path="EWork" id="EWork" class="form-control" type="date"/>
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-3">
									<h4>เริ่มรับข้อมูล :</h4>
								</div>
								<div class="col-md-5">
									<form:input path="SData" id="SData" class="form-control" type="date"/>
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-3">
									<h4>สิ้นสุดรับข้อมูล :</h4>
								</div>
								<div class="col-md-5">
									<form:input path="EData" id="EData" class="form-control" type="date"/>
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-3">
									<h4>โลโก้งาน :</h4>
								</div>
								<div class="col-md-5">
									<input type="file" id="tel" class="form-control" />
									<form:input path="logo" id="logo" class="form-control hide" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-3">
									<h4>โปสเตอร์งาน :</h4>
								</div>
								<div class="col-md-5">
									<input type="file" id="tel" class="form-control" />
									<form:input path="poster" id="poster" class="form-control hide" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-3">
									<h4>รายละเอียดงาน :</h4>
								</div>
								<div class="col-md-5">					
									<form:textarea path="details" id="details" class="form-control" />				
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-3">
									<h4>ติดต่อสอบถาม :</h4>
								</div>
								<div class="col-md-5">					
									<form:input path="location" id="location" class="form-control" />
									<form:input path="memberId" id="memberId" class="form-control hide" />
								</div>
							</div>
							</form:form>
						</div>
						
						<div class="modal-footer">
						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>
						<button type="submit" class="btn btn-primary" id="btn_save">บันทึก</button>
					</div>
				</div>
			</div>
		</div>
		<!-- modal -->
		
	</div>
	
	<script type="text/javascript">
		
		function deleteFestivity(url, params, compName) {
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
	    
	    function onClickDelete(val){
	        $("#modal-delete").modal('show');
	        $("#delete-id").val(val);
	    }        
	    
	    $( "#btn_delete" ).click(function() {
	    	deleteFestivity('/PJ_CSA/api/deleteFestivity', {'id': $("#delete-id").val()}, 'modal-delete');
	   	});
	    
	    function getFestivityInfo(url, params, compName) {
	    	
	    	debugger;
	    	
		    $.post(url, params, function(data) {
		    	debugger;
		    	/*$("#"+ compName +"no").val(params.id);
		    	$("#"+ compName +"CName").val(data.cattledetail.cname);
		    	$("#"+ compName +"CBirth").val(data.cattledetail.cbirth);
		    	$("#"+ compName +"CAge").val(data.cattledetail.cage);
		    	$("#"+ compName +"CSex").val(data.cattledetail.csex);
		    	//$("#"+ compName +"CColor").val(data.cattledetail.ccolor);
		    	$("#"+ compName +"CGen").val(data.cattledetail.cgen);
		    	$("#"+ compName +"CPic").val(data.cattledetail.cpic);
		    	$("#"+ compName +"father").val(data.cattledetail.father);
		    	$("#"+ compName +"mother").val(data.cattledetail.mother);
		    	$("#"+ compName +"memberId").val(data.cattledetail.memberId);
		    	$("#"+ compName +"devoloper").val(data.cattledetail.devoloper);
		    	*/
		    	//$("#typeid").val("1");
		    	
		    	
  			    });
		}
	    
	    function onClickEdit(val,type){        	
	    	getFestivityInfo('/PJ_CSA/api/getFestivity', {'id': val}, '');
	        $("#modal-edit").modal('show');
	        $("#typeid").val(type);
	    }
	    
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