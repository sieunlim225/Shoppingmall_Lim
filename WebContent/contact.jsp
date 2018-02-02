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
									
			<section class="google_map">
				<iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=74%2F6+Nguy%E1%BB%85n+V%C4%83n+Tho%E1%BA%A1i,+S%C6%A1n+Tr%C3%A0,+%C4%90%C3%A0+N%E1%BA%B5ng,+Vi%E1%BB%87t+Nam&amp;aq=0&amp;oq=74%2F6+Nguyen+Van+Thoai+Da+Nang,+Viet+Nam&amp;sll=37.0625,-95.677068&amp;sspn=41.546728,79.013672&amp;ie=UTF8&amp;hq=&amp;hnear=74+Nguy%E1%BB%85n+V%C4%83n+Tho%E1%BA%A1i,+Ng%C5%A9+H%C3%A0nh+S%C6%A1n,+Da+Nang,+Vietnam&amp;t=m&amp;ll=16.064537,108.24151&amp;spn=0.032992,0.039396&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
			</section>
			<section class="header_text sub">
			<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
				<h4><span>Contact Us</span></h4>
			</section>
			<section class="main-content">				
				<div class="row">				
					<div class="span5">
						<div>
							<h5>서비스센터</h5>
							<p><strong>Phone:</strong>&nbsp;(123) 456-7890<br>
							<strong>Fax:</strong>&nbsp;+04 (123) 456-7890<br>
							<strong>Email:</strong>&nbsp;<a href="#">vietcuong_it@yahoo.com</a>								
							</p>
							<br/>
							<h5>서비스센터 강남 지점</h5>
							<p><strong>Phone:</strong>&nbsp;(113) 023-1125<br>
							<strong>Fax:</strong>&nbsp;+04 (113) 023-1145<br>
							<strong>Email:</strong>&nbsp;<a href="#">vietcuong_it@yahoo.com</a>					
							</p>
						</div>
					</div>
					<div class="span7">
						<p>당신의 소중한 의견을 적어 저희 크럼프팀에게 보내주세요. 빠른 시일 안에 이메일을 통해 회신드리겠습니다. </p>
						<form method="post" action="#">
							<fieldset>
								<div class="clearfix">
									<label for="name"><span>이름:</span></label>
									<div class="input">
										<input tabindex="1" size="18" id="name" name="name" type="text" value="" class="input-xlarge" placeholder="이름">
									</div>
								</div>
								
								<div class="clearfix">
									<label for="email"><span>이메일:</span></label>
									<div class="input">
										<input tabindex="2" size="25" id="email" name="email" type="text" value="" class="input-xlarge" placeholder="이메일 주소">
									</div>
								</div>
								
								<div class="clearfix">
									<label for="message"><span>내용:</span></label>
									<div class="input">
										<textarea tabindex="3" class="input-xlarge" id="message" name="body" rows="7" placeholder="내용"></textarea>
									</div>
								</div>
								
								<div class="actions">
									<button tabindex="3" type="submit" class="btn btn-inverse">보내기</button>
								</div>
							</fieldset>
						</form>
					</div>				
				</div>
			</section>			
		</div>
		
		<jsp:include page="footer.jsp"/>
		<script src="themes/js/common.js"></script>		
</body>
</html>