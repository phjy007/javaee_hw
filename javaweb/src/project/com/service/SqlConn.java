package project.com.service;
import java.sql.*;
import java.util.ArrayList;
import project.com.model.*;

public class SqlConn{
	private String url="jdbc:mysql://10.12.8.28:3306/jw1201024";
	private String user = "jw1201024";
	private String password = "281729";
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	public SqlConn(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
		} catch (java.lang.ClassNotFoundException e) {
			System.err.println("SqlConn():"+e.getMessage());
		}
	}
	
	public ResultSet executeQuery(String sql) {
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(sql);
		} catch(SQLException ex) {
			System.err.println("SqlConn.executeQuery:"+ex.getMessage());
		}
		return rs;
	}
	
	public Integer getCount(String sql){
		Integer count = 0;
		ResultSet rs = this.executeQuery(sql);
		try{
			if(rs.next()){
				count = rs.getInt(1);
			}
		}catch(SQLException ex){
			System.err.println("SqlConn.executeQuery:" + ex.getMessage());
		}
		return count;
	}
	
	public ArrayList<User> allUsers(String sql){
		ResultSet rs = this.executeQuery(sql);
		ArrayList<User> result = new ArrayList<User>();
		try{
			while(rs.next()){
				User c = new User(
						rs.getInt("id"), 
						rs.getInt("usertype"),
						rs.getInt("validated"),
						rs.getString("username"),
						rs.getString("gender"),
						rs.getString("password")
				);
				result.add(c);
			}
		}catch(SQLException ex){
			System.err.println("SqlConn.executeQuery:" + ex.getMessage());
		}
		return result;
	}
	
	public ArrayList<Experiment> allExperiments(String sql){
		ResultSet rs = this.executeQuery(sql);
		ArrayList<Experiment> result = new ArrayList<Experiment>();
		try{
			while(rs.next()){
				Experiment c = new Experiment(
						rs.getInt("id"), 
						rs.getInt("expcourse_id"), 
						rs.getString("expcontent"),
						rs.getString("expname"),
						rs.getString("time_start"),
						rs.getString("time_end")
				);
				result.add(c);
			}
		}catch(SQLException ex){
			System.err.println("SqlConn.executeQuery:" + ex.getMessage());
		}
		return result;
	}
	
	public ArrayList<Course> allCourses(String sql){
		ResultSet rs = this.executeQuery(sql);
		ArrayList<Course> result = new ArrayList<Course>();
		try{
			while(rs.next()){
				Course c = new Course(
						rs.getInt("id"), 
						rs.getInt("teacher_id"), 
						rs.getString("coursename")
				);
				result.add(c);
			}
		}catch(SQLException ex){
			System.err.println("SqlConn.executeQuery:" + ex.getMessage());
		}
		return result;
	}

	public void executeInsert(String sql) {
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			stmt.execute(sql);
			stmt.close();
			conn.close();
		} catch (SQLException ex) {
			System.err.println("SqlConn.executeUpdate:"+ ex.getMessage());
		}
	}

	public void executeUpdate(String sql) {
		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();
		} catch (SQLException ex) {
			System.err.println("SqlConn.executeUpdate:"+ ex.getMessage());
		}
	}

	public void closestmt() {
		try {
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}