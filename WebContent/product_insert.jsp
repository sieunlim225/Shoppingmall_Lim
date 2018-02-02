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

<style>

</style>
</head>
<body>

		<div id="wrapper" class="container">
			
			<section class="header_text sub">
			<h1><h3>상품등록</h3></h1>
			</section>
			<form id="upForm" action="upload.mvc" method="post" enctype="multipart/form-data"> <!-- 폼 태그 시작점 -->
			<section class="main-content">				
				<div class="row">						
					<div class="span9" style="margin: 15%; margin-bottom: 1%; margin-top: 1%;"> <!-- 씨바 얘네좀 가운데로 보내줘 ㅠㅠㅠㅠㅠㅠㅠㅠㅠ  -->
						<div class="row">
							<div class="span4">
								
							
							<!-- 	
								<a class="thumbnail_insert" data-fancybox-group="group1" title="Description 1"><img alt="" src="./themes/images/"></a>
											
								<ul class="thumbnails small">								
									<li class="span1">
										<a class="thumbnail_insert" data-fancybox-group="group1" title="Description 2"><img src="./themes/images/" alt=""></a>
									</li>								
									<li class="span1">
										<a class="thumbnail_insert" data-fancybox-group="group1" title="Description 3"><img src="./themes/images/" alt=""></a>
									</li>													
									<li class="span1">
										<a class="thumbnail_insert" data-fancybox-group="group1" title="Description 4"><img src="./themes/images/" alt=""></a>
									</li>
									 -->
									 
									
									메인 이미지 파일(file):<input type="file" name="main_image"><br>
									서브 이미지 파일1(file):<input type="file" name="image1"><br>
									서브 이미지 파일2(file):<input type="file" name="image2"><br>
									서브 이미지 파일3(file):<input type="file" name="image3"><br>
											
								</ul>
							</div>
							<div class="span5" style="margin_left:100px">
							<h4><strong>상품명: </strong></h4> <input id="title" type="text" name="item_title" required><br>
								<address>
									<strong>카테고리_1: </strong>
										<select name="main_cate">
											<option>men</option> 
											<option>woman</option>
											<option>boy</option>
											<option>girl</option>
										</select><br>
									<strong>카테고리_2: </strong>
										<select name="sub_cate">
											<option>top</option>
											<option>bottom</option>
											<option>acc</option>					
										</select><br>
									
									<strong>상품코드:</strong> <input id="code" type="text" name="item_code" required><br>
									<strong>사이즈:</strong> <br>  <!-- 체크되면 뒤에 인풋 활성화 -->
										<strong>S </strong>&nbsp;
										<strong>수량:</strong> <input type="number" class="amounts" name="s_size" style="width:50px" max="500" value=""><br>
										<strong>M </strong>&nbsp;
										<strong>수량:</strong> <input type="number" class="amounts" name="m_size" style="width:50px" max="500" value=""><br>
										<strong>L </strong>&nbsp;
										<strong>수량:</strong> <input type="number" class="amounts" name="l_size" style="width:50px" max="500" value=""><br>
										<strong>XL </strong>&nbsp;
										<strong>수량:</strong> <input type="number" class="amounts" name="xl_size" style="width:50px" max="500" value=""><br>
									
									<br>
									
								</address>									
								<strong>가격:</strong><input id="price" type="number" name="price" style="width:120px" required>
							</div>
						
						</div>
						<div class="row">
							<div class="span9">
												 
						
									<div class="tab-pane active" id="home">
									본문 이미지<br><input type="file" name="content_image"><br>
									</div>
									추가내용<br>	
									<div class="controls">
													<textarea name="content" rows="3" id="textarea" class="span12"></textarea>
												</div>

									</div>
													
				
							<div class="span9">	
								<br>
								<h4 class="title">
									<span class="pull-left"><span class="text"><strong>관련 추천</strong>상품</span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-1" class="carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails listing-products">	<!-- 관련상품은 팝업창을 띄워서 선택하는걸로 -->
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
				</div>
			</section>

			<div class="col-sm-3" style="text-align:center;">

    			<button class="btn btn-inverse" style="width:80px;height:40px;" onclick="postAction();">등록</button>
    			
			</div>
		<input id="pw" type="hidden">
		</form><!-- 폼태그 끝 -->
		
		
		</div>
		
	
		
		<script src="themes/js/common.js"></script>
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
 

 function postAction(){
		var upForm = $('#upForm');
		if($('.amounts').attr('value')=="")
		{
			$('.amounts').attr('value','0');
		}
		$('#pw').attr({
			'name':'flag',
			'value':'postWrite'
		});
		if($('#title').attr('value')=="")
		{
			alert('제목 ㄴㄴ');
			return false;
		}if($('#code').attr('value')=="")
		{
			alert('코드 ㄴㄴ');
			return false;
		}if($('#price').attr('value')=="")
		{
			alert('가격 ㄴㄴ');
			return false;
		}
		
		upForm.submit();
}

 
		
	
	
	




</script>
</body>
</html>