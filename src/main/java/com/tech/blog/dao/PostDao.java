package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.tech.blog.entities.Category;
import com.tech.blog.entities.Post;

public class PostDao {

	private Connection con;

	public PostDao(Connection con) {
		this.con = con;
	}
	
	public ArrayList<Category> getAllCategory(){
		ArrayList<Category> list = new ArrayList<>();
		try {
			String q= "select * from category";
			Statement st = this.con.createStatement();
			ResultSet rs= st.executeQuery(q);
			while(rs.next()) {
				int id=rs.getInt("cat_id");
				String name=rs.getString("cat_name");
				String description=rs.getString("cat_description");
				Category c = new Category(id, name, description);
				list.add(c);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("ps list:"+list);
		return list;
	}
	
	public boolean savePost(Post p) {
		boolean f=false;
		try {
			String q="Insert into posts (pst_title,pst_content,pst_code,pst_pic,cat_id,login_id) values (?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, p.getPst_title());
			pstmt.setString(2,  p.getPst_content());
			pstmt.setString(3,  p.getPst_code());
			pstmt.setString(4,  p.getPst_pic());
			pstmt.setInt(5,  p.getCat_id());
			pstmt.setInt(6,  p.getLogin_id());
			pstmt.execute();
			f=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
}
