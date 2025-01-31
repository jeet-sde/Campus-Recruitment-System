package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.companyVO;

@Repository
public class companyDAOImpl implements companyDAO {

    @Autowired
    private SessionFactory sessionFactory;

    // Fetch all active companies
    public List<companyVO> findAll() {
        List<companyVO> ls = new ArrayList<companyVO>();
        try {
            Session session = sessionFactory.getCurrentSession();
            Query q = session.createQuery("from companyVO where status = true");
            ls = q.list();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return ls;
    }

    // Save or update a company
    public void saveCompany(companyVO companyVO) {
        try {
            Session session = sessionFactory.getCurrentSession();
            session.saveOrUpdate(companyVO);
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    // Fetch company by ID (active ones only)
    public List<companyVO> findByCompany(int id) {
        List<companyVO> ls = new ArrayList<companyVO>();
        try {
            Session session = sessionFactory.getCurrentSession();
            Query q = session.createQuery("from companyVO where status = true and id = :companyId");
            q.setParameter("companyId", id); // safer way to avoid SQL injection
            ls = q.list();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return ls;
    }

    // Count all active companies
    @Override
    public int countAllCompanies() {
        String hql = "SELECT COUNT(c) FROM companyVO c WHERE c.status = true"; // count active companies only
        Long count = (Long) sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
        return count.intValue();
    }

}
