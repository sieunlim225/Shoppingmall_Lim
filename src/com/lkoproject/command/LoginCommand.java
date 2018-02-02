package com.lkoproject.command;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lkoproject.memberdao.MemberDAO;
import com.lkoproject.memberdto.MemberDTO;

public class LoginCommand implements MCommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("EUC-KR");
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		System.out.println("로그인 커맨드");
		
			System.out.println("로그인커맨드 실행");
			
			/*String id = (String)request.getParameter("id");
			String pw = (String)request.getParameter("pw");
			System.out.println("id: "+id+" pw: "+pw);*/
			MemberDTO dto = new MemberDTO();
			dto.setId(request.getParameter("id"));
			dto.setPw(request.getParameter("pw"));
			
			MemberDAO dao = new MemberDAO();
			int result = dao.login(dto);
			
			HttpSession session = request.getSession();//세션 객체 생성
			if(session.getAttribute("userId")!=null){
				out.println("<script>");
				out.println("alert('이미로그인이 되어있습니다')");
				out.println("location.href = 'index.jsp'");
				out.println("</script>");}
			
			if(result == 1 ) {
				
				
				session.setAttribute("userId", dto.getId()); //세선 부여
				
				out.println("<script>");
				out.println("alert('로그인성공')");
				out.println("location.href='index.jsp'");
				out.println("</script>");
				System.out.println("로그인성공");
				/*System.out.println("로그인 성공~!");*/
				/*resultStr = "index.jsp";*/
				
				
				}else if (result ==0){
					
					out.println("<script>");
					out.println("alert('비밀번호가 틀려')");
					out.println("history.back()");
					out.println("</script>");
					System.out.println("비밀번호가");
					
				}else if (result == -1){
					
					out.println("<script>");
					out.println("alert('존재하지 않는 아이디')");
					out.println("history.back()");
					out.println("</script>");
					System.out.println("존재하지");
					
				}
			
			
			return null;

		/*	try {
				response.sendRedirect("index.jsp");
			} catch (IOException e1) {
				e1.printStackTrace();
			}*/
			
			
			 
			
	}

}
