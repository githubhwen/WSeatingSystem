<%-- 
    Document   : admin_info
    Created on : 2016-9-17, 16:13:21
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="src.BaseConn" %>  
<%
    String aid = (String) session.getAttribute("admin");
    BaseConn conn = new BaseConn();
    String sql1 = "select * from admin where admin_num=" + aid;
    //Statement stmt = conn.createStatement();
    ResultSet rs1 = conn.executeQuery(sql1);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background=".jpg" text="purple">
        <h1 align=center face="黑体" >个人信息</h1>
        <table align=center width="65%" border="1">
            <tr>
                <td align=center>账号</td>
                <td align=center>名字</td>
                <td align=center>手机号</td>
            </tr>
            <%while (rs1.next()) {%>
            <tr align="center">
                <td align="center"><%=rs1.getString("admin_num")%></td>
                <td><%=rs1.getString("nam")%></td>
                <td><%=rs1.getString("phone")%></td>
                
            </tr>
            <%}%>
            <%
                rs1.close();
                //stmt.close();
                conn.closeDB();
            %>
        </table>

    </body>
</html>