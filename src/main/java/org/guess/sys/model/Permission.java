package org.guess.sys.model;

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
@Table(name = "TestPerm")
public class Permission extends IdEntity {

	/** 权限名称 */
	private String name;
	/** 备注 */
	private String remark;
	/** 操作名称 */
	private String operation;
	/** 状态 0 无效 1 有效 */
	private String status;
	/** 所属角色 */
	@ManyToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE }, targetEntity = Role.class)
	private Set<Role> roles = new HashSet<Role>(0);
	/** 下属资源 */
	@ManyToMany(fetch = FetchType.EAGER, cascade = { CascadeType.PERSIST,
			CascadeType.MERGE })
	@JoinTable(name = "SYS_PERM_RES", joinColumns = { @JoinColumn(name = "PERM_ID") }, inverseJoinColumns = { @JoinColumn(name = "RES_ID") })
	private Set<Resource> resources = new HashSet<Resource>(0);
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
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	public Set<Resource> getResources() {
		return resources;
	}
	public void setResources(Set<Resource> resources) {
		this.resources = resources;
	}
	public String getAuthorize() {
		return authorize;
	}
	public void setAuthorize(String authorize) {
		this.authorize = authorize;
	}
}
