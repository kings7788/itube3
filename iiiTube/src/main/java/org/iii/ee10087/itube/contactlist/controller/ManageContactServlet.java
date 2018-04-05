package org.iii.ee10087.itube.contactlist.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.ee10087.itube.QA.bean.MemberQABean;
import org.iii.ee10087.itube.QA.service.MemberQAService;
@WebServlet("/contactlist/ManageContactServlet")
public class ManageContactServlet extends HttpServlet {
	MemberQAService service = new MemberQAService();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 本程式將產生資料，然後轉交給JSP，由JSP顯示出來。
		// 第一份資料為字串物件，它將會以"Customer"為識別字串，存放在request範圍(requestScope)
		response.setCharacterEncoding("UTF-8");
		LinkedList<HashMap<String, String>> l1 = new LinkedList<HashMap<String, String>>();
		PrintWriter out = response.getWriter();
		
			List<MemberQABean> list;
			try {
					list = service.getALL();
					request.setAttribute("MapKey", list);
				} catch (SQLException e) {
					e.printStackTrace();
				}		
			RequestDispatcher rd = request.getRequestDispatcher("/manager/ManageContactListoop.jsp");
			rd.forward(request, response);
			return;
	}

}
