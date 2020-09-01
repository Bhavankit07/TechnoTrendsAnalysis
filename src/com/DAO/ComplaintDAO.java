package com.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.ComplaintVO;


@Repository
public class ComplaintDAO {
	@Autowired
	SessionFactory sf;
	
	public void insert(ComplaintVO data) {
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
			Query q=session.createQuery("from ComplaintVO");
			data=q.list();
		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return data;
	}
	
	public List reply(ComplaintVO data) {
		 List ls=null;
			try{
				Session session=sf.openSession();
				Query q=session.createQuery("from ComplaintVO where complainId='"+data.getComplainId()+"'");
				ls=q.list();
				session.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return ls;
		
	}
	public void insertReply(ComplaintVO data) {
		try {
			Session session = sf.openSession();
			Transaction t = session.beginTransaction();
			Query q=session.createQuery("update ComplaintVO set complainStatus='"+data.getComplainStatus()+"' ,complainReply='"+data.getComplainReply()+"'where complainId='"+data.getComplainId()+"'");
			q.executeUpdate();
			t.commit();
			session.close();
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
	public List viewuser(int id) {
		 List ls=null;
		 ComplaintVO data=new ComplaintVO();
			try{
				Session session=sf.openSession();
				Query q=session.createQuery("from ComplaintVO where loginVO='"+id+"'");
				ls=q.list();
				session.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return ls;
		
	}
}
