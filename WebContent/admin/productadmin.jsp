<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
<div class="wrapper">
    <jsp:include page="sidebar.jsp"/>

    <div class="main-panel">
        <jsp:include page="mainpanel.jsp"/>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">상품관리</h4> 
                               <ul class="nav navbar-nav navbar-left">
                         
                         <li class="dropdown">
                              <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <p>
										MEN
										<b class="caret"></b>
									</p>

                              </a>
                              <ul class="dropdown-menu">
                              	<li><a href="./productadmin.mvc?main_cate=men&pageNum=1">전체보기</a></li>
                                <li><a href="./productadmin.mvc?main_cate=men&sub_cate=top&pageNum=1">상의</a></li>
                                <li><a href="./productadmin.mvc?main_cate=men&sub_cate=bottom&pageNum=1">하의</a></li>
                                <li><a href="./productadmin.mvc?main_cate=men&sub_cate=acc&pageNum=1">악세서리</a></li>
                              </ul>
                        </li>
                        <li class="dropdown">
                              <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <p>
										WOMEN
										<b class="caret"></b>
									</p>

                              </a>
                              <ul class="dropdown-menu">
                             	 <li><a href="./productadmin.mvc?main_cate=woman&pageNum=1">전체보기</a></li>
                                <li><a href="./productadmin.mvc?main_cate=woman&sub_cate=top&pageNum=1">상의</a></li>
                                <li><a href="./productadmin.mvc?main_cate=woman&sub_cate=bottom&pageNum=1">하의</a></li>
                                <li><a href="./productadmin.mvc?main_cate=woman&sub_cate=acc&pageNum=1">악세서리</a></li>
                              </ul>
                        </li>
                         <li class="dropdown">
                              <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <p>
										BOYS
										<b class="caret"></b>
									</p>

                              </a>
                              <ul class="dropdown-menu">
                              <li><a href="./productadmin.mvc?main_cate=boys&pageNum=1">전체보기</a></li>
                                <li><a href="./productadmin.mvc?main_cate=boys&sub_cate=top&pageNum=1">상의</a></li>                           
                           <li><a href="./productadmin.mvc?main_cate=boys&sub_cate=bottom&pageNum=1">하의</a></li>
                           <li><a href="./productadmin.mvc?main_cate=boys&sub_cate=acc&pageNum=1">악세서리</a></li>    
                              </ul>
                        </li>
                         <li class="dropdown">
                              <a href="" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    <p>
										GIRLS
										<b class="caret"></b>
									</p>

                              </a>
                              <ul class="dropdown-menu">
                              <li><a href="./productadmin.mvc?main_cate=girls&pageNum=1">전체보기</a></li>
                               <li><a href="./productadmin.mvc?main_cate=girls&sub_cate=top&pageNum=1">상의</a></li>                           
                           <li><a href="./productadmin.mvc?main_cate=girls&sub_cate=bottom&pageNum=1">하의</a></li>
                           <li><a href="./productadmin.mvc?main_cate=girls&sub_cate=acc&pageNum=1">악세서리</a></li>
                              </ul>
                        </li>
						<li class="separator hidden-lg hidden-md"></li>
                    </ul>
                                <!-- <p class="category">Here is a subtitle for this table</p> -->
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>No</th>
                                    	<th>카테고리</th>
                                    	<th>카테고리2</th>
                                    	<th>상품이름</th>
                                    	<th>상품코드</th>
                                    	<th>가격</th>
                                    	<th colspan="4">수량</th>
                                    	<th>판매수</th>
                                    	
                                    	<th style="border-left:1px solid black">메인이미지</th>
                                        	<th>이미지1</th>
                                        	<th>이미지2</th>
                                        	<th>이미지3</th>
                                           	<th>내용이미지</th>
                                           <th>수정삭제</th>
                                    </thead>
                                    
                                    <c:forEach items="${list}" var="dto">
                                    
                                    <tbody>
                                        <tr>
                                        	<form action="" method="post">
                                        	<td>${dto.itemNo}</td>
                                        	<input name="item_no" type="hidden" value="${dto.itemNo}"/>
                                        	<td>${main}</td>
                                        	<td>${sub}</td>
                                        	<td>${dto.title}</td>
                                        	<td>${dto.itemCode}</td>
                                        	<td>${dto.price}원</td>
                                        	<td>S :<br> ${dto.s}</td>
                                        	<td>M :<br> ${dto.m}</td>
                                        	<td>L :<br> ${dto.l}</td>
                                        	<td>XL :<br>${dto.xl}</td>
                                        	<td>0 개</td>
                                       	
                                        	<td style="border-left:1px solid black">${dto.mainImage}</td>
                                        	<td>${dto.image1}</td>
                                        	<td>${dto.image2}</td>
                                        	<td>${dto.image3}</td>
                                           	<td>${dto.contentImage}</td>
                                           	<td>
                                           	
                                           	
                                           	
                                        
                                        
                                           	
												<!-- <button type="submit" id="drop" >삭제</button> -->
												<button type="submit" class="modify">수정</button><br>
                                           	<button type="submit" class="drop" >삭제</button></td>
											</form>
											
                                        </tr>
                                         	<!-- <form action="AdminProducModify.mvc" method="post">
    										<form action="AdminProducDrop.mvc" method="post">  -->
                                        
                                        
                                        
                                    </tbody>
                                    
                                    </c:forEach>
                                    
                                </table>
								<button id="pinsert" class="btn btn-info btn-fill pull-right">상품등록</button>
								
				<div class="container">
					<div class="row">
					<div class="col-md-5"></div>
                    <div class="col-md-3 center-text">
                         <c:if test="${prev == 1}">
                        <button><a href="./productadmin.mvc?main_cate=${main}&sub_cate=${sub}&pageNum=${prevNum}">Prev</a></button>
                         </c:if>
                        <c:forEach begin="${startPage}" end="${endPage}" varStatus="i">
                        <button><a href="./productadmin.mvc?main_cate=${main}&sub_cate=${sub}&pageNum=${i.index}">${i.index}</a></button>
                        </c:forEach>
                        <c:if test="${next == 1}">
                        <button><a href="./productadmin.mvc?main_cate=${main}&sub_cate=${sub}&pageNum=${nextNum}">Next</a></button>
                        </c:if>
                     </div>
                     <div class="col-md-5"></div>
                     </div>
                </div>
								
                            </div>
                        </div>
                    </div>
				<div id="showinsert" class="col-md-12">
					<script type="text/javascript">

