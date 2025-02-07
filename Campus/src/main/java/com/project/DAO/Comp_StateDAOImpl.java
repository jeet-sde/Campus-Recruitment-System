package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.model.Comp_StateVO;
import com.project.model.StateVO;

@Repository
@Transactional
public class Comp_StateDAOImpl implements Comp_StateDAO{

	@Autowired
	private SessionFactory sessionFactory;

	public void saveState(Comp_StateVO Comp_StateVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(Comp_StateVO);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public List<Comp_StateVO> findStates() {
		List<Comp_StateVO> ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from Comp_StateVO where status = true");
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List<Comp_StateVO> findByState(int id) {
		List<Comp_StateVO> ls = new ArrayList<Comp_StateVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from Comp_StateVO where status = true and id = " + id);
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	
}
