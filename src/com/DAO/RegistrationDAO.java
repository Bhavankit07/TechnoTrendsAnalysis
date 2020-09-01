package com.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.RegistrationVO;

@Repository
public class RegistrationDAO {

	@Autowired
	SessionFactory sessionfactory;
	
	public void insertRegistration(RegistrationVO registrationVO) {
		// TODO Auto-generated method stub
			Session session= sessionfactory.openSession();
			Transaction tr=session.beginTransaction();
			session.save(registrationVO);
			tr.commit();
			session.close();
	}

}
