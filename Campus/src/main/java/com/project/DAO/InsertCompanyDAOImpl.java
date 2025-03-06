package com.project.DAO;

import java.util.List;

import javax.transaction.Transactional;
import org.hibernate.Session;


import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.model.InsertCompanyVO;

@Repository
@Transactional
public class InsertCompanyDAOImpl implements InsertCompanyDAO {

    @Autowired
    private SessionFactory sessionFactory;
   

    @Override
    public void saveCompany1(InsertCompanyVO companyVO) {
        sessionFactory.getCurrentSession().saveOrUpdate(companyVO);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<InsertCompanyVO> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from InsertCompanyVO").list();
    }
    	

}
