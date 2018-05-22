package com.blockchain.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blockchain.dao.UserDao;
import com.blockchain.dto.MemberDto;

public class Register_Command implements Command_Interface {
	UserDao dao;
	MemberDto memberdto;
	HttpSession session;
	int isSuccess;
	PrintWriter out;
	@Override
	public int execute(HttpServletRequest req, HttpServletResponse res){
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String name = req.getParameter("name");
		String major = req.getParameter("major");
		int grade = Integer.parseInt(req.getParameter("grade"));
		String phone = req.getParameter("phone");
		memberdto = new MemberDto(id,password,name,major,grade,phone);
		
		dao = UserDao.getInstance();
		
		if(dao.Ismember(id)) {
			isSuccess = -1;
			System.out.println("�̹� �����ϴ� ȸ���Դϴ�.");
		}else {
			isSuccess = dao.register(memberdto);
		}

		res.setContentType("text/html; charset=UTF-8");
		try {
		out = res.getWriter();
		}catch(Exception e) {
			e.printStackTrace();
		}
		if(isSuccess == 1) {
				out.println("<script>alert('���������� ȸ������ �Ǽ̽��ϴ�.'); location.href='./index.jsp';</script>");
				out.flush();
		}
		else if(isSuccess == -1) {
			out.println("<script>alert('�̹� �����ϴ� ���̵� �Դϴ�.'); history.go(-1);</script>");
			out.flush();
		}
		else if(isSuccess == -2) {
			out.println("<script>alert('�����ͺ��̽� ���� �߻�'); history.go(-1);</script>");
			out.flush();
		}
		
		return isSuccess;
	}
}
