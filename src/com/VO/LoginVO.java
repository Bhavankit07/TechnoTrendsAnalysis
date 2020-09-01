package com.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="LoginTable")

public class LoginVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int loginId;
	
	@Column(name="Email")
	private String email; 
	
	@Column(name="Password")
	private String password;
	
	@Column(name="Role")
	private String role;
	
	@Column(name="Enable")
	private int enable;

	public int getLoginId() {
		return loginId;
	}

	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getEnable() {
		return enable;
	}

	public void setEnable(int i) {
		this.enable = i;
	}
	
	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		// TODO Auto-generated method stub
		this.email=email;
	}

	public String getLoginPassword() {
		return password;
	}
	
	public void setLoginPassword(String password) {
		this.password = password;
	}
	
}
