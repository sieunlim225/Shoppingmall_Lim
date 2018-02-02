package com.lkoproject.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import com.lkoproject.memberdao.MemberDAO;
import com.lkoproject.memberdto.MemberDTO;

public class ModifyCommand implements MCommand{

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
      HttpSession session = request.getSession();
      String userId = (String)session.getAttribute("userId");
      System.out.println(userId);
      MemberDAO dao = new MemberDAO();
      MemberDTO dto = dao.modify(userId);
      request.setAttribute("memberInfo", dto);
      return "modify.jsp";
   }

}