package com.tech.blog.entities;

import java.sql.Timestamp;

public class Category {
	
	@Override
	public String toString() {
		return "Category [cat_id=" + cat_id + ", cat_name=" + cat_name + ", cat_description=" + cat_description + "]";
	}
	private int cat_id;
	private String cat_name;
	public Category(String cat_name, String cat_description) {
		
		this.cat_name = cat_name;
		this.cat_description = cat_description;
	}
	private String cat_description;
	public int getCat_id() {
		return cat_id;
	}
	public Category(int cat_id, String cat_name, String cat_description) {
		
		this.cat_id = cat_id;
		this.cat_name = cat_name;
		this.cat_description = cat_description;
	}
	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	public String getCat_name() {
		return cat_name;
	}
	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}
	public String getCat_description() {
		return cat_description;
	}
	public void setCat_description(String cat_description) {
		this.cat_description = cat_description;
	}
	
	
}
