package com.firgurinshop.Services.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Entity.Product;
import com.firgurinshop.Entity.User;

@Service
public interface IAccountService {
	@Autowired
	public int AddAccount(User user);
	@Autowired
	public boolean CheckAccount(User user);
}
