package com.blockchain.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blockchain.command.Command_Interface;
import com.blockchain.command.Login_Command;
import com.blockchain.command.Register_Command;
import com.blockchain.dto.MemberDto;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	Command_Interface model;
	String viewpage;
	MemberDto memberdto;
	int isSuccess;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doAction(req,resp);
	}

	protected void doAction(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		req.setCharacterEncoding("UTF-8"); //post방식에서 인자 get할때 한글 깨짐 방지.
		String uri = req.getRequestURI();
		String contextpath = req.getContextPath();
		String command = uri.substring(contextpath.length());
		HttpSession session;
		System.out.println(command + "실행됨");
		
		if(command.equals("/register.do")) {
			model = new Register_Command();
			isSuccess = model.execute(req, resp);
			if(isSuccess == 1)
				viewpage = "index.jsp";

			return;
		}
		else if(command.equals("/login.do")) {
			model = new Login_Command();
			
			isSuccess = model.execute(req, resp);
		
			if(isSuccess == 1) {
				viewpage = "index.jsp";
				session = req.getSession();
				session.setAttribute("login", "success");
			}else if(isSuccess == -1){
				viewpage = "LoginPage.jsp";
				session = req.getSession();
				session.setAttribute("login", "fail");
			}else if(isSuccess == -2) {
				viewpage = "LoginPage.jsp";
				session = req.getSession();
				session.setAttribute("login", "dberror");
			}
		}else if(command.equals("/logout.do")) {
			session = req.getSession();
			session.invalidate();
			viewpage = "index.jsp";
		}else if(command.equals("/vote.do")) {
			System.out.println("투표가 실행됨");
		}
		
		RequestDispatcher rd = req.getRequestDispatcher(viewpage);
		rd.forward(req, resp);
	}
	
}
