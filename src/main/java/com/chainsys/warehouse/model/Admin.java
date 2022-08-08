package com.chainsys.warehouse.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
@Entity
@Table(name="ADMIN")
public class Admin {
	@Id
	@Column(name = "USERNAME")
	@NotNull(message= "Aadmin may not be null")
	private String userName;
	@Column(name = "PASSWORD")
	@NotNull(message="Password may not be null")
	private String password;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
