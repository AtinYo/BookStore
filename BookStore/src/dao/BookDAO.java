package dao;
import dao.DBC;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookDAO {
	public static BookDAO Instance=null;
	
	private BookDAO(){
		
	}
	
	public BookDAO getInstance(){
		if(Instance==null)
			Instance=new BookDAO();
		return Instance;
	}
	
	public void addBook(){
		
	}
	
	public void delBook(){
		
	}
	
	public void updateBook(){
		
	}
	
	public void selectBook(){
		
	}
}
