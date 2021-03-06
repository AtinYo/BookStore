package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.ClassficationBean;
import beans.UserBean;

import java.util.ArrayList;
import java.util.List;

public class ClassficationDAO {
	private DBC dbc;//连接的基类
	private Statement cstmt;//用于更新数据库
	private ResultSet crest;//查询结果集
	
	public ClassficationDAO(){
		dbc=new DBC();
		cstmt=dbc.creStatement();
		crest=null;
	}
	
	//通过分类名字查询是否存在该分类
	public boolean isExitst(String name){
		try{
			if(!DBC.isNullOrEmpty(name)){
				crest=dbc.creResultSet("select cID from classfication where binary cName = '"+name+"'");
				if(crest==null || !crest.next()){
					return false;
				}
				else{
					return true;
				}
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return false;
	}
	
	
	//通过分类名字来增加分类
	public boolean addClassfication(String name){
		int rowCount=0;
		if(!DBC.isNullOrEmpty(name) && !isExitst(name)){
			try{
				rowCount=cstmt.executeUpdate("insert into classfication(cName) values('"+name+"')");
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return rowCount==0?false:true;
	}
	
	
	//通过分类名字来删除分类
	public boolean delClassfication(String name){
		int rowCount=0;
		if(!DBC.isNullOrEmpty(name)){
			try{
				rowCount=cstmt.executeUpdate("delete from classfication where binary cName='"+name+"'");
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		return rowCount==0?false:true;
	}
	
	
	//返回所有分类
	public List<ClassficationBean> findAllClassfication(){
		List<ClassficationBean> list=null;
		try{
			crest=dbc.creResultSet("select * from classfication");
			ClassficationBean temp=null;
			list=new ArrayList<ClassficationBean>();
			if(crest==null || !crest.next()){
				return list;
			}
			do{
				temp=new ClassficationBean();
				temp.setcID(crest.getString("cID"));
				temp.setcName(crest.getString("cName"));
				list.add(temp);
			}while(crest.next());
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}
	
	//通过id返回分类
	public ClassficationBean findWithID(Integer id){
		try{
			if(id!=null){
				crest=dbc.creResultSet("select * from classfication where cID="+id);
				if(crest==null || !crest.next()){
					return null;
				}
				else{
					ClassficationBean cfb=new ClassficationBean();
					cfb.setcID(crest.getString("cID"));
					cfb.setcName(crest.getString("cName"));
					return cfb;
				}
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
	
	public void CloseClassficationDAO(){
		crest=null;
		cstmt=null;
		dbc.CloseAll();
	}
}
