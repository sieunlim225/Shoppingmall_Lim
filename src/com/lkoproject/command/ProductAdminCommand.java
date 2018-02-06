package com.lkoproject.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lkoproject.memberdao.ProductDAO;
import com.lkoproject.memberdto.ProductDTO;

public class ProductAdminCommand implements MCommand{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String main_cate = (String)request.getParameter("main_cate");
		String sub_cate = (String)request.getParameter("sub_cate");
		
		System.out.println("메인카테고리:"+main_cate);
		System.out.println("서브카테고리:"+sub_cate);
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> dtos =null;
		
		if(sub_cate == null) {
			
		dtos = dao.list(main_cate);
		request.setAttribute("main", main_cate);
		
		}else if(sub_cate != null){
		dtos = dao.list(main_cate, sub_cate);									/*list(main_cate,sub_cate);*/
		request.setAttribute("main", main_cate);
		request.setAttribute("sub", sub_cate);
		
		}
		request.setAttribute("list", dtos);
		System.out.println("속성먹임");
		//admin 
		ProductDAO dao2 = new ProductDAO();
	      ProductDTO dto2 = new ProductDTO();
	      
	      String itemNo = request.getParameter("item_no1");
		dto2 = dao2.productView(itemNo);
	      request.setAttribute("info", dto2);
		
		return "productadmin.jsp";
	}

}
