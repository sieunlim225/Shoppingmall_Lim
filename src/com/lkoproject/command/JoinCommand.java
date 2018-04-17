package com.lkoproject.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.MemberDAO;
import com.lkoproject.memberdto.MemberDTO;

public class JoinCommand implements MCommand{

	/*private String name, id, pw , phone , gender , email,addnum,address1,address2;*/
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("JoinCommand.execute()");
		
		

		
		/*String id = (String)request.getParameter("id");
		String pw = (String)request.getParameter("pw");
		String name = (String)request.getParameter("name");
		String gender = (String)request.getParameter("gender");
		String phone = (String)request.getParameter("phone");
		String addnum = (String)request.getParameter("addnum");
		String address1 = (String)request.getParameter("address1");
		String address2 = (String)request.getParameter("address2");
		String email = (String)request.getParameter("email");*/
		
		MemberDTO dto = new MemberDTO();
		
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		dto.setName(request.getParameter("name"));
		dto.setGender(request.getParameter("gender"));
		dto.setPhone1(request.getParameter("phone"));
		dto.setAddnum(request.getParameter("addnum"));
		dto.setAddress1(request.getParameter("address1"));
		dto.setAddress2(request.getParameter("address2"));
		dto.setEmail(request.getParameter("email"));
		MemberDAO dao = new MemberDAO();
		
		int result = dao.join(dto);
		System.out.println("처리된 데이터 수:"+result);	
		
		request.setCharacterEncoding("EUC-KR");
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		
		if(result==1) {
			
			out.println("<script>");
			out.println("alert('회원이 된걸 축하행')");
			out.println("location.href='index.mvc'");
			out.println("</script>");
			
		}else{
			out.println("<script>");
			out.println("alert('오류오류 관리자에게 문의하십쇼')");
			out.println("history.back()");
			
			out.println("</script>");
		}
		return null;
	}
	
}
