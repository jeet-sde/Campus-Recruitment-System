package com.project.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    // Save or update user
    public void saveUser(UserVO userVO) {
        try {
            Session session = sessionFactory.getCurrentSession();
            session.saveOrUpdate(userVO);
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    // Get user by loginId
    @Override
    public List<UserVO> getUserByLoginId(int loginId) {
        List<UserVO> userVOList = new ArrayList<UserVO>();
        try {
            Session session = sessionFactory.getCurrentSession();
            // Parameterized query to avoid SQL injection
            Query query = session.createQuery("from UserVO where loginId = :loginId");
            query.setParameter("loginId", loginId);
            userVOList = query.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userVOList;
    }

    // Find all active users
    public List<UserVO> findAll() {
        List<UserVO> userList = new ArrayList<UserVO>();
        try {
            Session session = sessionFactory.getCurrentSession();
            // Fetching active users only
            Query query = session.createQuery("from UserVO where status = true");
            userList = query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return userList;
    }

    // Find user by ID
    public List<UserVO> findById(int id) {
        List<UserVO> userList = new ArrayList<UserVO>();
        try {
            Session session = sessionFactory.getCurrentSession();
            // Parameterized query for safe execution
            Query query = session.createQuery("from UserVO where status = true and id = :id");
            query.setParameter("id", id);
            userList = query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return userList;
    }

    // Check if username already exists
    public List<UserVO> checkUsername(String username) {
        List<UserVO> userList = new ArrayList<UserVO>();
        try {
            Session session = sessionFactory.getCurrentSession();
            // Parameterized query for safe execution
            Query query = session.createQuery("from UserVO where username = :username");
            query.setParameter("username", username);
            userList = query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return userList;
    }

    // Count the total number of users
    @Override
    public int countUsers() {
        String hql = "SELECT COUNT(u) FROM UserVO u WHERE u.status = true"; // Count only active users
        Long count = (Long) sessionFactory.getCurrentSession().createQuery(hql).uniqueResult();
        return count != null ? count.intValue() : 0;
    }
}
