package com.entity;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "accounts")
public class Account {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "AccountId")
	private int accountId;
	@Column(name = "AccountName")
	@NotEmpty(message = "Account Name is empty!")
	private String accountName;
	@Column(name = "Password")
	@NotEmpty(message = "Password is null !")
	private String password;
	@Column(name = "enable")
	private Boolean enable;
	@Column(name = "FullName")
	@NotEmpty(message = "Full Name is null !")
	private String fullName;
	@Column(name = "Gender")
	@NotNull(message = "Gender is null !")
	private Boolean gender;
	@Column(name = "Birthday")
	@NotNull(message = "Birthday is Null !")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Past(message = "Birthday is not valid!")
	private Date birthday;
	@Column(name = "Address")
	@NotEmpty(message = "Address is empty!")
	private String address;
	@Column(name = "Email")
	@NotEmpty(message = "Email is empty!")
	private String email;
	@Column(name = "Telephone")
	@NotEmpty(message = "Telephone is empty!")
	private String telephone;

	@OneToMany(mappedBy = "account", fetch = FetchType.EAGER)
	private Set<Accounts_Roles> accountRole;
	@OneToMany(mappedBy = "accounts", fetch = FetchType.EAGER)
	private List<Orders> orders;
	
	public Account() {
		// TODO Auto-generated constructor stub
	}

	public Account(int accountId, String accountName, String password, Boolean enable, String fullName, Boolean gender,
			Date birthday, String address, String email, String telephone, Set<Accounts_Roles> accountRole,
			List<Orders> orders) {
		this.accountId = accountId;
		this.accountName = accountName;
		this.password = password;
		this.enable = enable;
		this.fullName = fullName;
		this.gender = gender;
		this.birthday = birthday;
		this.address = address;
		this.email = email;
		this.telephone = telephone;
		this.accountRole = accountRole;
		this.orders = orders;
	}

	public List<Orders> getOrders() {
		return orders;
	}

	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}

	public int getAccountId() {
		return accountId;
	}

	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getEnable() {
		return enable;
	}

	public void setEnable(Boolean enable) {
		this.enable = enable;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Boolean getGender() {
		return gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Set<Accounts_Roles> getAccountRole() {
		return accountRole;
	}

	public void setAccountRole(Set<Accounts_Roles> accountRole) {
		this.accountRole = accountRole;
	}

}
