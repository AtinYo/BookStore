package dao;
import dao.DBC;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {
	public static OrderDAO Instance=null;
	
	private OrderDAO(){
		
	}
	
	public OrderDAO getInstance(){
		if(Instance==null)
			Instance=new OrderDAO();
		return Instance;
	}
	
	public void addOrder(){
		
	}
	
	public void delOrder(){
		
	}

	public void updateOrder(){
		
	}
	
	public void selectOrder(){
		
	}
	
}
