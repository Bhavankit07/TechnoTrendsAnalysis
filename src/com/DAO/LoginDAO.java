package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.LoginVO;

@Repository
public class LoginDAO {
	
	@Autowired
	SessionFactory sessionfactory;
	
	public void insertLogin(LoginVO loginVO)
	{
		Session session = sessionfactory.openSession();
		Transaction tr = session.beginTransaction();
		session.save(loginVO);
		tr.commit();
		session.close();
	}
	
	public List searchUsername(LoginVO v)
	{
		List li=new ArrayList();
		Session session = sessionfactory.openSession();
		Query q=session.createQuery("from LoginVO where loginEmail='"+v.getemail()+"'");
		li=q.list();
		return li;
	}

	public List searchLoginId(LoginVO v)
	{
		List li=new ArrayList();
		Session session = sessionfactory.openSession();
		Query q=session.createQuery("from LoginVO where loginEmail='"+v.getemail()+"'");
		li=q.list();
		return li;
	}
	
	public void updatePassword(LoginVO v)
	{
		Session session = sessionfactory.openSession();
		Transaction t = session.beginTransaction();
		Query q=session.createQuery("update LoginVO SET loginPassword='"+v.getLoginPassword()+"' where loginEmail='"+v.getemail()+"'");
		q.executeUpdate();
		t.commit();
	}
}
