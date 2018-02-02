package com.lkoproject.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lkoproject.memberdao.MemberDAO;
import com.lkoproject.memberdao.ProductDAO;
import com.lkoproject.memberdto.MemberDTO;
import com.lkoproject.memberdto.ProductDTO;

public class CheckoutCommand implements MCommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("EUC-KR");
	      response.setContentType("text/html;charset=EUC-KR");
		
		HttpSession session = request.getSession();
	      String userId = (String)session.getAttribute("userId");
	      System.out.println(userId);
	      MemberDAO dao = new MemberDAO();
	      MemberDTO dto = dao.modify(userId); //회원수정에있는 dao 가져옴
	      request.setAttribute("memberInfo", dto);
	      
	      
	      
	      
	      String itemNo = request.getParameter("item_no");
	      String delivery = request.getParameter("delivery");
	      String amount = request.getParameter("amount");
	      String deli = null;
	      int addMo = 0;
	      System.out.println(delivery);
	      System.out.println(itemNo);
	      System.out.println(amount);
	      
	      ProductDAO dao2 = new ProductDAO();
	      ProductDTO dto2 = new ProductDTO();
	      
	      dto2 = dao2.productView(itemNo);
	      request.setAttribute("info", dto2);
	      
	      if(delivery.equals("y")) {
	    	  deli = "선불";
	    	  addMo = 2500;
	      }else {
	    	  deli = "착불";
	      }
	      
	      request.setAttribute("deli", deli);
	      request.setAttribute("amount", amount); 
	      request.setAttribute("addMo", addMo);
	      
	      
	      
	      
	      
	      
	      
	      return "checkout.jsp";
	}

}
