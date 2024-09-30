package com.tech.blog.entities;

public class Post {
	private int pst_id;
	private String pst_title;
	private String pst_content;
	private String pst_code;
	private String pst_pic;
	private int cat_id;
	private int login_id;
	public int getPst_id() {
		return pst_id;
	}
	public void setPst_id(int pst_id) {
		this.pst_id = pst_id;
	}
	public String getPst_title() {
		return pst_title;
	}
	public void setPst_title(String pst_title) {
		this.pst_title = pst_title;
	}
	public String getPst_content() {
		return pst_content;
	}
	public void setPst_content(String pst_content) {
		this.pst_content = pst_content;
	}
	public String getPst_code() {
		return pst_code;
	}
	public void setPst_code(String pst_code) {
		this.pst_code = pst_code;
	}
	public String getPst_pic() {
		return pst_pic;
	}
	public void setPst_pic(String pst_pic) {
		this.pst_pic = pst_pic;
	}
	public int getCat_id() {
		return cat_id;
	}
	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	public int getLogin_id() {
		return login_id;
	}
	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}
	@Override
	public String toString() {
		return "Post [pst_id=" + pst_id + ", pst_title=" + pst_title + ", pst_content=" + pst_content + ", pst_code="
				+ pst_code + ", pst_pic=" + pst_pic + ", cat_id=" + cat_id + ", login_id=" + login_id + "]";
	}
	public Post(int pst_id, String pst_title, String pst_content, String pst_code, String pst_pic, int cat_id,
			int login_id) {
		
		this.pst_id = pst_id;
		this.pst_title = pst_title;
		this.pst_content = pst_content;
		this.pst_code = pst_code;
		this.pst_pic = pst_pic;
		this.cat_id = cat_id;
		this.login_id = login_id;
	}
	public Post(String pst_title, String pst_content, String pst_code, String pst_pic, int cat_id, int login_id) {
		
		this.pst_title = pst_title;
		this.pst_content = pst_content;
		this.pst_code = pst_code;
		this.pst_pic = pst_pic;
		this.cat_id = cat_id;
		this.login_id = login_id;
	}
	
	
}
