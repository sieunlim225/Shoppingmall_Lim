package com.lkoproject.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.MemberDAO;
import com.lkoproject.memberdto.MemberDTO;

public class loginPasswordCommand implements MCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		
		System.out.println("�α��� �н����� üũ Ŀ�ǵ�");
		
			System.out.println("�α��� �н����� üũ Ŀ�ǵ�1");
			
			/*String id = (String)request.getParameter("id");
			String pw = (String)request.getParameter("pw");
			System.out.println("id: "+id+" pw: "+pw);*/
			MemberDTO dto = new MemberDTO();
			dto.setName(request.getParameter("name"));
			dto.setEmail(request.getParameter("email"));
			dto.setId(request.getParameter("id"));
			
			MemberDAO dao = new MemberDAO();
			String result = dao.loginpassword(dto);
			System.out.println(result);
			
			
			request.setCharacterEncoding("EUC-KR");
			response.setContentType("text/html; charset=EUC-KR");
			PrintWriter out = response.getWriter();
			
			if(result != null) {
				out.println("<script>");
				out.println("alert('����� ���̵��  : "+result+"')");
				out.println("location.href='login.jsp'");
				out.println("</script>");
			}else{
				out.println("<script>");
				out.println("alert('�̸��� �̸����� ��ġ���� �ʽ��ϴ�.')");
				out.println("location.href='logincheck.jsp'");
				out.println("</script>");
			}
			
			

						

			return null;

	}
	}
