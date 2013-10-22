package org.guess.security.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.guess.core.IdEntity;

@Entity
@Table(name = "TestRole")
public class Role extends IdEntity {

	/** 名称 */
	private String name;
	/** 备注 */
	private String remark;

	/** 所属用户 */
	@ManyToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE }, targetEntity = User.class)
	private Set<User> users = new HashSet<User>(0);
	
	/** 拥有权限 */
	@ManyToMany(fetch = FetchType.EAGER, cascade = { CascadeType.PERSIST,
			CascadeType.MERGE })
	@JoinTable(name = "SYS_ROLE_PERM", joinColumns = { @JoinColumn(name = "ROLE_ID") }, inverseJoinColumns = { @JoinColumn(name = "PERM_ID") })
	private Set<Permission> permissions = new HashSet<Permission>();
	/** 是否被授权权限 */
	private String authorize;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public Set<Permission> getPermissions() {
		return permissions;
	}

	public void setPermissions(Set<Permission> permissions) {
		this.permissions = permissions;
	}

	public String getAuthorize() {
		return authorize;
	}

	public void setAuthorize(String authorize) {
		this.authorize = authorize;
	}
}
