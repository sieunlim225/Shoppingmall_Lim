package com.lkoproject.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.ProductDAO;
import com.lkoproject.memberdto.ProductDTO;

public class ProductViewCommand implements MCommand{

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
      
      String itemNo = request.getParameter("item_id");
      
      ProductDAO dao = new ProductDAO();
      ProductDTO dto = dao.productView(itemNo);
      request.setAttribute("info", dto);
      
      return "product_detail.jsp";
      
   }

}
