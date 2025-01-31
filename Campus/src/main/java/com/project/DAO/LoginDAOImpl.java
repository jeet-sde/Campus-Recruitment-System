package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void save(LoginVO loginVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(loginVO);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	
	public List<LoginVO> findById(int id) {
		List<LoginVO> ls = new ArrayList<LoginVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from LoginVO where enabled = 1 and id = " + id);
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}
	
	
	public LoginVO getCurrentUserByUserName(String userName) {
		List<LoginVO> ls = null;
		try {
			Session session = this.sessionFactory.getCurrentSession();
			Query q = session.createQuery("from LoginVO where username = '" + userName + "' ");
			ls = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls.size() > 0 ? ls.get(0) : null;
	}

}
