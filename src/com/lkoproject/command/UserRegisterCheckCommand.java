package com.lkoproject.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.MemberDAO;

public class UserRegisterCheckCommand implements MCommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		response.setContentType("text/html;charset=EUC-KR");
		response.getWriter().write(new MemberDAO().joinCheck(id)+"");
	
	
		return null;
	  
	      
	      
	}

}
