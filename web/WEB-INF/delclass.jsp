<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="check_login.jsp"%>
<%@ page import="src.BaseConn" %> 
<%  String cid = (String) request.getParameter("cid");
    String tid = (String) request.getParameter("tid");
    BaseConn conn = new BaseConn();
//Class.forName("com.mysql.jdbc.Driver");
//String url = "jdbc:mysql://localhost:3306/classmanage";
//Connection conn = DriverManager.getConnection(url,"root","123456");
    String sql = "delete from classinfo where cid = " + cid;
    //Statement stmt = conn.createStatement();
    conn.execute(sql);
    //stmt.close();
    conn.closeDB();
    response.sendRedirect("exam.jsp");
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body>

    </body>
</html>