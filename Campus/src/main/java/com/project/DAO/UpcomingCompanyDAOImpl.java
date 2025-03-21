package com.project.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project.model.UpcomingCompanyVO;

@Repository
@Transactional
public class UpcomingCompanyDAOImpl implements UpcomingCompanyDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveCompany(UpcomingCompanyVO companyVO) {
        sessionFactory.getCurrentSession().saveOrUpdate(companyVO);
    }

    @Override
    public List<UpcomingCompanyVO> findAll() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("FROM UpcomingCompanyVO").list();
    }
}
