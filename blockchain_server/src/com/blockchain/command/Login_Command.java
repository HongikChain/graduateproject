package com.blockchain.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blockchain.dao.UserDao;
import com.blockchain.dto.MemberDto;

public class Login_Command implements Command_Interface {
	UserDao dao;
	MemberDto memberdto;
	int isSuccess;
	
	@Override
	public int execute(HttpServletRequest req, HttpServletResponse res) {
			dao = UserDao.getInstance();
			String id = req.getParameter("id");
			String password =req.getParameter("password");
			try {
				isSuccess = dao.login(id, password);
			}catch(Exception e) {
				e.printStackTrace();
				System.out.println("Login_Command에서 예외 발생.");
			}
			
			if(isSuccess == 1) {
				HttpSession session = req.getSession();
				MemberDto memberdto = dao.getMember(id);
				if(memberdto != null) session.setAttribute("memberdto",memberdto);
				else System.out.println("in Login_command dao.getMember() fail");
				return 1; //로그인 성공
			}else  //로그인 실패시
				return isSuccess;
			
			
	}

}
