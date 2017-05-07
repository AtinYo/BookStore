package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.*;
import dao.*;

import java.sql.Timestamp;
import java.util.Date;
import java.text.SimpleDateFormat;

public class UserOrderServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UserOrderServlet() {
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
		
		//这里是根据主页传过来要显示的最新上架书本数量Num来返回一个list即可
		Integer pageNum=(Integer)request.getSession().getAttribute("UserOrderPage_pageNum");
		Integer pageSize=(Integer)request.getSession().getAttribute("UserOrderPage_pageSize");
		List<OrderBean> oList=null;
		OrderDAO oDAO=new OrderDAO();
		
		/*返回订单内的所有书籍信息*/
		BookDAO bDAO=new BookDAO();
		List<BookBean> blist=bDAO.findBooksWithOrderID(1);
		request.getSession().setAttribute("blist", blist);
		bDAO.CloseBookDAO();
		/**/
		
		
		Integer uID=(Integer)request.getSession().getAttribute("UserOrderPage_UserID");
		oList=oDAO.findOrdersWithUserID(uID, pageNum, pageSize);
		Integer pageMaxNum=oDAO.getOrdersCountWithUserID(uID);
		request.getSession().setAttribute("UserOrderPage_pageMaxNum", pageMaxNum);
		request.getSession().setAttribute("UserOrderPage_OrderList",oList);
		oDAO.CloseBookDAO();
		
		response.sendRedirect("/BookStore/JSP/UserOrderPage.jsp");
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
