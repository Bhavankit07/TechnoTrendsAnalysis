package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.KeywordVO;
@Repository

public class KeywordDAO {

	@Autowired
	SessionFactory sf;
	public void insert(KeywordVO keywordVO) {
		
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(keywordVO);
		tr.commit();
		// TODO Auto-generated method stub
		
	}
	
	public List search() {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		Session session = sf.openSession();	
		Query q = session.createQuery("from KeywordVO");
		ls=q.list();
		session.close();
		return ls;	
	}

	public void delete(KeywordVO keywordVO) {
		// TODO Auto-generated method stub
		Session session =sf.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(keywordVO);
		tr.commit();
		session.close();
	}

	public List edit(KeywordVO keywordVO) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Query q = session.createQuery("from KeywordVO where keywordId="+keywordVO.getKeywordId());
		ls=q.list();
		session.close();
		return ls;
	}

	public void update(KeywordVO keywordVO) {
		// TODO Auto-generated method stub
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.update(keywordVO);
		tr.commit();
		session.close();
	}

}
