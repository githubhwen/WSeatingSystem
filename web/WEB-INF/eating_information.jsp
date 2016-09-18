<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="src.BaseConn" %>  
<%
    BaseConn conn = new BaseConn();
    String sid = (String) session.getAttribute("student");
    String sql1 = "select * from student where sid=" + sid;
    ResultSet rs1 = conn.executeQuery(sql1);
//    String sid = (String) session.getAttribute("student");
//    Class.forName("com.mysql.jdbc.Driver");
//    String url = "jdbc:mysql://localhost:3306/classmanage";
//    Connection conn = DriverManager.getConnection(url, "root", "123456");
//    String sql1 = "select * from student where sid=" + sid;
//    Statement stmt = conn.createStatement();
//    ResultSet rs1 = stmt.executeQuery(sql1);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body background="30.jpg" text="black">
        <br>
        <br>
        <br>
        <br>
        <br>


        <h1 align=center face="黑体" >欢迎来到久久香文帅点菜系统！</h1>
   

    </body>
</html>