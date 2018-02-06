package com.lkoproject.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.ProductDAO;
import com.lkoproject.memberdto.ProductDTO;

public class indexCommand implements MCommand{
   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
      ProductDAO dao = new ProductDAO();
      ArrayList<ProductDTO> newDtos =null;
      ArrayList<ProductDTO> bestDtos =null;
      newDtos = dao.newList();
      bestDtos = dao.bsetList();
      
      request.setAttribute("newB", newDtos);
      request.setAttribute("best", bestDtos);
      
      return "index.jsp";
   }

}