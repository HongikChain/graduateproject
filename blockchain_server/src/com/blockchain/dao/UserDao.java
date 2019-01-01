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
	private static UserDao dao; //싱글톤 패턴 적용
	
	public static UserDao getInstance() {
		if(dao == null)
			dao = new UserDao(); //lazy initialization
		return dao;
	} 
	/*메모리 상에 dao객체가 딱 하나만 존재하게끔 싱글톤 패턴 적용
	 *이런 간단한 방법에 의한 싱글톤 패턴은 thread-safe하지 않다.
	 *나중에 더 공부해서 더 좋은 싱글톤 패턴으로 수정해야함. 
	 * */

	private UserDao() {
		try {
			Context initialcontext = new InitialContext();
			datasource = (DataSource)initialcontext.lookup("java:comp/env/jdbc/blockchain");
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	/* Dao에 커넥션 풀 활용
	 * 클라이언트로부터 여러번의 요청이 오더라도 미리 만들어놓은 커넥션 객체를 재활용하므로
	 * 데이터베이스에 부하를 적게 주며, 속도도 더 빠르다.
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
				return 1; //성공적 회원가입.
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("register에서 예외 발생.");
				return -2; // 디비 에러
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
				return memberdto; //회원이 존재 하는 경우
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
		return null; //id가 존재하지 않거나 데이터베이스 오류임.
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
					return 1; //로그인 성공
				else
					return -1; //비밀번호가 틀려서 로그인 실패
			}
		} catch (SQLException e) {
			System.out.println("Dao의 login에서 예외 발생");
			e.printStackTrace();
			return -2; //디비 오류
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
		return -1; //해당하는 아이디가 존재하지 않아서 로그인 실패
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
			System.out.println("Ismember에서 예외 발생");
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
//			System.out.println("Dao에서 예외 발생");
//			return result; //아이디가 존재하지 않는 경우 null리턴
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
