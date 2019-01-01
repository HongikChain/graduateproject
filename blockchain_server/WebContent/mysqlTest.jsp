<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%
    Connection conn=null;
    try{
        Context init = new InitialContext();
        DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/blockchain");
        conn = ds.getConnection();
        out.println("Success!!!");
    }catch(Exception e){
        out.println("Failure!!!");
        e.printStackTrace();
    }

%>
