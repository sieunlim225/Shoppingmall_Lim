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

<style>

</style>
</head>
<body>
					
		<div class="card">
			<div class="content table-responsive table-fullwidth">
			<div class="header">
                 <h4 class="title">��ǰ���</h4> 
            </div>
			<form id="upForm" action="upload.mvc" method="post" enctype="multipart/form-data"> <!-- �� �±� ������ -->
			<section class="main-content">				
				<div class="row">						
					<div class="span9" style="margin: 15%; margin-bottom: 1%; margin-top: 1%;"> <!-- ���� ����� ����� ������ �ФФФФФФФФ�  -->
						<div class="row">
							<div class="col-md-6">
								
							
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
									 
									
									���� �̹��� ����(file):<input type="file" name="main_image"><br>
									���� �̹��� ����1(file):<input type="file" name="image1"><br>
									���� �̹��� ����2(file):<input type="file" name="image2"><br>
									���� �̹��� ����3(file):<input type="file" name="image3"><br>
											
								</ul>
							</div>
							<div class="col-md-6">
							<strong>��ǰ��: </strong> <input id="title" type="text" name="item_title" required><br>
								<address>
									<strong>ī�װ�_1: </strong>
										<select name="main_cate">
											<option>men</option> 
											<option>woman</option>
											<option>boys</option>
											<option>girls</option>
										</select><br>
									<strong>ī�װ�_2: </strong>
										<select name="sub_cate">
											<option>top</option>
											<option>bottom</option>
											<option>acc</option>					
										</select><br>

									
									<strong>��ǰ�ڵ�:</strong> <input id="code" type="text" name="item_code" required><br>
									<strong>������:</strong> <br>  <!-- üũ�Ǹ� �ڿ� ��ǲ Ȱ��ȭ -->
										<strong>S </strong>&nbsp;
										<strong>����:</strong> <input type="number" class="amounts" name="s_size" style="width:50px" max="500" value=""><br>
										<strong>M </strong>&nbsp;
										<strong>����:</strong> <input type="number" class="amounts" name="m_size" style="width:50px" max="500" value=""><br>
										<strong>L </strong>&nbsp;
										<strong>����:</strong> <input type="number" class="amounts" name="l_size" style="width:50px" max="500" value=""><br>
										<strong>XL </strong>&nbsp;
										<strong>����:</strong> <input type="number" class="amounts" name="xl_size" style="width:50px" max="500" value=""><br>
									
									<br>
									
								</address>									
								<strong>����:</strong><input id="price" type="number" name="price" style="width:120px" required>
							</div>
						
						</div>
						<div class="row">
							<div class="col-md-12">
												 
						
									<div class="tab-pane active" id="home">
									���� �̹���<br><input type="file" name="content_image"><br>
									</div>
									�߰�����<br>	
									<div class="controls">
													<textarea name="content" rows="3" id="textarea" class="col-md-12"></textarea>
												</div>

									</div>
													
				
							<!-- <div class="span9">	
								<br>
								<h4 class="title">
									<span class="pull-left"><span class="text"><strong>���� ��õ</strong>��ǰ</span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-1" class="carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails listing-products">	���û�ǰ�� �˾�â�� ����� �����ϴ°ɷ�
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
							</div> -->
						</div>
					</div>
				</div>
			</section>
			<div class="row">
			<div class="col-md-12" style="text-align:center;">

    			<button class="btn btn-info btn-fill" style="width:80px;height:40px;" onclick="postAction();">���</button>
    			
			</div>
		<input id="pw" type="hidden">
		</div>
		</form><!-- ���±� �� -->
		
			</div>
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
			alert('���� ����');
			return false;
		}if($('#code').attr('value')=="")
		{
			alert('�ڵ� ����');
			return false;
		}if($('#price').attr('value')=="")
		{
			alert('���� ����');
			return false;
		}
		
		upForm.submit();
}

 
		
	
	
	




</script>
</body>
</html>