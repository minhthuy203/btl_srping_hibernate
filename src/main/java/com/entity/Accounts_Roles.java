package com.entity;

import javax.persistence.*;

@Entity
@Table(name = "accounts_roles")
public class Accounts_Roles {
	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY)
	@Column(name ="ID")
	private Long id;
	@ManyToOne
	@JoinColumn(name = "Account_ID", referencedColumnName = "AccountId")
	private Account account;
	@ManyToOne
	@JoinColumn(name = "Role_Id", referencedColumnName = "RoleId")
	private Role role;
	
	public Accounts_Roles() {
		// TODO Auto-generated constructor stub
	}

	public Accounts_Roles(Long id, Account account, Role role) {
		super();
		this.id = id;
		this.account = account;
		this.role = role;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
}
