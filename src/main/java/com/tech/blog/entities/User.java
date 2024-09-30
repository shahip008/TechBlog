package com.tech.blog.entities;
import java.sql.*;
public class User {

	private int id;
	private String name;
	private String email;
	private String password;
	private String gender;
	private Timestamp dateTime ;
	private String about;
	 private String profilePic;

	public User(int id, String name, String email, String password, String gender, Timestamp dateTime, String about) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.dateTime = dateTime;
		this.about = about;
	}
	
	public User(String name, String email, String password, String gender, Timestamp dateTime, String about) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.dateTime = dateTime;
		this.about = about;
	}
	
	public User(String name, String email, String password, String gender, String about) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.about = about;
	}
	@Override
    public String toString() {
        return "User{" +
        		 "id='" + id +
                "name='" + name + 
                ", password=" + password +
                ", gender=" + gender +
                ", about=" + about +
                 ", dateTime=" + dateTime +
                '}';
    }
	
	
	public User() {
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getDateTime() {
		return dateTime;
	}
	public void setDateTime(Timestamp dateTime) {
		this.dateTime = dateTime;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}

//	public void setProfilePic(String base64Image) {
//		// TODO Auto-generated method stub
//		
//	}
	
	 // Getter method for profilePic
    public String getProfilePic() {
        return profilePic;
    }

     //Setter method for profilePic
    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }
	
	
}
