package org.iii.ee10087.itube.QA.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.iii.ee10087.itube.QA.bean.MemberQABean;
import org.iii.ee10087.itube.QA.dao.MemeberQAHibernate;
import org.iii.ee10087.itube.QA.service.MemberQAService;
@WebServlet("/customerreport/qa.controller")
public class MemberQAServlet extends HttpServlet {
private MemberQAService service ;
private MemberQABean bean;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//接收資料
		String topic = request.getParameter("topic");
		String id = request.getParameter("idd");		
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String mailbox = request.getParameter("mailbox");
		String titlee = request.getParameter("title");
		String report = request.getParameter("report");
		String submit = request.getParameter("prodaction");
		
		//驗證id 不能是空值
		Map<String, String> errors =new HashMap<String,String>();
		request.setAttribute("errors", errors);
		
		if("submit".equals(submit)) {
			if(id==null||id.length()==0) {
				errors.put("id", "請輸入帳號");
			}
		}//驗證id結束
//轉換資料
		int telp = 0;
		if(tel!=null &&tel.length()!=0) {
			try {
				telp = Integer.parseInt(tel);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				errors.put("tel", "請輸入正確的電話!");
			}
		}	
		
//呼叫Model
		Date date = new java.util.Date();
		bean = new MemberQABean();
		bean.setMemberQuesNum(100);
		bean.setMemTopic(topic);
		bean.setMemId(id);
		bean.setMemName(name);
		bean.setMemMail(mailbox);
		bean.setMemTel(telp);
		bean.setMemTitle(titlee);
		bean.setMemAsk(report);
		bean.setMemQuesTime(date);
	
//model 結果導向view
		String contextPath = getServletContext().getContextPath();
		if(submit!=null&& submit.equals("submit")) {
			service = new MemberQAService();
			
			MemberQABean result=null;
				try {
						result = service.insert(bean);
						session.setAttribute("insertok", bean);
//						response.sendRedirect(
//						response.encodeRedirectURL(contextPath + "/customerreport/reportSuccess.jsp" ));			
						response.sendRedirect(contextPath+"/customerreport/reportSuccess.jsp");
						
						//request.getRequestDispatcher("/customerreport/reportSuccess.jsp").forward(request,response);
						return;
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			if(result==null) {
				errors.put("action", "Insert fail");
			}else {
				request.setAttribute("insert", result);
			}
			request.getRequestDispatcher("/customerreport/CustomerCommonQA.jsp").forward(request,response);
		}
		
	}//doget結束	
	

	@Override
	protected void doPost(HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
}
