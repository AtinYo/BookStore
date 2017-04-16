package dao;
import dao.DBC;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import beans.BookBean;
import beans.OrderBean;
import beans.UserBean;

public class OrderDAO {
	
	private DBC dbc;//连接的基类
	private Statement ostmt;//用于更新数据库
	private ResultSet orest;//查询结果集

	public OrderDAO(){
		dbc=new DBC();
		ostmt=dbc.creStatement();
		orest=null;
	}
	
	public boolean addOrder(OrderBean order){
		int rowCount=0;
		if(order!=null){
			try{
				rowCount=ostmt.executeUpdate("insert into orders(uID,aID,oTime,oBookIDs," +
						"oBookNums,oStatus) values(" +
						order.getuID()+","+order.getaID()+",'"+order.getoTime()+"','"+order.getoBookIDs()+"',"+
						"'"+order.getoBookNums()+"','"+order.getoStatus()+"'"+
						")");
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return rowCount==0?false:true;
	}
	
	public boolean delOrder(Integer oID){
		int rowCount=0;
		try{
			if(oID!=null){
				rowCount=ostmt.executeUpdate("delete from orders where oID = "+oID);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rowCount==0?false:true;
	}

	public boolean updateOrder(OrderBean order){
		int rowCount=0;
		if(order!=null && !DBC.isNullOrEmpty(order.getoID())){
			try{
				rowCount=ostmt.executeUpdate("update orders set "+
						"uID="+order.getuID()+",aID="+order.getaID()+",oTime='"+
						order.getoTime()+"',oBookIDs='"+order.getoBookIDs()+"',oBookNums='"+order.getoBookNums()+
						"',oStatus='"+order.getoStatus()+"'"+" where oID="+order.getoID());
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return rowCount==0?false:true;
	}
	
	
	public OrderBean findOrderWithID(Integer id){
		try{
			if(id!=null){
				orest=dbc.creResultSet("select * from orders where oID="+id);
				if(orest==null || !orest.next()){
					return null;
				}
				else{
					OrderBean temp=new OrderBean();
					temp.setoID(orest.getString("oID"));
					temp.setuID(orest.getString("uID"));
					temp.setaID(orest.getString("aID"));
					temp.setoTime(orest.getString("oTime"));
					temp.setoBookIDs(orest.getString("oBookIDs"));
					temp.setoBookNums(orest.getString("oBookNums"));
					temp.setoStatus(orest.getString("oStatus"));
					return temp;
				}
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	
	
	//通过用户ID获取该用户的订单数量
	public int getOrdersCountWithUserID(Integer uID){
		int rowCount=0;
		try{
			orest=dbc.creResultSet("select count(*) from orders");//返回记录数目
			if(orest!=null && orest.next()){
				rowCount=orest.getInt(1);//获取记录数
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rowCount;
	}
	
	public List<OrderBean> findOrdersWithUserID(Integer uID,Integer pageNum,Integer pageSize){
		List<OrderBean> list=null;
		if(pageNum==null || pageSize==null){
			return list;
		}
		try{
			orest=dbc.creResultSet("select count(*) from orders");//返回记录数目
			int rowCount=0;
			if(orest!=null && orest.next()){
				rowCount=orest.getInt(1);//获取记录数
			}
			else{
				return list;
			}
			int m_pageSize=pageSize;
			int MaxPageNum=(rowCount%m_pageSize==0)?(rowCount/m_pageSize):(rowCount/m_pageSize+1);
			int m_pageNum=pageNum;
			if(m_pageNum<1){
				m_pageNum=1;
			}
			else if(m_pageNum>MaxPageNum){
				m_pageNum=MaxPageNum;
			}
			orest=dbc.creResultSet("select * from orders where uID="+uID+" limit "+
					(m_pageNum-1)*m_pageSize+","+m_pageSize);
			if(orest==null || !orest.next()){
				return list;
			}
			OrderBean temp=null;
			list=new ArrayList<OrderBean>();
			do{
				temp=new OrderBean();
				temp.setoID(orest.getString("oID"));
				temp.setuID(orest.getString("uID"));
				temp.setaID(orest.getString("aID"));
				temp.setoTime(orest.getString("oTime"));
				temp.setoBookIDs(orest.getString("oBookIDs"));
				temp.setoBookNums(orest.getString("oBookNums"));
				temp.setoStatus(orest.getString("oStatus"));
				list.add(temp);
			}while(orest.next());
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}
	
	
	public void CloseBookDAO(){
		orest=null;
		ostmt=null;
		dbc.CloseAll();
	}
}
