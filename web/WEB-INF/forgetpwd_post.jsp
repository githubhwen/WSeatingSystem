<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@page import="java.sql.*" %>
<%@page import="java.lang.String.*" %>
<%@ page import="src.BaseConn" %> 
<%
    BaseConn conn = new BaseConn();
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");//解决编码问题
    String id = request.getParameter("id");
    String mobilphone = request.getParameter("mobilphone");
    String user = request.getParameter("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <title>找回密码！</title>
    </head>
    <body background="D:\\image\\22.jpg" text="purple">
        <%
            String sql1 = "select *from student where sid = " + id + " and mobilphone ='" + mobilphone + "'";
            String sql2 = "select *from teacherinfo where tid = " + id + " and mobilphone ='" + mobilphone + "'";
            String sql3 = "select *from admininfo where aid = " + id + " and mobilphone ='" + mobilphone + "'";
            ResultSet rs1 = null;
            ResultSet rs2 = null;
            ResultSet rs3 = null;
            if (user.equals("student")) {
                rs1 = conn.executeQuery(sql1);
                if (rs1.next()) {
                    out.print("<h2 align=\"center\">" + "找回密码成功，你的密码是：" + rs1.getString("studentpwd") + "</h2>");
                } else {
                    out.print("<h2 align=\"center\">" + "信息验证错误，找回密码失败" + "</h2>");
                }

            } else if (user.equals("teacher")) {
                rs2 = conn.executeQuery(sql2);
                if (rs2.next()) {
                    out.print("<h2 align=\"center\">" + "找回密码成功，你的密码是：" + rs2.getString("teacherpwd") + "</h2>");
                } else {
                    out.print("<h2 align=\"center\">" + "信息验证错误，找回密码失败" + "</h2>");
                }
            } else {
                rs3 = conn.executeQuery(sql3);
                if (rs3.next()) {
                    out.print("<h2 align=\"center\">" + "找回密码成功，你的密码是：" + rs3.getString("adminpwd") + "</h2>");
                } else {
                    out.print("<h2 align=\"center\">" + "信息验证错误，找回密码失败" + "</h2>");
                }
            }
        %>
        <br/>
        <h2 align="center"><a href="login.jsp">返回主界面</a></h2>
    </body>
    <%
        if (rs1!=null)
        rs1.close();
        if (rs2!=null)
        rs2.close();
        if (rs3!=null)
        rs3.close();
        conn.closeDB();
%>
</html>
