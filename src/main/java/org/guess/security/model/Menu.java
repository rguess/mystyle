package org.guess.security.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.guess.core.IdEntity;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name = "TestMenu")
public class Menu extends IdEntity {

	/** 名称 */
	private String name;

	/** 备注 */
	private String remark;

	/** 父MENU */
	@ManyToOne(targetEntity = Menu.class,fetch = FetchType.LAZY)
    @JoinColumn(name = "PARENT_ID")
    @NotFound(action=NotFoundAction.IGNORE)
	private Menu parent;

	/** 包含子MENU */
	@OneToMany(targetEntity = Menu.class, fetch = FetchType.LAZY)
	@JoinColumn(name = "PARENT_ID")
	@Fetch(FetchMode.SUBSELECT)
	private Set<Menu> childMenu;

	/** 所含资源 */
	@OneToMany(targetEntity=Resource.class,cascade=CascadeType.ALL)
	@Fetch(FetchMode.JOIN)
	@JoinColumn(name="MENU_ID",updatable=false)
	private Set<Resource> res = new HashSet<Resource>(0);

	/** 菜单等级 */
	private int grade;

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

	public Menu getParent() {
		return parent;
	}

	public void setParent(Menu parent) {
		this.parent = parent;
	}

	public Set<Menu> getChildMenu() {
		return childMenu;
	}

	public void setChildMenu(Set<Menu> childMenu) {
		this.childMenu = childMenu;
	}

	public Set<Resource> getRes() {
		return res;
	}

	public void setRes(Set<Resource> res) {
		this.res = res;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}
