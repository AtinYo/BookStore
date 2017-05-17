package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.*;
import dao.*;

public class SearchServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SearchServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String title=null;
		if(!DBC.isNullOrEmpty((String)request.getParameter("searchInput"))){
			title=(String)request.getParameter("searchInput");
		}
		else if(!DBC.isNullOrEmpty((String)request.getParameter("bTitle"))){
			title=(String)request.getParameter("bTitle");
		}
		
		//如果有下一页则拿下一页的页码，否则默认为1
		Integer currentPage;
		Integer pageSize = 5;
		if(request.getParameter("pageNext")!=null){
			currentPage=Integer.parseInt(request.getParameter("pageNext"));
		}
		else{
			currentPage=1;
		}
		request.getSession().setAttribute("SearchPage_currentPage", currentPage);
		request.getSession().setAttribute("SearchPage_pageSize", pageSize);
		
		BookDAO bDAO=new BookDAO();
		List<BookBean> bList=bDAO.findBooksWithName(title, currentPage, pageSize);
		request.getSession().setAttribute("SearchPage_BookList",bList);
		//计算页码最大值
		int count = bDAO.getBookNumAfterSearch();
		int pageNum = 1;
		if(count > 0){
			pageNum = count%pageSize==0?count/pageSize:count/pageSize+1;
		}
		request.getSession().setAttribute("SearchPage_pageNum", pageNum);
		bDAO.CloseBookDAO();
		response.sendRedirect("/BookStore/JSP/pages/SearchPage.jsp");
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
