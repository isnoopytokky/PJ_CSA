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
		  	<a href="mem_addcow"><button type="button" class="btn btn-success fui-plus-circle"> เพิ่มโคประกวด</button></a>
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
				       
				      </tr>
				    </thead>
				    <tbody>
				     
				      <c:forEach items="${cowlist1}" var="cow" varStatus="loop">		  	
					
			      	<tr>
				  	<td><div align="center">${loop.index+1}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    
				     			    
				        <td><center><a href="#" onclick="onClickEdit('${cow.no}','1')"><button type="button" class="btn btn-primary">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        
				        <td><center><a href="#" onclick="onClickDelete('${cow.no}','1')"><button type="button" class="btn btn-danger">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>				        
				        
					</tr>
					</c:forEach>

				</tbody>
			</table>
                </div>
                <!----------------------- โคพันธุ์--------------------------------- -->
                <div class="tab-pane fade" id="profile1">
                <div><a href="mem_addcow2"><button type="button" class="btn btn-success fui-plus-circle"> เพิ่มโคพันธุ์</button></a></div>
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
				      </tr>
				    </thead>
				    <tbody>
				      
			      	<c:forEach items="${cowlist2}" var="cow" varStatus="loop">		  	
					
			      	<tr>
				  	<td><div align="center">${loop.index+1}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    
				     			    
				        <td><center><a href="#" onclick="onClickEdit('${cow.no}','2')"><button type="button" class="btn btn-primary">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        
				        <td><center><a href="#" onclick="onClickDelete('${cow.no}','2')"><button type="button" class="btn btn-danger">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>				        
				        
					</tr>

				
		   			</c:forEach>

				</tbody>
			</table>
                </div>
              <!---------------------   โคขุน--------------------------- -->
                 <div class="tab-pane fade" id="profile2">
                 <div>
                 <a href="mem_addcow3"><button type="button" class="btn btn-success fui-plus-circle"> เพิ่มโคขุน</button></a>
                 </div><br>
                 <table class="table table-striped table-hover  table-bordered">
		  	
				<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
				    	<th><center>หมายเลขโค</center></th>
				        <th><center>สายพันธุ์</center></th>
				        <th><center>แก้ไข</center></th>
				        <th><center>ลบ</center></th>
				      </tr>
				    </thead>
				    <tbody>
				    
				      <c:forEach items="${cowlist3}" var="cow" varStatus="loop">		  	
					
			      	<tr>
				  	<td><div align="center">${loop.index+1}</div></td>
				    <td><div align="center">${cow.CName}</div></td>
				    <td><div align="center">${cow.CName}</div></td>			    
				    
				     			    
				        <td><center><a href="#" onclick="onClickEdit('${cow.no}','3')"><button type="button" class="btn btn-primary">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></center></td>
				        
				        <td><center><a href="#" onclick="onClickDelete('${cow.no}','3')"><button type="button" class="btn btn-danger">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td>				        
				        
					</tr>

				
		   			</c:forEach>

				</tbody>
			</table>
                </div>
               
              </div>
            </div>
          </div></div></div>
          </div>
         
         <div id="modal-edit" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">แก้ไขข้อมูลโค</h3>
					</div>
					<form:form action="" commandName="cattledetail" id="cattledetail">
						<div class="modal-body">
													
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>ชื่อโค :</h4>
								</div>
								<div class="col-md-6">
									<form:input path="no" id="no" class="form-control hide" placeholder="ชื่อโค" />
									<form:input path="CName" id="CName" class="form-control" placeholder="ชื่อโค" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>วันเกิดโค :</h4>
								</div>
								<div class="col-md-6">
									<form:input path="CBirth" id="CBirth" class="form-control" type="date" />									
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>อายุโค :</h4>
								</div>
								<div class="col-md-6">
									<form:input path="CAge" id="CAge" class="form-control" placeholder="อายุโค" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>สายพันธุ์ :</h4>
								</div>
								<div class="col-md-6">							    
									<form:select path="CGen" id="CGen" class="form-control">
										 <form:options items="${genList}" />
									</form:select>
								
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>เพศ :</h4>
								</div>
								<div class="col-md-6">
									<form:select path="CSex" id="CSex" class="form-control">
										 <form:options items="${sexList}" />
									</form:select>									 
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>รูปโค :</h4>
								</div>
								<div class="col-md-6">
									<input type="file" id="CName" class="form-control" />
									<form:input path="CPic" id="CPic" class="form-control hide" placeholder="รูปโค" />
									
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>ใบพันธุ์ประวัติ :</h4>
								</div>
								<div class="col-md-6">
									<input type="file" id="tel" class="form-control" />
									<form:input path="CPic" id="CPic" class="form-control hide" placeholder="รูปโค" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>ชื่อพ่อโค :</h4>
								</div>
								<div class="col-md-6">
									<form:input path="father" id="father" class="form-control" />
									
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>ชื่อแม่โค :</h4>
								</div>
								<div class="col-md-6">
									<form:input path="mother" id="mother" class="form-control" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-2 col-md-2">
									<h4>ผู้พัฒนาพันธุ์ :</h4>
								</div>
								<div class="col-md-6">
									<form:input path="devoloper" id="devoloper" class="form-control" />
									<form:input path="memberId" id="memberId" class="form-control hide" />
									<input type="text" id="typeid" readonly class="form-control hide"/>
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
		<div id="modal-delete" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<h3 class="modal-title">ลบข้อมูลโค</h3>						
					</div>
					<div class="modal-body">
						<h4 class="control">คุณต้องการที่จะลบข้อมูลนี้ใช่หรือไหม</h4>						
						<input type="text" id="delete-id" readonly class="form-control"/>
					</div>
					<div class="modal-footer">						
						<button type="button" class="btn btn-default"  data-dismiss="modal">ปิด</button>	
						<button type="submit" class="btn btn-danger" id="btn_delete">ลบ</button>					
					</div>
				</div>
			</div>
		</div>
 

