package com.lkoproject.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lkoproject.command.AddcartCommand;
import com.lkoproject.command.AdminProducDropCommand;
import com.lkoproject.command.AdminProducModifyCommand;
import com.lkoproject.command.CheckoutCommand;
import com.lkoproject.command.CheckoutProductCommand;
import com.lkoproject.command.JoinCommand;
import com.lkoproject.command.ListCommand;
import com.lkoproject.command.LoginCommand;
import com.lkoproject.command.MCommand;
import com.lkoproject.command.ModifyActionCommand;
import com.lkoproject.command.ModifyCommand;
import com.lkoproject.command.ProductAdminCommand;
import com.lkoproject.command.ProductViewCommand;
import com.lkoproject.command.UploadCommand;
import com.lkoproject.command.UserRegisterCheckCommand;
import com.lkoproject.command.indexCommand;
import com.lkoproject.command.loginPasswordCommand;
import com.lkoproject.command.passwordcheckCommand;

/**
 * Servlet implementation class MController
 */
@WebServlet("*.mvc") //해당 uri로 오는 명령을 받음. 
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		actionMVC(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
		actionMVC(request,response);
	}
	
	protected void actionMVC(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionMVC()"); // 디버깅 코드
		request.setCharacterEncoding("EUC-KR"); // 인코딩
		
		String viewPage = null;
		
		MCommand command = null;// 인터페이스
		
		String uri = request.getRequestURI(); // 리퀘스트로부터 URI 획득
		System.out.println("URI: " + uri); //디버깅코드
		
		String contextPath = request.getContextPath(); // 콘텍스트 패스를 얻음
		System.out.println("contextPath : " + contextPath); // 디버깅
		
		String[] arrURI = uri.split("/");  //  URI의 내용을 " / " 를 구분자로 나눠 배열을 만듬
		
		String comm = arrURI[arrURI.length-1]; // 배열의 마지막 인덱스 획득
		
		for(int i=0; i < arrURI.length ; i++) {
			System.out.printf("arrURI[%d] = %s\n", i, arrURI[i]);
		} // 배열의 각 인덱스의 값을 확인하는 디버깅 코드.
		
		System.out.println("comm: " + comm); // 마지막 인덱스의 값을 확인하는 디버깅코드.
		
		if(comm.equals("join_check.mvc")) {
			System.out.println("join_check.mvc");
			command = new JoinCommand();
			viewPage = command.execute(request,response);
			/*viewPage = "login.jsp";*/
		}else if(comm.equals("UserRegisterCommand.mvc")) {
			
			command = new UserRegisterCheckCommand();
			viewPage = command.execute(request,response);
			/*viewPage = "index.jsp";*/
		}if(comm.equals("login.mvc")) {
			System.out.println("login.mvc");
			viewPage = "login.jsp";
			/*viewPage = "login.jsp";*/
		}
		else if(comm.equals("login_check.mvc")) {
			System.out.println("login_check.mvc");
			command = new LoginCommand();
			viewPage = command.execute(request,response);
			/*viewPage = "index.jsp";*/
		}else if(comm.equals("modify.mvc")) {
			command = new ModifyCommand();
			viewPage = command.execute(request, response);
		}else if(comm.equals("modify_action.mvc")) {
			command = new ModifyActionCommand();
			viewPage = command.execute(request, response);
		}
		else if(comm.equals("logout.mvc")) {
			System.out.println("로그아웃");
			HttpSession session = request.getSession();
			session.invalidate();
			System.out.println(session.getId());
			viewPage = "index.jsp";		
		// 여기까지 회원관련 	
		}else if(comm.equals("index.mvc")) {
	         command = new indexCommand();
	         viewPage = command.execute(request,response);
	         /*viewPage = "products.jsp";*/   
	      }
		
		else if(comm.equals("products.mvc")) {
			command = new ListCommand();
			viewPage = command.execute(request,response);
			/*viewPage = "products.jsp";*/	
		}else if(comm.equals("upload.mvc")) {
			command = new UploadCommand();
			viewPage = command.execute(request, response);
		}else if(comm.equals("checkout.mvc")) { //상품구매
			/*command = new CheckoutProductCommand();*/
			command = new CheckoutCommand();
			viewPage = command.execute(request, response);
		}
		else if(comm.equals("product_detail.mvc")) {
	         command = new ProductViewCommand();
	         viewPage = command.execute(request, response);
	    }else if(comm.equals("addcart.mvc")) {
	         command = new AddcartCommand();
	         viewPage = command.execute(request, response);
	      }else if(comm.equals("loginpassword_check.mvc")) {
	          System.out.println("loginpassword_check.mvc");
	          command = new loginPasswordCommand();
	          viewPage = command.execute(request, response);
	       
	       }else if(comm.equals("password_check.mvc")) {
	          System.out.println("password_check.mvc");
	          command = new passwordcheckCommand();
	          viewPage = command.execute(request, response);
	       }else if(comm.equals("productadmin.mvc")) {
	            command = new ProductAdminCommand();
	            viewPage = command.execute(request, response);
	        }else if(comm.equals("AdminProducModify.mvc")) {
	            command = new AdminProducModifyCommand();
	            viewPage = command.execute(request, response);
	        }else if(comm.equals("AdminProducDrop.mvc")) {
	            command = new AdminProducDropCommand();
	            viewPage = command.execute(request, response);
	        }

		
		
		if(viewPage!=null) {
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		}
	}
}
