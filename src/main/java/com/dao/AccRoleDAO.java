package com.dao;



import com.entity.Account;
import com.entity.Accounts_Roles;

import com.entity.Role;

public interface AccRoleDAO {
	public boolean register(Account acc);
	public boolean insertAccRole(Accounts_Roles accRole);
	public Role getRoleByName(String roleName);
	
}
