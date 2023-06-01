package com.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dao.AccountDAO;
import com.entity.Account;
import com.entity.Accounts_Roles;
import com.entity.CustomAccountDetail;

@Service
public class CustomAccountDetailService implements UserDetailsService {
	@Autowired
	private AccountDAO accountDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		return loadUser(username);
	}
	private UserDetails loadUser(String username) {
		Account acc = accountDao.findByUserName(username);
		if (acc==null){
		return null;
		}
		Collection<GrantedAuthority> grantedAuthoritySet = new HashSet<>();
		Set<Accounts_Roles> role = acc.getAccountRole();
		for (Accounts_Roles account_Role : role) {
		grantedAuthoritySet.add(new SimpleGrantedAuthority(account_Role.getRole().getRoleName()));

		}

		return new CustomAccountDetail(grantedAuthoritySet,acc.getAccountId(), acc.getAccountName(), acc.getEmail(),acc.getFullName(), acc.getPassword(), acc.getGender(),
		acc.getAddress(),acc.getBirthday(), acc.getTelephone(), acc.getEnable(),true,true,true);
		}

}
