package com.firgurinshop.Services.user;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Dao.UsersDao;
import com.firgurinshop.Entity.User;

@Service
public class AccountServiceImpl implements IAccountService{
	@Autowired
	UsersDao usersDao = new UsersDao();
	
	public int AddAccount(User user) {
		user.setUser_password(BCrypt.hashpw(user.getUser_password(), BCrypt.gensalt(12)));
		return usersDao.AddAccount(user);
	}


	public User CheckAccount(User user) {
		String pass = user.getUser_password();
		user = usersDao.getUser(user);
		if(user!=null) {
			if(BCrypt.checkpw(pass, user.getUser_password())) {
				return user;
			}
			else {
				return null;
			}
		}
		return null;
		
	}
}
