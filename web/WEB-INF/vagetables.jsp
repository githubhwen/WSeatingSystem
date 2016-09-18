<%-- 
    Document   : vagetables
    Created on : 2015-12-29, 18:29:50
    Author     : Administrator
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="src.BaseConn" %>
<%
    BaseConn conn = new BaseConn();
    String tid = (String) session.getAttribute("teacherinfo");
    String sql1 = "select * from teacherinfo where tid=" + tid;
    ResultSet rs1 = conn.executeQuery(sql1);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>员工信息</title>
    </head>
    <body background="30.jpg" text="black">
        <h1 align=center face="黑体" >您好，欢迎查看服务员信息</h1>
        <h1 align="center" face="楷体">显示：</h1>
       

            <table align=left  border="3"  style="width:400px;height:400px;" >

                <td align=center>服务员编号：：</td>

            <tr>
                <td align=center>服务员姓名：</td>

            </tr>
            <tr>
                <td align=center>登陆密码：</td>

            </tr>
            <tr>
            <td align=center>服务员职位：</td>
            </tr>
            <tr>
            <td align=center>服务员年龄：</td>

            </tr>
            <tr>
                <td align=center>服务员手机：</td>

            </tr>

        </table>
        <table align=right  border="3"  style="width:300px;height:400px;" >
            <%while (rs1.next()) {%>
                <tr>
                <td align="center"><%=rs1.getInt("tid")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getString("teachername")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getString("teacherpwd")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getString("sex")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getString("college")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getString("mobilphone")%></td>
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
