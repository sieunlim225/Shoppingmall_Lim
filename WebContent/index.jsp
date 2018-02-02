<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
	String name , id , pw;
%>
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
		
		<link href="themes/css/main.css" rel="stylesheet"/>

<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		
<title>Insert title here</title>
</head>
<body>
	<%
	name = (String)session.getAttribute("name"); // 세션과 파라미터의 차이는
	id= (String)session.getAttribute("id");
	pw= (String)session.getAttribute("pw");
	%>
	 <jsp:include page="header.jsp"/>
		
		<div id="wrapper" class="container">
			
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="themes/images/carousel/banner-1.png" alt="" />
						</li>
						<li>
							<img src="themes/images/carousel/banner-2.png" alt="" />
							<div class="intro">
								<h1>Mid season sale</h1>
								<p><span>Up to 50% Off</span></p>
								<p><span>On selected items online and in stores</span></p>
							</div>
						</li>
					</ul>
				</div>			
			</section>
			<section class="header_text">
				Crump는 진취적이고 역동적인 스트릿 웨어를 지향하는 PUBLIC STREET BRAND입니다. <br/>
				"have belied"라는 슬로건 아래 획일화된 사회통념에 억압받지 않고 자신만의 신념을 지켜나가길 응원합니다. <br/>
				Crump는 스트릿 감성을 기반으로 한 진취적인 메세지를 옷을 통해 공유하길 바랍니다.
				
				<br/>
			</section>
			<section class="main-content">
				<div class="row">
					<div class="span12">													
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">BEST <strong>ITEM</strong></span></span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails">		
											
																
													<li class="span3">
														<div class="product-box">
															<span class="sale_tag"></span>
															<p><a href="product_detail.jsp"><img src="themes/images/ladies/1.jpg" alt="" /></a></p>
															<a href="product_detail.jsp" class="title">아주 좆되는 아이템</a><br/>
											
															<p class="price">39800원</p>
														</div>
													</li>
										
												<c:forEach items="${list}" var="dto"> <!-- 판매량이 많은 아이템들이 4개 보여져야한다.  -->							
													<li class="span3">
														<div class="product-box">
															<span class="sale_tag"></span>
															<p><a href="product_detail.do"><img src="themes/images/ladies/${itemIamge}.jpg" alt="" /></a></p>
															<a href="product_detail.do" class="title">"${itemTitle}"</a><br/>
												
															<p class="price">"${itemPrice}"원</p>
														</div>
													</li>
												</c:forEach>
												
											</ul>
										</div>
										<div class="item">
											<ul class="thumbnails">
											
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.jsp"><img src="themes/images/ladies/5.jpg" alt="" /></a></p>
														<a href="product_detail.jsp" class="title">님은 가셨지마는</a><br/>
														<p class="price">500원</p>
													</div>
												</li>
																																	
											</ul>
										</div>
									</div>							
								</div>
							</div>						
						</div>
						<br/>
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">NEW <strong>ITEM</strong></span></span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-2" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-2" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails">		
																					
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="product_detail.jsp"><img src="themes/images/cloth/bootstrap-women-ware2.jpg" alt="" /></a></p>
														<a href="product_detail.jsp" class="title">싸빠지는 아이템</a><br/>
														<p class="price">$29800원</p>
													</div>
												</li>
												
												<c:forEach items="${list}" var="dto"> <!-- date가 최근인 아이템들이 4개 보여져야한다.  -->							
													<li class="span3">
														<div class="product-box">
															<span class="sale_tag"></span>
															<p><a href="product_detail.do"><img src="themes/images/ladies/${itemIamge}.jpg" alt="" /></a></p>
															<a href="product_detail.do" class="title">"${itemTitle}"</a><br/>
												
															<p class="price">"${itemPrice}"원</p>
														</div>
													</li>
												</c:forEach>
												
											</ul>
										</div>
										<div class="item">
											<ul class="thumbnails">
												<li class="span3">
													<div class="product-box">
														<p><a href="product_detail.jsp"><img src="themes/images/cloth/bootstrap-women-ware4.jpg" alt="" /></a></p>
														<a href="product_detail.jsp" class="title">나는님을 보내지 아니하였습니다.</a><br/>
														<p class="price">600원</p>
													</div>
												</li>
												
												</li>																																	
											</ul>
										</div>
									</div>							
								</div>
							</div>						
						</div>
						<div class="row feature_box">						
							<div class="span4">
								<div class="service">
									<div class="responsive">	
										<img src="themes/images/feature_img_2.png" alt="" />
										<h4>BRAND NEW <strong>DESIGN</strong></h4>
										<p>크럼프는 새롭고 진취적인 메세지만을 담는 디자인을 추구합니다.</p>									
									</div>
								</div>
							</div>
							<div class="span4">	
								<div class="service">
									<div class="customize">			
										<img src="themes/images/feature_img_1.png" alt="" />
										<h4>24/7 <strong>SHIPPING</strong></h4>
										<p>크럼프는 쉬지않고 당신과 크럼프 사이의 메세지를 공유합니다.</p>
									</div>
								</div>
							</div>
							<div class="span4">
								<div class="service">
									<div class="support">	
										<img src="themes/images/feature_img_3.png" alt="" />
										<h4>Good <strong>ITEM</strong></h4>
										<p>크럼프는 최고의 상품만을 당신에게 보여줄것을 약속합니다.</p>
									</div>
								</div>
							</div>	
						</div>		
					</div>				
				</div>
			</section>
			
		
		</div>
		
		<jsp:include page="footer.jsp"/>
		<script src="themes/js/common.js"></script>
		<script src="themes/js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>

		
		</script>
</body>
</html>