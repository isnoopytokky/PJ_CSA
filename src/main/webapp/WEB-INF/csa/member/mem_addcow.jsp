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
	
	
	    <h1 align="center">ลงทะเบียนโคประกวด</h1>
	    <hr>
	    
	    
		
	  <div class="row demo-row">
        <div class="col-xs-3"></div>
        
          <div class="col-xs-6">
<div class="panel panel-primary">
		<div class="panel-heading">
	       <h4 class="panel-title" style="font-size: 25px;">ข้อมูลโคประกวด</h4>
	   	</div>
		<div class="panel-body">
		 
		
            				<form:form action="" commandName="cattledetail" id="cattledetail">	
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>ชื่อโค :</h4>
								</div>
								<div class="col-md-7">									
									<form:input path="CName" id="CName" class="form-control" placeholder="ชื่อโค" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>วันเกิดโค :</h4>
								</div>
								<div class="col-md-7">
									<form:input path="CBirth" id="CBirth" class="form-control" type="date" />									
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>อายุโค :</h4>
								</div>
								<div class="col-md-7">
									<form:input path="CAge" id="CAge" class="form-control" placeholder="อายุโค" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>สายพันธุ์ :</h4>
								</div>
								
								<div class="col-md-7">
									<form:select path="CGen" id="CGen" class="form-control">
											 <form:options items="${genList}" />
									</form:select>			
								</div>					
									
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>เพศ :</h4>
								</div>
								<div class="col-md-7">
									<form:select path="CSex" id="CSex" class="form-control">
										 <form:options items="${sexList}" />
									</form:select>									 
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>รูปโค :</h4>
								</div>
								<div class="col-md-7">
									<input type="file" id="CName" class="form-control" />
									<form:input path="CPic" id="CPic" class="form-control hide" placeholder="รูปโค" />
									
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>ใบพันธุ์ประวัติ :</h4>
								</div>
								<div class="col-md-7">
									<input type="file" id="tel" class="form-control" />
									<form:input path="CPic" id="CPic" class="form-control hide" placeholder="รูปโค" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>ชื่อพ่อโค :</h4>
								</div>
								<div class="col-md-7">
									<form:input path="father" id="father" class="form-control" />
									
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>ชื่อแม่โค :</h4>
								</div>
								<div class="col-md-7">
									<form:input path="mother" id="mother" class="form-control" />
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col-md-offset-1 col-md-2">
									<h4>ผู้พัฒนาพันธุ์ :</h4>
								</div>
								<div class="col-md-7">
									<form:input path="devoloper" id="devoloper" class="form-control" />
									<form:input path="memberId" id="memberId" class="form-control hide" />
									<input type="text" id="typeid" readonly class="form-control hide"/>
								</div>
							</div>
							</form:form>
						
						<div class="row">
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-success text-center" id="btn_save">ลงทะเบียน</button>
								<button type="button" class="btn btn-danger text-center"  id="btn_cancle" data-dismiss="modal">ย้อนกลับ</button>
							</div>
						</div>
						
						
                    
            </div>
            
              </div>
            </div>
         </div>
        
         
		<script type="text/javascript">
			$( document ).ready(function() {
				$('#CBirth').on('input propertychange paste', function() {
					var age = getAge($('#CBirth').val());
					$("#CAge").val(age);
				});
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
			
			
			$( "#btn_cancle" ).click(function() {
			window.location.href= ("/PJ_CSA/cow_member");	
			});
			
	        $( "#btn_save" ).click(function() { 
	        	var msg ="";
	        	var typeid = "1";	        	
	        	
	        	
	        	if(msg!=""){
	        		alert(msg);
	        	}
	        	else
	       		{
		        	$.ajax({
						url:"/PJ_CSA/api/addCow",
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