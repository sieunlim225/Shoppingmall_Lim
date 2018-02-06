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
		        <jsp:include page="pageBanner.jsp"/>
				<h4><span>장바구니</span></h4>
			</section>
			<section class="main-content">				
				<div class="row">
					<div class="span9">					
						<h4 class="title"><span class="text"><strong>상품</strong> 정보</span></h4>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>선택</th>
									<th>상품</th>
									<th>상품명</th>
									<th>사이즈</th>
									<th>수량</th>
									<th>상품 금액</th>
									<th>총 상품 금액</th>
								</tr>
							</thead>
							<tbody>
							<c:set var="totals" value="0"/>
							
							
							<c:forEach items="${list}" var="dto">
							
								<tr>
									<td><input type="checkbox" value="option1"></td>
									<td><a href="product_detail.mvc?item_id=${dto.itemNo}"><img alt="" src="./savefolder/${dto.mainImage}"></a></td>
									<td>${dto.title}</td>
									<td>${dto.size}</td>
									<td><input type="number" class="input-mini" value="${dto.amount}"></td>
									<td>${dto.price}</td>
									<td>${dto.price*dto.amount}</td>
								<c:set var="totals" value="${totals+dto.price*dto.amount}"/>
								</tr>			  
							</c:forEach>
										  
							</tbody>
						</table>
						
						<hr>
						<p class="cart-total right">
							<strong>배송 방식</strong>:
							<select id="deli">
								<option value="1">선불	(+2500원)</option>
								<option value="0">착불</option>
							</select>
							<strong>배송비</strong>: ${deliMo}<br>
							<strong>총 주문 금액</strong>: ${totals+deliMo}<br>
						</p>
						<hr/>
						<p class="buttons center">				
							<button class="btn" type="button">쇼핑 계속하기</button>
							<button class="btn btn-inverse" type="submit" id="checkout">구매하기</button>
						</p>					
					</div>
					<jsp:include page="rightsideAds.jsp"/>
				</div>
			</section>			
		</div>
		<jsp:include page="footer.jsp"/>
		
		
		<script src="themes/js/common.js"></script>
		<script>
			$(document).ready(function() {
				if($('#deli').val()==1){
					<c:set var="deliMo" value="2500"/>
				}else{
					<c:set var="deliMo" value="0"/>
				}
				$('#checkout').click(function (e) {
					document.location.href = "checkout.jsp";
				})
								
				
				
				
			});

				
		</script>		
</body>
</html>