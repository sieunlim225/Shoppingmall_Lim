<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                    	<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">회원 검색 - 미구현</h4>
                            </div>
                            <div class="content">
                                <form action="" method="">

                                    <div class="row">
                                    	<div class="col-md-2">
                                    		<div class="form-group">
                                    			<select class="form-control">
                                    				<option>아이디</option>
                                    				<option>이름</option>
                                    				
                                    				<option>휴대번호</option>
                                    			</select>
                                    		</div>
                                    	</div>
                                    	
                                        <div class="col-md-9">
                                            <div class="form-group">
                                                <input type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    
										<div class="col-md-1">
											<div class="form-group">
                                    		<button type="submit" style="width:70px" class="btn btn-info btn-fill pull-right">검색</button>
                                   		 </div>
                                   		 </div>
                                    
                                    </div>
                                </form>
                            </div>
                        </div>
                        </div>
                        <div class="col-md-8">
                    <div class="card">
                            <div class="header">
                                <h4 class="title">회원 정보</h4>
                            </div>
                            <div class="content">
                            
                                <form>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>아이디</label>
                                                <input type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="row">
                                    	<div class="col-md-3">
                                            <div class="form-group">
                                                <label>이름</label> 
                                                <input type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                    	
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>성별</label>
                                                <input type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                    	 <div class="col-md-3">
                                            <div class="form-group">
                                                <label>휴대폰 번호</label>
                                                <input type="text" class="form-control" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                    	 <div class="col-md-3">
                                            <div class="form-group">
                                                <label>우편번호</label>
                                                <input type="text" class="form-control"  value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                    	<div class="col-md-4">
                                            <div class="form-group">
                                                <label>주소</label>
                                                <input type="text" class="form-control"  value="">
                                            </div>
                                            </div>
                                             <div class="col-md-4">
                                            <div class="form-group">
                                            <label>주소2</label>
                                                <input type="text" class="form-control"  value="">
                                            </div>
                                        </div>
                                        
                                     
                                    </div>
                                  
                                    <button type="submit" style="background:red" class="btn btn-info btn-fill pull-right">회원삭제</button>
                                    <button type="submit" class="btn btn-info btn-fill ">정보수정</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div> 
                        </div>
                         <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                            </div>
                            <div class="content">
                                <p class="description text-center">홍길동</p>
                                <p class="description text-center"> 010-1234-5678 <br>
                                                    서울강남 <br>
                                                    아파트
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                            </div>
                        </div>
                    </div>
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

</html>