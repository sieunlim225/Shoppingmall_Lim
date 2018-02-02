<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="span3 col">
						
						<div class="block">
							<h4 class="title">
								<span class="pull-left"><span class="text">랜덤 상품</span></span>
								<span class="pull-right">
									<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
								</span>
							</h4>
							<div id="myCarousel" class="carousel slide">
								<div class="carousel-inner">
									<div class="active item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">
													<span class="sale_tag"></span>												
													<img alt="" src="themes/images/ladies/1.jpg"><br/>
													<a href="product_detail.jsp" class="title">Fusce id molestie massa</a><br/>
													<a href="#" class="category">Suspendisse aliquet</a>
													<p class="price">$261</p>
												</div>
											</li>
										</ul>
									</div>
									<div class="item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">												
													<img alt="" src="themes/images/ladies/2.jpg"><br/>
													<a href="product_detail.jsp" class="title">Tempor sem sodales</a><br/>
													<a href="#" class="category">Urna nec lectus mollis</a>
													<p class="price">$134</p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="block">								
							<h4 class="title"><strong>베스트</strong> 셀러</h4>								
							<ul class="small-product">
								<li>
									<a href="#" title="Praesent tempor sem sodales">
										<img src="themes/images/ladies/3.jpg" alt="Praesent tempor sem sodales">
									</a>
									<a href="#">감찍이옷</a>
								</li>
								<li>
									<a href="#" title="Luctus quam ultrices rutrum">
										<img src="themes/images/ladies/4.jpg" alt="Luctus quam ultrices rutrum">
									</a>
									<a href="#">감찍이옷</a>
								</li>
								<li>
									<a href="#" title="Fusce id molestie massa">
										<img src="themes/images/ladies/5.jpg" alt="Fusce id molestie massa">
									</a>
									<a href="#">감찍이옷</a>
								</li>   
							</ul>
						</div>
					</div>
</body>
</html>