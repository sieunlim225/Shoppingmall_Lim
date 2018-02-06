<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                 <jsp:include page="pageBanner.jsp"/>
         </section>
         <section class="main-content">            
            <div class="row">                  
               <div class="span9">
                  <div class="row">
                     <div class="span4">
                        <a href="./savefolder/${info.mainImage}" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="./savefolder/${info.mainImage}"></a>                                    
                        <ul class="thumbnails small">                        
                           <li class="span1">
                              <a href="./savefolder/${info.image1}" class="thumbnail" data-fancybox-group="group1" title="Description 2"><img src="./savefolder/${info.image1}" alt=""></a>
                           </li>                        
                           <li class="span1">
                              <a href="./savefolder/${info.image2}" class="thumbnail" data-fancybox-group="group1" title="Description 3"><img src="./savefolder/${info.image2}" alt=""></a>
                           </li>                                       
                           <li class="span1">
                              <a href="./savefolder/${info.image3}" class="thumbnail" data-fancybox-group="group1" title="Description 4"><img src="./savefolder/${info.image3}" alt=""></a>
                           </li>
                           
                        </ul>
                     </div>
                     <div class="span5">
                     <h3><strong>${info.title}</strong></h3>
                        <address>
                           
                           
                           <strong>상품코드:</strong> <span>${info.itemCode}</span><br>
                           <strong>제조국가:</strong> <span>Republic Of Korea</span><br>      
                        </address>                           
                        <h4><strong>가격: ${info.price}</strong></h4>
                     </div>
                     <div class="span5">
                        <form id ="form" class="form-inline" action="checkout.mvc" method="post">
                        
                        <input type="hidden" name="item_no" value="${info.itemNo}">
                           <strong>배송 방식: </strong>
                              <select name="delivery">
                                 <option value="y">선불 (+2500원)</option>
                                 <option value="n">착불</option>
                              </select><br>
                                 <small>(제주 및 산간 지역은 배송회사의 규정에 따라 다소 배송비가 추가될 수 있습니다.)</small>
                           <strong>사이즈: </strong>
                              <select name="size">
                                 <option>s</option>
                                 <option>m</option>
                                 <option>l</option>
                                 <option>xl</option>
                              </select><br>
                           <p>&nbsp;</p>
                           <label>구매 개수:</label>
                           <input type="number" name="amount" class="span1" value="1">
                           
                        </form>
                            <button class="btn btn-inverse" id="submit">바로구매</button>
                                  <button id="addcart" class="btn btn-inverse" style="background:#ff5e00" >카트담기</button>

                           
                     </div>                     
                  </div>
                  <div class="row">
                     <div class="span9">
                        <ul class="nav nav-tabs" id="myTab">
                           <li class="active"><a href="#home">세부 내용</a></li>
                           <li class=""><a href="#profile">info</a></li>
                           <li class=""><a href="#reply">리뷰보기</a></li>
                        </ul>                      
                        <div class="tab-content">
                           <div class="tab-pane active" id="home">
                              <img alt="" src="./savefolder/${info.contentImage}">
                              <br>
                              <p>${info.content}</p>
                           </div>
                           <div class="tab-pane" id="profile">
                              <table class="table table-striped shop_attributes">   
                                 <tbody>
                                    <tr class="">
                                       <th>사이즈 :수량</th>
                                       <td><p>Small : ${info.s} &nbsp;  Medium : ${info.m} &nbsp;  Large : ${info.l} &nbsp;  X-Large : ${info.xl} "</p></td>
                                    </tr>      
                                    <tr class="alt">
                                       <th>대상/카테고리</th>
                                       <td>${info.mainCate}/${info.subCate}</td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                           <div class="tab-pane" id="reply">
                              <p>리뷰 게시판 인크루드로 들어감 </p>
                           </div>
                        </div>                     
                     </div>   
                     <br>
                     <br>
                     <div class="span9">
                        <span>
                           <small>업데이트: ${info.upload}</small>
                        </span>
                     </div>               
                     <div class="span9">   
                        <br>
                        <h4 class="title">
                           <span class="pull-left"><span class="text"><strong>Related</strong> Products</span></span>
                           <span class="pull-right">
                              <a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
                           </span>
                        </h4>
                        <div id="myCarousel-1" class="carousel slide">
                           <div class="carousel-inner">
                              <div class="active item">
                                 <ul class="thumbnails listing-products">
                                    <li class="span3">
                                       <div class="product-box">
                                          <span class="sale_tag"></span>                                    
                                          <a href="product_detail.jsp"><img alt="" src="themes/images/ladies/6.jpg"></a><br/>
                                          <a href="product_detail.jsp" class="title">Wuam ultrices rutrum</a><br/>
                                          <a href="#" class="category">Suspendisse aliquet</a>
                                          <p class="price">$341</p>
                                       </div>
                                    </li>
                                    <li class="span3">
                                       <div class="product-box">
                                          <span class="sale_tag"></span>                                    
                                          <a href="product_detail.jsp"><img alt="" src="themes/images/ladies/5.jpg"></a><br/>
                                          <a href="product_detail.jsp" class="title">Fusce id molestie massa</a><br/>
                                          <a href="#" class="category">Phasellus consequat</a>
                                          <p class="price">$341</p>
                                       </div>
                                    </li>       
                                    <li class="span3">
                                       <div class="product-box">                                    
                                          <a href="product_detail.jsp"><img alt="" src="themes/images/ladies/4.jpg"></a><br/>
                                          <a href="product_detail.jsp" class="title">Praesent tempor sem</a><br/>
                                          <a href="#" class="category">Erat gravida</a>
                                          <p class="price">$28</p>
                                       </div>
                                    </li>                                    
                                 </ul>
                              </div>
                              <div class="item">
                                 <ul class="thumbnails listing-products">
                                    <li class="span3">
                                       <div class="product-box">
                                          <span class="sale_tag"></span>                                    
                                          <a href="product_detail.jsp"><img alt="" src="themes/images/ladies/1.jpg"></a><br/>
                                          <a href="product_detail.jsp" class="title">Fusce id molestie massa</a><br/>
                                          <a href="#" class="category">Phasellus consequat</a>
                                          <p class="price">$341</p>
                                       </div>
                                    </li>       
                                    <li class="span3">
                                       <div class="product-box">                                    
                                          <a href="product_detail.jsp"><img alt="" src="themes/images/ladies/2.jpg"></a><br/>
                                          <a href="product_detail.jsp">Praesent tempor sem</a><br/>
                                          <a href="#" class="category">Erat gravida</a>
                                          <p class="price">$28</p>
                                       </div>
                                    </li>
                                    <li class="span3">
                                       <div class="product-box">
                                          <span class="sale_tag"></span>                                    
                                          <a href="product_detail.jsp"><img alt="" src="themes/images/ladies/3.jpg"></a><br/>
                                          <a href="product_detail.jsp" class="title">Wuam ultrices rutrum</a><br/>
                                          <a href="#" class="category">Suspendisse aliquet</a>
                                          <p class="price">$341</p>
                                       </div>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <jsp:include page="rightsideAds.jsp"/>
            </div>
         </section>         
      
      </div>
      
      <jsp:include page="footer.jsp"/>
      
      
      <script src="themes/js/common.js"></script>
      <script>
         $(function () {
            $('#myTab a:first').tab('show');
            $('#myTab a').click(function (e) {
               e.preventDefault();
               $(this).tab('show');
            })
         })
         $(function () {
            var id = '${userId}';
             $('#submit').click(function () {
                if(id == ""){
                     alert('로그인 후 이용 가능 합니다.');
                     $(location).attr('href', 'login.mvc');
                     return false;
                  }else if(id != ""){
                     $('#form').submit();
                  }
                  });
                  
            
            $('#addcart').click(function () {
               
               if(id == ""){
                  alert('로그인 후 이용 가능 합니다.');
                  $(location).attr('href', 'login.mvc');
                  return false;
               }else if(id != ""){
                  
               $('#form').attr({'action':''});
               $.ajax({
                  url:'addcart.mvc',
                  type:'post',
                  data:$('#form').serialize(),   
                  success:function(i){
                     if(i==1){
                        alert('상품이 장바구니에 추가 되었습니다.');
                     }else{
                        alert('오류가 발생하였습니다.');
                     }
                  
                  }
               });
               
               }
            })
         })
         
         $(document).ready(function() {
            $('.thumbnail').fancybox({
               openEffect  : 'none',
               closeEffect : 'none'
            });
            
            $('#myCarousel-2').carousel({
                    interval: 2500
                });                        
         });
         
      </script>
</body>
</html>