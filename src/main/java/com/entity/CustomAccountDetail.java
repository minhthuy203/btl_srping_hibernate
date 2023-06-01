package com.entity;

import java.util.Collection;
import java.util.Date;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class CustomAccountDetail implements UserDetails{

	private Collection<? extends GrantedAuthority> authorities;
	private int id;
	private String accountname;
	private String email;
	private String fullName;
	private String password;
	private Boolean gender;
	private String address;
	private Date birthday;
	private String telephone;
	private Boolean enabled;
	private Boolean accountNonExpired;
	private Boolean accountNonLocked;
	private boolean credentialsNonExpired;
	public CustomAccountDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CustomAccountDetail(Collection<? extends GrantedAuthority> authorities,int id, String accountname, String email,
			String fullName, String password, Boolean gender, String address, Date birthday, String telephone,
			Boolean enabled, Boolean accountNonExpired, Boolean accountNonLocked, boolean credentialsNonExpired) {
		super();
		this.id = id;
		this.authorities = authorities;
		this.accountname = accountname;
		this.email = email;
		this.fullName = fullName;
		this.password = password;
		this.gender = gender;
		this.address = address;
		this.birthday = birthday;
		this.telephone = telephone;
		this.enabled = enabled;
		this.accountNonExpired = accountNonExpired;
		this.accountNonLocked = accountNonLocked;
		this.credentialsNonExpired = credentialsNonExpired;
	}
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccountname() {
		return accountname;
	}
	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public Boolean getAccountNonExpired() {
		return accountNonExpired;
	}
	public void setAccountNonExpired(Boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}
	public Boolean getAccountNonLocked() {
		return accountNonLocked;
	}
	public void setAccountNonLocked(Boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}
	public boolean isCredentialsNonExpired() {
		return credentialsNonExpired;
	}
	public void setCredentialsNonExpired(boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return accountname;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return accountNonExpired;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return accountNonLocked;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return enabled;
	}
	public void eraseCredentials() {
		this.password = null;
		}
	
}
