package dao;
import dao.DBC;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdressDAO {
	public static AdressDAO Instance=null;
	
	private AdressDAO(){
		
	}
	
	public AdressDAO getInstance(){
		if(Instance==null)
			Instance=new AdressDAO();
		return Instance;
	}
	
	public void addAdress(){
		
	}

	public void delAdrees(){
		
	}

	public void updateAdress(){
		
	}

	public void selectAdress(){
		
	}
}
