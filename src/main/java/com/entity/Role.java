package com.entity;

import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "roles")
public class Role {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="RoleId")
	private Long roleId;
	@Column(name="RoleName", unique=true)
	private String roleName;
	 @OneToMany(mappedBy = "role")
	 private Set<Accounts_Roles> roleAccount;
	
	 public Role() {
		// TODO Auto-generated constructor stub
	}

	public Role(Long roleId, String roleName, Set<Accounts_Roles> roleAccount) {
		super();
		this.roleId = roleId;
		this.roleName = roleName;
		this.roleAccount = roleAccount;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Set<Accounts_Roles> getRoleAccount() {
		return roleAccount;
	}

	public void setRoleAccount(Set<Accounts_Roles> roleAccount) {
		this.roleAccount = roleAccount;
	}
	 
}