</body>
</html>


<script type="text/javascript">

		$( document ).ready(function() {
			$('#CBirth').on('input propertychange paste', function() {
				var age = getAge($('#CBirth').val());
				$("#CAge").val(age);
			});
		});
		
		function getCowInfo(url, params, compName) {
		    $.post(url, params, function(data) {
		    	debugger;
		    	$("#"+ compName +"no").val(params.id);
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
		    	
		    	//$("#typeid").val("1");
		    	
		    	
  			    });
		}

		
		function deleteCow(url, params, compName) {
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
		
        
        function onClickEdit(val,type){        	
        	getCowInfo('/PJ_CSA/api/getCow', {'id': val}, '');
            $("#modal-edit").modal('show');
            $("#typeid").val(type);
        }
        function onClickDelete(val){
            $("#modal-delete").modal('show');
            $("#delete-id").val(val);
        }        
        
        $( "#btn_delete" ).click(function() {
        	deleteCow('/PJ_CSA/api/deleteCow', {'id': $("#delete-id").val()}, 'modal-delete');
       	});
        
        $( "#btn_save" ).click(function() { 
        	var msg ="";
        	var typeid = $("#typeid").val();
        	/*
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
        	}*/
        	if(msg!=""){
        		alert(msg);
        	}
        	else
       		{
	        	$.ajax({
					url:"/PJ_CSA/api/updateCow",
					encoding:"UTF-8",
					method:"POST",
					data:$("#cattledetail").serialize() + "&flg=" + typeid
				}).done(function(a){
					debugger;
					alert("แก้ไขเรียบร้อย");
					window.location.reload();
				});
       		}
        	
       	});
        
        function getAge(date)
        {
	        dob = new Date(date);	        
	        dob.setDate(dob.getDate() - 1);
	        var today = new Date();
	        var age = Math.floor((today- dob) / (365.25 * 24 * 60 * 60 * 1000));
	        if(age < 0) age =0;
	        return age;
        }
	</script>