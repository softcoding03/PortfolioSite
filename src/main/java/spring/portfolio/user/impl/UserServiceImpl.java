package spring.portfolio.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring.portfolio.domain.User;
import spring.portfolio.user.UserDao;
import spring.portfolio.user.UserService;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService{

	//Field
	@Autowired
	@Qualifier("userDao")
	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	// Constructor
	public UserServiceImpl() {
		System.out.println(this.getClass());
	}

	@Override
	public void addUser(User user) throws Exception {
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}
	
}
