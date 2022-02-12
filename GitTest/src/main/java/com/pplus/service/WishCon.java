package com.pplus.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.pplus.model.PMemberDTO;
import com.pplus.model.RecBookDAO;

@WebServlet("/WishCon")
public class WishCon implements iPCommand{
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	      response.setContentType("text/html; charset=utf-8");
	      HttpSession session = request.getSession();
	      PrintWriter out =response.getWriter();
		
			int num = Integer.parseInt(request.getParameter("num"));
			int recbooknum=Integer.parseInt(request.getParameter("recbooknum"));
			
			PMemberDTO member =(PMemberDTO) session.getAttribute("member");
			RecBookDAO recbookDao= new RecBookDAO();		
			recbookDao.recBookWish(member.getMember_nick(),recbooknum, num);

			out.write(num + "");
	}
}