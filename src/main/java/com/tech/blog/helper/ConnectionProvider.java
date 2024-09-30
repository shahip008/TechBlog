package com.tech.blog.helper;
import java.sql.*;
public class ConnectionProvider {
private static Connection con;
public static Connection getConnection(){
		
	try {
        if (con == null || con.isClosed()) {
            // Load the JDBC driver
        	Class.forName("com.mysql.cj.jdbc.Driver");


            // Create the connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog", "root", "root");
        }
    } catch (ClassNotFoundException e) {
        System.err.println("JDBC Driver not found");
        e.printStackTrace();
    } catch (SQLException e) {
        System.err.println("Connection failed");
        e.printStackTrace();
    }
	
	return con;
}
}
