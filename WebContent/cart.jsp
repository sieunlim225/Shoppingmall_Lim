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
				<h4><span>��ٱ���</span></h4>
			</section>
			<section class="main-content">				
				<div class="row">
					<div class="span9">					
						<h4 class="title"><span class="text"><strong>��ǰ</strong> ����</span></h4>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>����</th>
									<th>��ǰ</th>
									<th>��ǰ��</th>
									<th>������</th>
									<th>����</th>
									<th>��ǰ �ݾ�</th>
									<th>�� ��ǰ �ݾ�</th>
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
							<strong>��� ���</strong>:
							<select id="deli">
								<option value="1">����	(+2500��)</option>
								<option value="0">����</option>
							</select>
							<strong>��ۺ�</strong>: ${deliMo}<br>
							<strong>�� �ֹ� �ݾ�</strong>: ${totals+deliMo}<br>
						</p>
						<hr/>
						<p class="buttons center">				
							<button class="btn" type="button">���� ����ϱ�</button>
							<button class="btn btn-inverse" type="submit" id="checkout">�����ϱ�</button>
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