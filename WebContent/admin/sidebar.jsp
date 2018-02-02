<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Light Bootstrap Dashboard by Creative Tim</title>

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
<div class="sidebar" data-color="black" data-image="assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="../index.jsp" class="simple-text">
                    CRUMP
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="dashboard.jsp">
                        <i class="pe-7s-graph"></i>
                        <p>대시보드</p>
                    </a>
                </li>
                <li>
                    <a href="useradmin.jsp">
                        <i class="pe-7s-user"></i>
                        <p>회원관리</p>
                    </a>
                </li>
                <li>
                    <a href="productadmin.jsp">
                        <i class="pe-7s-note2"></i>
                        <p>상품관리</p>
                    </a>
                </li>
                <li>
                    <a href="checkoutadmin.jsp">
                        <i class="pe-7s-news-paper"></i>
                        <p>주문관리</p>
                    </a>
                </li>
                 <li>
                    <a href="siteadmin.jsp">
                        <i class="pe-7s-browser"></i>
                        <p>사이트/이벤트 관리</p>
                    </a>
                </li>
            
            </ul>
    	</div>
    </div>
    
</body>
</html>