package org.guess.security.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.guess.core.IdEntity;

@Entity
@Table(name="TestUser")
public class User extends IdEntity{
	
	private String name;
	private String password;
	private Date createDate;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	public User(String name, String password, Date createDate) {
		this.name = name;
		this.password = password;
		this.createDate = createDate;
	}
	public User() {
	}
	
	
}
