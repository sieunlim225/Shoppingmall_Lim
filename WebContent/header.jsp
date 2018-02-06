<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<!-- bootstrap -->
      <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
      <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
      
      <link href="themes/css/bootstrappage.css" rel="stylesheet"/>
      
<!-- global styles -->
      <link href="themes/css/flexslider.css" rel="stylesheet"/>
      <link href="themes/css/main.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>

<div id="top-bar" class="container">
         <div class="row">
            <div class="span4">
               <form method="POST" class="search_form">
                  <input type="text" class="input-block-level search-query" Placeholder="상품 입력">
               </form>
            </div>
            <div class="span8">
               <div class="account pull-right">
                  <ul class="user-menu">
                     <li> ${userId} 님 환영합니다</li>
               <c:if test="${userId==null}">
                                  
                     <li><a href="login.mvc">로그인</a></li>
                     <li><a href="register.jsp">회원가입</a></li>   
                  
               </c:if>
               
               
               <c:if test="${userId!=null&&userId!='admin'}">
               
                     <li><a href="cart.jsp">장바구니</a></li>               
                     <li><a href="modify.mvc">회원정보</a></li>
                     <li><a href="logout.mvc">로그아웃</a></li>   

               </c:if>   
               
               <c:if test="${userId=='admin'}">
               		 <li><a href="cart.jsp">장바구니test</a></li>
                     <li><a href="admin/dashboard.jsp">관리자</a></li>
                     <li><a href="logout.mvc">로그아웃</a></li>   

               </c:if>      
                  </ul>
               </div>
            </div>
         </div>
         
         <section class="navbar main-menu">
            <div class="navbar-inner main-menu">            
               <a href="index.mvc" class="logo pull-left"><img src="themes/images/logo1.png" class="site_logo" alt=""></a>
               <nav id="menu" class="pull-right" style="margin-right:38%">
                  <ul>
                     <li><a href="./products.mvc?main_cate=men&pageNum=1">MEN</a>               
                        <ul>
                           <li><a href="./products.mvc?main_cate=men&sub_cate=top&pageNum=1">Men's TOP (상의)</a></li>            
                           <li><a href="./products.mvc?main_cate=men&sub_cate=bottom&pageNum=1">Men's BOTTOM (하의)</a></li>
                           <li><a href="./products.mvc?main_cate=men&sub_cate=acc&pageNum=1">Men's ACC (악세서리)</a></li>                           
                        </ul>
                     </li>                                             
                     <li><a href="./products.mvc?main_cate=woman&pageNum=1">WOMEN</a>
                        <ul>
                           <li><a href="./products.mvc?main_cate=woman&sub_cate=top&pageNum=1">Women's TOP (상의)</a></li>                           
                           <li><a href="./products.mvc?main_cate=woman&sub_cate=bottom&pageNum=1">Women's BOTTOM (하의)</a></li>
                           <li><a href="./products.mvc?main_cate=woman&sub_cate=acc&pageNum=1">Women's ACC (악세서리)</a></li>                           
                        </ul>      
                     </li>   
                     <li><a href="./products.mvc?main_cate=boys&pageNum=1">BOYS</a>
                        <ul>
                           <li><a href="./products.mvc?main_cate=boys&sub_cate=top&pageNum=1">Boy's TOP (상의)</a></li>                           
                           <li><a href="./products.mvc?main_cate=boys&sub_cate=bottom&pageNum=1">Boy's BOTTOM (하의)</a></li>
                           <li><a href="./products.mvc?main_cate=boys&sub_cate=acc&pageNum=1">Boy's ACC (악세서리)</a></li>                           
                        </ul>
                     </li>                     
                     <li><a href="./products.mvc?main_cate=girls&pageNum=1">GIRLS</a>
                     <ul>
                           <li><a href="./products.mvc?main_cate=girls&sub_cate=top&pageNum=1">Girl's TOP (상의)</a></li>                           
                           <li><a href="./products.mvc?main_cate=girls&sub_cate=bottom&pageNum=1">Girl's BOTTOM (하의)</a></li>
                           <li><a href="./products.mvc?main_cate=girls&sub_cate=acc&pageNum=1">Girl's ACC (악세서리)</a></li>                           
                        </ul>
                     </li>
                  </ul>
               </nav>
            </div>
         </section>
      </div>
   

      
      
</body>
</html>