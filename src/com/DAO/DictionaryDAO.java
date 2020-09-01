package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.DictionaryVO;
@Repository
public class DictionaryDAO {

	@Autowired
	SessionFactory sf;
	
	public void insert(DictionaryVO dictionaryVO) {
		// TODO Auto-generated method stub
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			session.save(dictionaryVO);
			tr.commit();
	
		}

	public List search() {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		Session session = sf.openSession();	
		Query q = session.createQuery("from DictionaryVO");
		ls=q.list();
		session.close();
		return ls;	
	}

	public void delete(DictionaryVO dictionaryVO) {
		// TODO Auto-generated method stub
		Session session =sf.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(dictionaryVO);
		tr.commit();
		session.close();
	}

	public List edit(DictionaryVO dictionaryVO) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		Query q = session.createQuery("from DictionaryVO where dictionaryId="+dictionaryVO.getDictionaryId());
		ls=q.list();
		session.close();
		return ls;
	}

	public void update(DictionaryVO dictionaryVO) {
		// TODO Auto-generated method stub
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.update(dictionaryVO);
		tr.commit();
		session.close();
	}

}
