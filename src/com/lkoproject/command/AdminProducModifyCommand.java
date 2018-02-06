package com.lkoproject.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.ProductDAO;
import com.lkoproject.memberdto.ProductDTO;

public class AdminProducModifyCommand implements MCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("EUC-KR");
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		
		
		ProductDTO dto = new ProductDTO();
		ProductDTO dto1 = new ProductDTO();
		ProductDAO dao = new ProductDAO();
		
		dto.setItemNo(Integer.parseInt(request.getParameter("item_no")));
		
		dto1 = dao.adminmodify(dto);
		
		request.setAttribute("list", dto1);
		
		
		return "product_modify.jsp";
	}

}