/* $(document).ready(function(){
$('#hi').click(function(){
	
	if($('.amounts').attr('value')=="")
	{
		
		$('.amounts').attr('value','0');
		alert($('.amounts').attr('value'));
	}
});
});
 */
 


</script>
				
				</div>

                   

                </div>
            </div>
        </div>

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

	<!-- <script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'pe-7s-gift',
            	message: "Welcome to <b>Light Bootstrap Dashboard</b> - a beautiful freebie for every web developer."

            },{
                type: 'info',
                timer: 4000
            });

    	});
	</script> -->
	<script type="text/javascript">
	$(document).ready(function(){
    	$("#pinsert").click(function(){
        $("#showinsert").load("product_insert.jsp");
    });
    	
    	
    	
            
             $('.drop').click(function () {
            	 $('form').attr('action','AdminProducDrop.mvc').submit();
                     
                  }) 
                 
                  
            
            $('.modify').click(function () {
            	$('form').attr('action','AdminProducModify.mvc');
            	/* $("#showinsert").load("product_modify.jsp"); */
              /*  ; */
               
               
               
               /* $('form').submit(); */
              /*  $.ajax({
                  url:'addcart.mvc',
                  type:'post',
                  data:$('#form').serialize(),   
                  success:function(){
                     
                     }
                  
               }) */
            })
    	
});
	</script>
</html>