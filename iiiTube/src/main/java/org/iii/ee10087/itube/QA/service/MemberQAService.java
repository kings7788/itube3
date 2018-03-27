package org.iii.ee10087.itube.QA.service;

import java.sql.SQLException;

import org.hibernate.Session;
import org.iii.ee10087.itube.HibernateSessionFactory.HibernateUtil;
import org.iii.ee10087.itube.QA.bean.MemberQABean;
import org.iii.ee10087.itube.QA.dao.MemberQADAO;
import org.iii.ee10087.itube.QA.dao.MemeberQAHibernate;


public class MemberQAService {
	private MemberQADAO memberDao;
	public MemberQAService() {
		memberDao = new MemeberQAHibernate(HibernateUtil.getSessionFactory());
	}
	
	public MemberQABean insert(MemberQABean bean) throws SQLException {
		MemberQABean result =null;
		if(bean!=null) {
			result = memberDao.insert(bean);
		return result;
		}
		return null;
	}
}
