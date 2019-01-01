package com.blockchain.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.naming.spi.InitialContextFactory;
import javax.sql.DataSource;

import com.blockchain.dto.MemberDto;


public class UserDao {
	DataSource datasource;
	Connection connection;
	PreparedStatement pstatement;
	Statement statement;
	ResultSet resultSet;
	String sql;
	String id,password,name,major,phone;
	int grade;
	private static UserDao dao; //�̱��� ���� ����
	
	public static UserDao getInstance() {
		if(dao == null)
			dao = new UserDao(); //lazy initialization
		return dao;
	} 
	/*�޸� �� dao��ü�� �� �ϳ��� �����ϰԲ� �̱��� ���� ����
	 *�̷� ������ ����� ���� �̱��� ������ thread-safe���� �ʴ�.
	 *���߿� �� �����ؼ� �� ���� �̱��� �������� �����ؾ���. 
	 * */

	private UserDao() {
		try {
			Context initialcontext = new InitialContext();
			datasource = (DataSource)initialcontext.lookup("java:comp/env/jdbc/blockchain");
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	/* Dao�� Ŀ�ؼ� Ǯ Ȱ��
	 * Ŭ���̾�Ʈ�κ��� �������� ��û�� ������ �̸� �������� Ŀ�ؼ� ��ü�� ��Ȱ���ϹǷ�
	 * �����ͺ��̽��� ���ϸ� ���� �ָ�, �ӵ��� �� ������.
	 * */
	public int register(MemberDto dto) {
		sql = "insert into bc_member (id,password,name,major,grade,phone) values(?, ?, ?, ?, ?, ?);";
		id = dto.getId();
		password = dto.getPassword();
		name = dto.getName();
		major = dto.getMajor();
		grade = dto.getGrade();
		phone = dto.getPhone();
			try {
				connection = datasource.getConnection();
				pstatement = connection.prepareStatement(sql);
				pstatement.setString(1,id);
				pstatement.setString(2,password);
				pstatement.setString(3,name);
				pstatement.setString(4,major);
				pstatement.setInt(5,grade);
				pstatement.setString(6,phone);
				pstatement.execute();
				return 1; //������ ȸ������.
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("register���� ���� �߻�.");
				return -2; // ��� ����
			}finally {
				try {
					if(resultSet != null) resultSet.close();
					if(pstatement!=null) pstatement.close();
					if(statement != null) statement.close();
					if(connection != null) connection.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		
	}
	
	public MemberDto getMember(String uid) {
		MemberDto memberdto = null;
		sql = "select * from bc_member where id=?";
		try {
			connection = datasource.getConnection();
			pstatement = connection.prepareStatement(sql);
			pstatement.setString(1,uid);
			resultSet = pstatement.executeQuery();
			while(resultSet.next()) {
				String id = resultSet.getString(1);
				String password = resultSet.getString(2);
				String name = resultSet.getString(3);
				String major = resultSet.getString(4);
				int grade = resultSet.getInt(5);
				String phone = resultSet.getString(6);
				memberdto = new MemberDto(id,password,name,major,grade,phone);
				return memberdto; //ȸ���� ���� �ϴ� ���
			}
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(pstatement!=null) pstatement.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return null; //id�� �������� �ʰų� �����ͺ��̽� ������.
	}
	
	public int login(String uid,String upass){
		sql = "select password from bc_member where id=?";
		try {
			connection = datasource.getConnection();
			pstatement = connection.prepareStatement(sql);
			pstatement.setString(1, uid);
			resultSet = pstatement.executeQuery();
			while(resultSet.next()) {
				String password = resultSet.getString(1);
				if(password.equals(upass))
					return 1; //�α��� ����
				else
					return -1; //��й�ȣ�� Ʋ���� �α��� ����
			}
		} catch (SQLException e) {
			System.out.println("Dao�� login���� ���� �߻�");
			e.printStackTrace();
			return -2; //��� ����
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(pstatement!=null) pstatement.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1; //�ش��ϴ� ���̵� �������� �ʾƼ� �α��� ����
	}
	
	public boolean Ismember(String uid) {
		sql = "select count(*) from bc_member where id=?;";
		boolean returnvalue = false;
		try {
			connection = datasource.getConnection();
			pstatement = connection.prepareStatement(sql);
			pstatement.setString(1, uid);
			resultSet = pstatement.executeQuery();
			int count=0;
			while(resultSet.next()) {
				count = resultSet.getInt(1);
			}
			if(count>0)
				returnvalue = true;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Ismember���� ���� �߻�");
			returnvalue = false;
		}finally {
			try {
				if(resultSet != null) resultSet.close();
				if(pstatement!=null) pstatement.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return returnvalue;
	}
	
//	public String getPassword(String id) {
//		String result = null;
//		try {
//			connection = datasource.getConnection();
//			sql = "select password from 007_member where id=?;";
//			pstatement = connection.prepareStatement(sql);
//			pstatement.setString(1, id);
//			resultSet = pstatement.executeQuery();
//			while(resultSet.next()) {
//				String password = resultSet.getString(1);
//				result = password;
//			}
//		} catch (SQLException e) {
//			System.out.println("Dao���� ���� �߻�");
//			return result; //���̵� �������� �ʴ� ��� null����
//		}finally {
//			try {
//				if(resultSet != null) resultSet.close();
//				if(pstatement!=null) pstatement.close();
//				if(statement != null) statement.close();
//				if(connection != null) connection.close();
//			}catch(Exception e) {
//				e.printStackTrace();
//			}
//		}
//		return result;
//	}
//	
	
}
