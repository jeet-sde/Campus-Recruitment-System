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

import com.project.model.CityVO;
import com.project.model.Comp_CityVO;

@Repository
@Transactional
public class Comp_CityDAOImpl implements Comp_CityDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveComp_City(Comp_CityVO Comp_CityVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(Comp_CityVO);
		} catch (HibernateException e) {
			e.printStackTrace();
		}
	}

	public List findComp_City() {
		List ls = new ArrayList();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from Comp_CityVO where status = true");
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List<Comp_CityVO> findByComp_City(int id) {
		List<Comp_CityVO> ls = new ArrayList<Comp_CityVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from Comp_CityVO where status = true and id = " + id);
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;
	}

	public List<Comp_CityVO> getCityByComp_State(int id) {
		List<Comp_CityVO> ls = new ArrayList<Comp_CityVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from Comp_CityVO where status = true and Comp_StateVO = " + id);
			ls = q.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return ls;

	}
}
