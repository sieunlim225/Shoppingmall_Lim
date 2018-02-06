package com.lkoproject.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.ProductDAO;
import com.lkoproject.memberdto.ProductDTO;

public class AdminProducDropCommand implements MCommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter out = response.getWriter();
		
		
		ProductDTO dto = new ProductDTO();
		ProductDAO dao = new ProductDAO();
		
		dto.setItemNo(Integer.parseInt(request.getParameter("item_no")));
		
		int result = dao.admindrop(dto);
		if(result==3) {
			out.println("<script>");
			out.println("alert('삭제 되었습니다')");
			out.println("var url= document.referrer");
			out.println("location.href= url");
			out.println("</script>");
		}
		
			
		//리턴 추후 수정필요 이전페이지로 보이게
		return null;
	}

}
