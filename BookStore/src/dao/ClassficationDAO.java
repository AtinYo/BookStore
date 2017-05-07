package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.ClassficationBean;
import beans.UserBean;

import java.util.ArrayList;
import java.util.List;

public class ClassficationDAO {
	private DBC dbc;//���ӵĻ���
	private Statement cstmt;//���ڸ������ݿ�
	private ResultSet crest;//��ѯ�����
	
	public ClassficationDAO(){
		dbc=new DBC();
		cstmt=dbc.creStatement();
		crest=null;
	}
	
	//ͨ���������ֲ�ѯ�Ƿ���ڸ÷���
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
	
	
	//ͨ���������������ӷ���
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
	
	
	//ͨ������������ɾ������
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
	
	
	//�������з���
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
	
	//ͨ��id���ط���
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