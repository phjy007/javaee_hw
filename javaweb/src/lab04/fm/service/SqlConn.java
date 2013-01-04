package lab04.fm.service;
import java.sql.*;
import java.util.ArrayList;

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
			conn = DriverManager.getConnection(url,user,password);
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(sql);
		} catch(SQLException ex) {
			System.err.println("SqlConn.executeQuery:"+ex.getMessage());
		}
		return rs;
	}
	
	public ArrayList<Client> list(String sql){
		ResultSet rs = this.executeQuery(sql);
		ArrayList<Client> result = new ArrayList<Client>();
		try{
			while(rs.next()){
				Client c = new Client(rs.getInt("id"), rs.getString("name"), rs.getString("phone"),
					rs.getString("mobile"), rs.getString("address"));
				result.add(c);
			}
		}catch(SQLException ex){
			System.err.println("SqlConn.executeQuery:"+ex.getMessage());
		}
		return result;
	}

	public void executeUpdate(String sql) {
		try {
			conn = DriverManager.getConnection(url,user,password);
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