package com.zms.founding.bean;

public class User {
	private int id;
	private String loginacct;
	private String userpawd;
	private String username;
	private String email;
	private String createtime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLoginacct() {
		return loginacct;
	}
	public void setLoginacct(String loginacct) {
		this.loginacct = loginacct;
	}
	public String getUserpawd() {
		return userpawd;
	}
	public void setUserpawd(String userpawd) {
		this.userpawd = userpawd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", loginacct=" + loginacct + ", userpawd=" + userpawd + ", username=" + username
				+ ", email=" + email + ", createtime=" + createtime + "]";
	}	
}
