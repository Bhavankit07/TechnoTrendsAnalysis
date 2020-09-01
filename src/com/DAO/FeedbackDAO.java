package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.FeedbackVO;

@Repository
public class FeedbackDAO {
	@Autowired
	SessionFactory sf;
	
	public void insert(FeedbackVO data) {
		try {
			Session s = sf.openSession();
			Transaction t = s.beginTransaction();
			s.save(data);
			t.commit();
			s.close();
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	
	public List view(){
		List data=null;
		try{
			Session session=sf.openSession();
			Query q=session.createQuery("from FeedbackVO");
			data=q.list();
		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return data;
	}
}
