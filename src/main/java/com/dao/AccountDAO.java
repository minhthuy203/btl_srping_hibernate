package com.dao;


import com.entity.Account;


public interface AccountDAO {
	public Account findByUserName(String username);
	public Account findById(Integer accId);

}
