package com.pplus.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pplus.model.BookDAO;
import com.pplus.model.BookDTO;

@WebServlet("/BookintCon")
public class BookintCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String isbn = request.getParameter("isbn");
	
		// int book_num = Integer.parseInt(num);
		
		BookDAO bookDao =new BookDAO();
		
		BookDTO book=bookDao.bookSelect(isbn);
		
		HttpSession session =request.getSession();
		session.setAttribute("book", book);
		response.sendRedirect("bookint.jsp");
	}
}
