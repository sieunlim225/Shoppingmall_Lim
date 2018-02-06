package com.lkoproject.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.MemberDAO;
import com.lkoproject.memberdto.MemberDTO;

public class passwordcheckCommand implements MCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		System.out.println("패스워드 체크 커맨드-----");
		
		/*String id = (String)request.getParameter("id");
		String pw = (String)request.getParameter("pw");
		System.out.println("id: "+id+" pw: "+pw);*/
		MemberDTO dto = new MemberDTO();
		
		dto.setEmail(request.getParameter("email"));
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		
		MemberDAO dao = new MemberDAO();
		String result = dao.passwordcheck(dto);
		System.out.println(result);
		
		
		request.setCharacterEncoding("EUC-KR");
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		
		if(result != null) {
			out.println("<script>");
			out.println("alert('당신의 비밀번호는  : "+result+"')");
			out.println("location.href='login.jsp'");
			out.println("</script>");
		}else{
			out.println("<script>");
			out.println("alert('아이디와 이메일이 일치하지 않습니다.')");
			out.println("location.href='passwordCheck.jsp'");
			out.println("</script>");
		}
		
		
		
		
		return null;
	}

}
