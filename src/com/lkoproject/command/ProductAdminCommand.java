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
		
		//페이징
		
		  int prev = 0;
	      int next = 0;
	   
	      
	      int pageSize = 10;
	      String pageNum = request.getParameter("pageNum");
	      int currentPage = Integer.parseInt(pageNum);
	      int startRow = (currentPage -1) * pageSize + 1;
	      int endRow = currentPage * pageSize;
	      int count =  dao.itemCount();
	      int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
	      System.out.println(pageCount);
	      int pageBlock = 9;
	      
	      
	      int startPage = 1;
	      int endPage = 9;
	            //((currentPage-1)/pageBlock)*pageBlock+1;
	      if(currentPage>endPage) {
	         startPage +=10;
	      }
	      if(currentPage<startPage) {
	         startPage -=10;
	      }
	      endPage = startPage + pageBlock -1;
	      
	      if(endPage > pageCount) {
	         endPage = pageCount ;
	      }
	      
	      String prevNum = startPage-10+"";
	      String nextNum = startPage+10+"";
	      
	      if(startPage > pageBlock) {
	         prev = 1;
	      }
	      if(endPage < pageCount){
	         next = 1;
	      }
	      System.out.println("next:"+next);
	      System.out.println("startPage:"+startPage);
	      System.out.println("endPage:"+endPage);
	      System.out.println("pageCount:"+pageCount);
	      
	      
		if(count>0 && sub_cate == null) {
			
		dtos = dao.list(main_cate,startRow,endRow);
		request.setAttribute("main", main_cate);
		
		}else if(count>0 && sub_cate != null){
		dtos = dao.list(main_cate, sub_cate,startRow,endRow);									/*list(main_cate,sub_cate);*/
		request.setAttribute("main", main_cate);
		request.setAttribute("sub", sub_cate);
		
		}
		
		request.setAttribute("currentPage", currentPage);
	      request.setAttribute("pageCount", pageCount);
	      request.setAttribute("prev", prev);
	      request.setAttribute("next", next);   
	      request.setAttribute("prevNum", prevNum);
	      request.setAttribute("nextNum", nextNum);
	      request.setAttribute("startPage", startPage);
	      request.setAttribute("endPage", endPage);
		
		
		
		
		request.setAttribute("list", dtos);
		System.out.println("속성먹임");
		//admin 
		
		return "productadmin.jsp";
	}

}
