package org.paumard.webapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.paumard.model.User;

public class DbConnector{
	
	public List<User> getUser() throws Throwable 
	{
		String databaseURL = "jdbc:mysql://localhost:3306/plural";
		String dbUser = "plural";
		String password = "plural";
		Connection connection;
		List<User> users = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection(databaseURL, dbUser, password);
			Statement smt = connection.createStatement();
			ResultSet resultSet = smt.executeQuery("select name, age from user");
			
			while(resultSet.next()) {
				
				String name = resultSet.getString(1);
				int age = resultSet.getInt(2);
				User user = new User(name, age);
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		return users;
	}

}
