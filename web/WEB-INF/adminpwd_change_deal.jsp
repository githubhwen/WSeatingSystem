<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.String.*" %>
<%@ page import="src.BaseConn" %> 
<%
    BaseConn conn = new BaseConn();
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");//解决编码问题
    String aid = (String) session.getAttribute("admin");
//    Class.forName("com.mysql.jdbc.Driver");
//    String url = "jdbc:mysql://localhost:3306/classmanage";
//    Connection conn = DriverManager.getConnection(url, "root", "123456");
    String newPwd = (String) request.getParameter("newPwd");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <title>修改密码！</title>
    </head>
    <body background="31.jpg" text="black">
        <%
            String sql = "UPDATE admininfo SET adminpwd='" + newPwd + "'where aid='" + aid + "'";
            //Statement stmt = conn.createStatement();
            conn.executeUpdate(sql);
        %>
        <br>
        <br>
        <br>
        <br>
        <h2 align="center" style=" color:#666; font-size:50px;">密码修改成功!</h2>

    </body>
    <%
        //rs1.close();
       // stmt.close();
        conn.closeDB();
    %>
</html>
