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
      li{
      display:inline;
      }
      </style>
      
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"/>


     <!-- 접속시 아이디랑 비번이랑 미리 적혀있음 이거는 지워야됨 -->


         
      
      <div id="wrapper" class="container">

         <section class="header_text sub">
                 <jsp:include page="pageBanner.jsp"/>
            <h4><span>회원정보</span></h4>
         </section>         
         <section class="main-content" >            
            <div class="row">
               <div class="span4" style="width:200px">
         </div>
               <div class="span7">               
                  
                  
                  <div class="container" style="width:600px">
                  
                  
                     <form method="post" action="modify_action.mvc">
                        <table class="table table-bordered table-hover" style="text-align:center; border: 1px solid #dddddd">
                           <thead>
                              <tr>
                                 <th colspan="2"><h4 class="center">회원정보</h4></th>                              
                              </tr>
                           </thead>
                           <tr>
                              <td style="width: 100px;"><h5>아이디</h5></td>
                              <td><p><li>${memberInfo.id}</li></p><input class="form-control" type="hidden" id="id" name="id" maxLength="20" style="margin-bottom: 0px;" value="${memberInfo.id}" required>
                              
                              
                              </td>
                           </tr>
                           
                           <tr>
                              <td style="width: 100px;"><h5>비밀번호</h5></td>
                              <td><input class="form-control" type="password" id="pw" onkeyup="passwordCheckFunction();" name="pw" maxLength="20" value="" required></td>
                              
                           </tr>
                           <tr>
                              <td style="width: 100px;"><h5>비밀번호 확인</h5></td>
                              <td><input class="form-control" type="password" id="pw1" onkeyup="passwordCheckFunction();" maxLength="20" required>
                               <h5 style="color:red;" id="passwordCheckMessage"></h5>
                              </td>
                          
                           </tr>
                           
                           <tr>
                              <td style="width: 100px;"><h5>이름</h5></td>
                              <td>
                              <p><li>${memberInfo.name}</li></p>
                              </td>
                           </tr>
                           
                              <tr>
                              <td style="width: 100px;"><h5>성별</h5></td>
                                 <td colspan="2">
                                    <div class="form-group" style="margin: 0 auto;">
                                          <label class="btn btn-inverse active">
                                             <input type="radio" name="gender" autocomplete="off"  value="${memberInfo.gender}" checked required>${memberInfo.gender}
                                          </label>
                                          
                                       
                                    </div>
                                 </td>
                              </tr>
                              
                           <tr>
                              <td style="width: 100px;"><h5>핸드폰 번호</h5></td>
                              <td><input class="form-control" type="text" id="phone" name="phone" maxLength="20" value="${memberInfo.phone}" required></td>
                           </tr>
                           
                           <tr>
                              <td style="width: 100px;"><h5>우편 번호</h5></td>
                              <td><input class="form-control" type="text" id="addnum" name="addnum" maxLength="20" value="${memberInfo.addnum}" required></td>
                           </tr>
                           
                           <tr>
                              <td style="width: 100px;"><h5>주소</h5></td>
                              <td><input class="form-control" type="text" id="address1" name="address1" maxLength="20" value="${memberInfo.address1}" required><br/>
                                  <input class="form-control" type="text" id="address2" name="address2" maxLength="20" value="${memberInfo.address2}" required>
                              </td>
                              
                           </tr>
                           
                           
                           
                           <tr>
                              <td style="width: 100px;"><h5>E-mail</h5></td>
                              <td><input class="form-control" type="email" id="email" name="email" maxLength="20" value="${memberInfo.email}" required></td>
                           </tr>
                         
                         <tr>
                              <td style="width: 100px;"><h5>가입일자</h5></td>
                              <td><p><li>${memberInfo.joindate}</li></p>
                              
                              
                              </td>
                           </tr>
                           
                           
                     
                           <tr>
                              <td style="text-align: left"; colspan="3">
                              <input class="btn btn-inverse pull-rigth" type="submit" value="정보수정">
                              </td>
                           </tr>
                              
                        </table>
                     </form>
                  </div>
                </div>
                  <div class="span4" style="width:200px">
         </div>
             </div>
         </section>
         </div>

      
      <jsp:include page="footer.jsp"/>
      
      
      <script src="themes/js/common.js"></script>
      <script>
      function passwordCheckFunction(){
	 		
	 		var pw = $('#pw').val();
	 		var pw1 = $('#pw1').val();
	 		if(pw != pw1){
	 			
	 			$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');			
	 		}else{
	 			$('#passwordCheckMessage').html('비밀번호가 일치 합니다.').css('color','blue');
	 		
	 		}	
	 	}
	 	
      </script>      
</body>
</html>