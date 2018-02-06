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
		
			  <style type="text/css">
      
      *{
         font-family : 'Nanum Gothic';
      }
      
      thead th {
         background-color : black;
         color: white;
      }
      .form{
         margin-bottom: 0 px;
      
      }
      .col-md-4{
      display:table;
      }
      </style>
<title>Insert title here</title>

</head>
<body>
<jsp:include page="header.jsp"/>
		<div id="wrapper" class="container">
				
			<section class="header_text sub">
			        <jsp:include page="pageBanner.jsp"/>
				<h4><span>ID / PW</span></h4>
			</section>			
			<section class="main-content">				
				<div class="row">
				<div class="span4" style="width:27%">
			</div>
					<div class="span5 center" id="loginspan">					
						
						<form action="loginpassword_check.mvc" method="post">
							<input type="hidden" name="next" value="/">
							 <table class="table table-bordered table-hover" style="text-align:center; border: 1px solid #dddddd">
								<thead> 
								 <tr>
                                 <th colspan="2"><h4 class="center">아이디를 잊으셨나요?</h4></th>                              
                              </tr>
                              </thead>
								
									<tr>
									<td style="width: 100px;"><h5>이름</h5></td>
									<td>	<input class="form-control" type="text" name="name" placeholder="이름을 입력해주세요" id="userName" class="input-xlarge" required></td>
									</tr>
								
									<tr>
									<td style="width: 100px;"><h5>E-mail</h5></td>
										<td><input class="form-control" type="text" name="email" placeholder="e-mail을 입력해주세요" id="userEmail" class="input-xlarge" required></td>
									</tr>
								
									<tr>
									<td colspan="3" class="center">
									
									<input class="btn btn-inverse large" type="submit" value="확인">
									
									<p class="reset">또는 <a tabindex="4" href="passwordCheck.jsp" title="Recover your username or password">비밀번호</a>를 잊으셨나요?</p>
									</td>
									</tr>
									
								
							</table> <!-- onKeyUp="" , onKeyDown="" , onKeyPress="" , onClick="" 속성은 스크립트속성 즉 저 "" 내부는 스크립트 영역임. 스크립스 영역을 따로 만들어서 함수를 만들고,
								함수를 호출 할 수도 있겠지만, 간단한 거라면 함수의 내용을 그대로 적어줘도 작동한다.-->
						</form>				
					</div>
					<div class="span4" style="width:25%">
			</div>			
				</div>
			</section>			
		</div>

<jsp:include page="footer.jsp"/>
</body>
</html>