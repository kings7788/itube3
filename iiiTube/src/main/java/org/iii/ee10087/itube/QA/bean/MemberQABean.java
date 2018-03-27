package org.iii.ee10087.itube.QA.bean;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.iii.ee10087.itube.HibernateSessionFactory.HibernateUtil;
import org.iii.ee10087.itube.QA.dao.MemberQADAO;
import org.iii.ee10087.itube.QA.dao.MemeberQAHibernate;

@Entity
@Table(name = "member_question")
public class MemberQABean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer memberQuesNum;
	private String memId;
	private String memMail;
	private String memName;
	private Integer memTel;
	private String memAsk;
	private java.util.Date memQuesTime;

	
	public MemberQABean() {
		
	}
	public MemberQABean(Integer memberQuesNum, String memId, String memMail, String memName, Integer memTel,
			String memAsk, Date memQuesTime) {
		this.memberQuesNum = memberQuesNum;
		this.memId = memId;
		this.memMail = memMail;
		this.memName = memName;
		this.memTel = memTel;
		this.memAsk = memAsk;
		this.memQuesTime = memQuesTime;
	}
//	public static void main(String[] args) throws SQLException {
////		StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
////		SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
////			Session session = factory.getCurrentSession();
////			Transaction trx = session.beginTransaction();
//		try {
//			HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();
//			Session session = HibernateUtil.getSessionFactory().getCurrentSession();
//			
//			MemeberQAHibernate dao = new MemeberQAHibernate(HibernateUtil.getSessionFactory());
////			MemberQABean mem = new MemberQABean(100, "fuckyou7710", "55@22", "三重金城武", 777558, "在座的各位都是垃圾", new java.sql.Date(0));
//////			insert test
////			mem.setMemberQuesNum(100);
////			mem.setMemId("fuckyou7710");
////			mem.setMemMail("55@22");
////			mem.setMemName("三重金城武");
////			mem.setMemTel(777558);
////			mem.setMemAsk("在座的各位都是垃圾");
////			mem.setMemQuesTime(new java.sql.Date(0));
////			dao.insert(mem);
//
////			update test
//			MemberQABean mem = new MemberQABean();
//			mem.setMemberQuesNum(1);             //update 一定要給正確的identity
//			mem.setMemId("fuckyou7789");
//			mem.setMemMail("55@226");
//			mem.setMemName("三重金城武6");
//			mem.setMemTel(7775586);
//			mem.setMemAsk("在座的各位都是垃圾77777");
//			mem.setMemQuesTime(new java.sql.Date(0));
//			dao.update(mem);
////			session.getSession().get(MemberQABean, "fuckyoumom7788");
//
////			delete test
////			mem.setMemberQuesNum(2);     
////			dao.delete(mem);
//			
////          select test
////			mem.setMemberQuesNum(2);     
////			MemberQABean bean = dao.findbyPrimaryKey(mem);
////			System.out.println("bean="+bean);
//
////          select All test
////			List<MemberQABean> beans = dao.getALL();
////			System.out.println("beans="+beans);
//			
//			
////			trx.commit();
////			session.close();
//			HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().commit();
//			HibernateUtil.getSessionFactory().getCurrentSession().close();
//		} finally {
//			HibernateUtil.closeSessionFactory();
////			factory.close();
//		}
//	}

	public Integer getMemberQuesNum() {
		return memberQuesNum;
	}

	public void setMemberQuesNum(Integer memberQuesNum) {
		this.memberQuesNum = memberQuesNum;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemMail() {
		return memMail;
	}

	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public Integer getMemTel() {
		return memTel;
	}

	public void setMemTel(Integer memTel) {
		this.memTel = memTel;
	}

	public String getMemAsk() {
		return memAsk;
	}

	public void setMemAsk(String memAsk) {
		this.memAsk = memAsk;
	}

	public java.util.Date getMemQuesTime() {
		return memQuesTime;
	}
	public void setMemQuesTime(java.util.Date memQuesTime) {
		this.memQuesTime = memQuesTime;
	}
	@Override
	public String toString() {
		return "MemberQABean [memberQuesNum=" + memberQuesNum + ", memId=" + memId + ", memMail=" + memMail
				+ ", memName=" + memName + ", memTel=" + memTel + ", memAsk=" + memAsk + ", memQuesTime=" + memQuesTime
				+ "]";
	}
	


}