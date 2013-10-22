package org.guess.security.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.guess.core.IdEntity;

@Entity
@Table(name = "TestRes")
public class Resource extends IdEntity {

	/** 名称 */
	private String name;
	/** 资源串 */
	private String resString;
	/** 备注 */
	private String remark;
	/** 所属权限 */
	@ManyToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE }, targetEntity = Permission.class)
	private Set<Permission> permissions = new HashSet<Permission>(0);
	/** 归属菜单 */
	@ManyToOne(targetEntity = Menu.class)
	@JoinColumn(name="MENU_ID",updatable=false)
	private Menu menu;
	/** 是否被授权权限 */
	private String authorize;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getResString() {
		return resString;
	}
	public void setResString(String resString) {
		this.resString = resString;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Set<Permission> getPermissions() {
		return permissions;
	}
	public void setPermissions(Set<Permission> permissions) {
		this.permissions = permissions;
	}
	public Menu getMenu() {
		return menu;
	}
	public void setMenu(Menu menu) {
		this.menu = menu;
	}
	public String getAuthorize() {
		return authorize;
	}
	public void setAuthorize(String authorize) {
		this.authorize = authorize;
	}
}
