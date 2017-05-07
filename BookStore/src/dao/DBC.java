package dao;
import java.sql.*;
public class DBC {
	private Connection con;
	private Statement stmt;
	private ResultSet rest;
	
	public DBC(){
		con=getConnect();
		stmt=null;
		rest=null;
	}
	
	public void CloseAll(){
		if(rest!=null)
			try{
				rest.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		if(stmt!=null)
			try{
				stmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		if(con!=null)
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
	}
	
	private Connection getConnect(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		try{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","atin","123");
		}catch(SQLException e){
			e.printStackTrace();
		}
		return con;
	}
	
	public Statement creStatement(){
		if(stmt==null){
			try{
				if(con!=null)
				stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return stmt;
	}
	
	public ResultSet creResultSet(String sql){
		if(rest!=null){
			try{
				rest.close();
			}catch(SQLException e){
				e.printStackTrace();
		    }
			rest=null;
		}
		try{
			if(stmt!=null)
			rest=stmt.executeQuery(sql);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rest;
	}
	
	public static boolean isNullOrEmpty(String str){
		if(str==null||str.equals("")){
			return true;
		}
		return false;
	}
	
}
