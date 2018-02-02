package com.lkoproject.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lkoproject.memberdao.ProductDAO;

public class AddcartCommand implements MCommand{

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
      System.out.println("AddcartCommand()"); 
      response.setContentType("text/html;charset=EUC-KR");
      
      request.setCharacterEncoding("EUC-KR");
      HttpSession Session = request.getSession();      
      String itemNo = request.getParameter("item_no");
      String size =request.getParameter("size");
      String amount =   request.getParameter("amount");
      String id = (String)Session.getAttribute("userId");
      
      System.out.println(itemNo);
      System.out.println(size);
      System.out.println(amount);
      System.out.println(id);
      
      ProductDAO dao = new ProductDAO();
      
      int i = dao.addCart(itemNo,size,amount,id);
      
      response.getWriter().write(i+"");
      
      return null;
      
      // 디버깅 코드 달아서 왜 인서트 안되는지 확인
   }

}