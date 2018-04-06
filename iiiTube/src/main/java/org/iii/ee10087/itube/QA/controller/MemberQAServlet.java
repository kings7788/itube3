package org.iii.ee10087.itube.QA.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.hibernate.Session;
import org.iii.ee10087.itube.QA.bean.MemberQABean;
import org.iii.ee10087.itube.QA.dao.MemeberQAHibernate;
import org.iii.ee10087.itube.QA.service.MemberQAService;

import util00.GlobalService;
import util00.SystemUtils;

@MultipartConfig(location = "", 
fileSizeThreshold = 5*1024 * 1024, 
maxFileSize = 1024 * 1024 * 500, 
maxRequestSize = 1024 * 1024 * 500 * 5)

@WebServlet("/customerreport/qa.controller")
public class MemberQAServlet extends HttpServlet {
private MemberQAService service ;
private MemberQABean bean;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("content-type", "text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8"); // 文字資料轉內碼
		HttpSession session = request.getSession();
		//接收資料
		String topic = request.getParameter("topic");
		String id = request.getParameter("idd");		
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("address");
		String mailbox = request.getParameter("mailbox");
		String titlee = request.getParameter("title");
		String report = request.getParameter("report");
		String submit = request.getParameter("prodaction");
		long sizeInBytes = 0;
		InputStream is = null;
		String fileName="";
		Map<String, String> errors =new HashMap<String,String>();
		request.setAttribute("errors", errors);
		// 取出HTTP multipart request內所有的parts
		Collection<Part> parts = request.getParts(); 
				
		// 由parts != null來判斷此上傳資料是否為HTTP multipart request
		if (parts != null) {   // 如果這是一個上傳資料的表單				
			for (Part p : parts) {   
				String fldName = p.getName();
				String value = request.getParameter(fldName);		
			
				if (p.getContentType() != null) {
					// 取出圖片檔的檔名
					fileName = GlobalService.getFileName(p);
					// 調整圖片檔檔名的長度，需要檔名中的附檔名，所以調整主檔名以免檔名太長無法寫入表格
					fileName = GlobalService.adjustFileName(fileName, GlobalService.IMAGE_FILENAME_LENGTH);
					if (fileName != null && fileName.trim().length() > 0) {
						sizeInBytes = p.getSize();
						is = p.getInputStream();
					} else {
						errors.put("errPicture", "必須挑選圖片檔");
					}
				}
			}
		}
			
			
		//驗證id 不能是空值
	
		
		if("submit".equals(submit)) {
			if(id==null||id.length()==0) {
				errors.put("id", "請輸入帳號");
			}
		}//驗證id結束
//轉換資料
		
		Blob blob = null;
		try {
			blob = SystemUtils.fileToBlob(is, sizeInBytes);
		} catch (SQLException e1) {
			
			e1.printStackTrace();
		}
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
		bean.setMemAddr(addr);
		bean.setMemTitle(titlee);
		bean.setMemAsk(report);
		bean.setMemQuesTime(date);
		bean.setMemFileName(fileName);
		bean.setMemQuespic(blob);
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
				}
				request.getRequestDispatcher("/customerreport/CustomerCommonQA.jsp").forward(request,response);
		}
		
	}//dopost結束	
	


}
