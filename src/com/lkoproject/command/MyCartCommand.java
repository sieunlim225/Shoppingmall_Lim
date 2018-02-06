package com.lkoproject.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lkoproject.memberdao.ProductDAO;
import com.lkoproject.memberdto.MyCartDTO;

public class MyCartCommand implements MCommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("MyCartÄ¿¸Çµå");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userId");
		System.out.println(id);
		
		ProductDAO dao = new ProductDAO();
		ArrayList<MyCartDTO> dtos = dao.cartView(id);
		
		request.setAttribute("list", dtos);
		return "cart.jsp";
	}

}
