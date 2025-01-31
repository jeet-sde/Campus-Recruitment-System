package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.DAO.LoginDAO;
import com.project.DAO.UserDAO;
import com.project.model.LoginVO;
import com.project.model.UserVO;


@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private LoginDAO loginDAO;
	

	@Override
	public List<UserVO> findAll() {
		return this.userDAO.findAll();
	}

	@Override
	public void deleteUser(int id) {
		List<UserVO> ls = this.userDAO.findById(id);
		UserVO userVO = ls.get(0);

		userVO.setStatus(false);
		this.userDAO.saveUser(userVO);
	}

	@Override
	public void saveUser(UserVO userVO) {

		System.out.println(userVO.getUsername());

		if (userVO.getId() > 0) {

			List<LoginVO> ls = this.loginDAO.findById(userVO.getLoginVO().getId());
			LoginVO loginVO = ls.get(0);
			userVO.setUsername(loginVO.getUsername());

		} else {

			LoginVO loginVO = new LoginVO();

			loginVO.setEnabled("1");
			loginVO.setUsername(userVO.getUsername());

			String password = "password";
			loginVO.setPassword(password);

			loginVO.setPassword("password");
			loginVO.setRole("ROLE_USER");

			this.loginDAO.save(loginVO);

			userVO.setLoginVO(loginVO);

		}
		this.userDAO.saveUser(userVO);

	}
	
	@Override
	public UserVO getCurrentUser(String username) {
		LoginVO loginVo = loginDAO.getCurrentUserByUserName(username);
		UserVO userVo=null;
		try{
			userVo=userDAO.getUserByLoginId(loginVo.getId()).get(0);
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return userVo;
	}

	@Override
	public List<UserVO> findById(int id) {
		return this.userDAO.findById(id);
	}

	@Override
	public boolean checkUsername(String username) {
		List<UserVO> userList = this.userDAO.checkUsername(username);
		return userList.size() > 0;
	}

	@Override
	public boolean changeStatus(Integer id) {

		List<UserVO> ls = this.findById(id);

		if (ls == null || ls.size() == 0) {
			return false;
		}

		UserVO userVO = ls.get(0);
		LoginVO loginVO = userVO.getLoginVO();

		String status = loginVO.getEnabled();
		loginVO.setEnabled(status.equals("1") ? "0" : "1");

		this.loginDAO.save(loginVO);

		return true;
	}
	
	public int countUsers() {
        return userDAO.countUsers();
    }


}