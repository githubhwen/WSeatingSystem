<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.String.*" %>
<%@ page import="src.BaseConn" %> 
<%
    BaseConn conn = new BaseConn();
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");//�����������
    String id = request.getParameter("id");
    String user = request.getParameter("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <title>ɾ���û���</title>
    </head>
    <body background="30.jpg" text="black">
        <%
            String sql1 = "delete from student where sid = " + id;
            String sql2 = "delete from teacherinfo where tid = " + id;
            if (user.equals("student")) {
                conn.execute(sql1);
            } else {
                conn.execute(sql2);
            }
        %>
        <br>
        <br>
        <br>
        <br>
        <h2 align="center" style=" color:#666; font-size:50px;">ɾ���ɹ���</h2>

    </body>
    <%
        conn.closeDB();
    %>
</html>
