package org.guess.sys.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.guess.core.IdEntity;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "TestUser")
public class User extends IdEntity {

	/** 登录ID */
	@Column(unique=true)
	private String loginId;
	/** 密码 */
	private String passwd;
	/** 用户姓名 */
	private String name;
	/** 电子邮件 */
	private String email;
	/** 手机号 */
	private String mobilePhone;
	/** 地址 */
	private String address;
	/** 状态 0 无效 1 有效 */
	private String status;
	/** 备注 */
	private String remark;
	
	/** 创建时间 */
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createDate;
	
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	/** 拥有角色 */
	@ManyToMany(fetch = FetchType.EAGER, cascade = { CascadeType.PERSIST,
			CascadeType.MERGE })
	@JoinTable(name = "SYS_USER_ROLE", joinColumns = { @JoinColumn(name = "USER_ID") }, inverseJoinColumns = { @JoinColumn(name = "ROLE_ID") })
	private Set<Role> roles = new HashSet<Role>();

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public User(String loginId, String passwd, String name, String email,
			String mobilePhone, String address, String status, String remark,Date date) {
		super();
		this.loginId = loginId;
		this.passwd = passwd;
		this.name = name;
		this.email = email;
		this.mobilePhone = mobilePhone;
		this.address = address;
		this.status = status;
		this.remark = remark;
		this.createDate = date;
	}

	public User() {
		super();
	}
}
