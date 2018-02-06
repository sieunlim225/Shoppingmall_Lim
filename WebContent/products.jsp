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

<!-- scripts -->
      <script src="themes/js/jquery-1.7.2.min.js"></script>
      <script src="bootstrap/js/bootstrap.min.js"></script>            
      <script src="themes/js/superfish.js"></script>   
      <script src="themes/js/jquery.scrolltotop.js"></script>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>
      <div id="wrapper" class="container">
         
         <section class="header_text sub">
         
         <img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
         <c:if test=""></c:if>
            <h4><span>${main} ${sub}</span></h4>
            
         </section>
         
         <section class="main-content">
            
            <div class="row">                  
               <div class="span9">                        
                  <ul class="thumbnails listing-products">    
                     <c:forEach items="${list}" var="dto"> <!-- 판매량이 많은 아이템들이 4개 보여져야한다.  -->                     
                        <li class="span3">
                           <div class="product-box">
                              <span class="sale_tag"></span>
                                 <p><a href="product_detail.mvc?item_id=${dto.itemNo}"><img src="./savefolder/${dto.mainImage}" alt="" /></a></p>
                                 <a href="product_detail.mvc?item_id=${dto.itemNo}" class="title">"${dto.title}"</a><br/>
                                    
                                 <p class="price">"${dto.price}"원</p>
                           </div>
                        </li>
                     </c:forEach>
                     
                     
                  </ul>                        
                  <hr>
                  <div class="pagination pagination-small pagination-centered">
                  
                    <ul>
                         <c:if test="${prev == 1}">
                        <li><a href="./products.mvc?main_cate=men&sub_cate=top&pageNum=${prevNum}">Prev</a></li>
                         </c:if>
                        <c:forEach begin="${startPage}" end="${endPage}" varStatus="i">
                        <li><a href="./products.mvc?main_cate=men&sub_cate=top&pageNum=${i.index}">${i.index}</a></li>
                        </c:forEach>
                        <c:if test="${next == 1}">
                        <li><a href="./products.mvc?main_cate=men&sub_cate=top&pageNum=${nextNum}">Next</a></li>
                        </c:if>
                     </ul>
                  </div>
               </div>
               <jsp:include page="rightsideAds.jsp"/>
            </div>
         </section>
         
      </div>
      
      <jsp:include page="footer.jsp"/>
      <script src="themes/js/common.js"></script>   
</body>
</html>