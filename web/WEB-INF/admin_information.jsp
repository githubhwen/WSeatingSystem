<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="src.BaseConn" %>  
<%
    String aid = (String) session.getAttribute("admin");
    BaseConn conn = new BaseConn();
    String sql1 = "select * from admininfo where aid=" + aid;
    ResultSet rs1 = conn.executeQuery(sql1);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body background="10.jpg" text="black">
        <h1 align=center face="黑体" >老板信息</h1>
        <table align=left  border="3"  style="width:400px;height:400px;" >

                <td align=center>管理员编号：</td>
               
            <tr>
                <td align=center>姓名：</td>

            </tr>
            <tr>
                <td align=center>登陆密码：</td>

            </tr>
            <tr>
            <td align=center>性别：</td>
            </tr>
            <tr>
            <td align=center>年龄：</td>

            </tr>
            <tr>
                <td align=center>手机号：</td>
              
            </tr>
           
        </table>
        <table align=right  border="3"  style="width:300px;height:400px;" >
            <%while (rs1.next()) {%>
                <tr>
                <td align="center"><%=rs1.getInt("aid")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getString("adminpwd")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getString("sex")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getString("aname")%></td>
                </tr>
                <tr>
                <td align="center"><%=rs1.getInt("age")%></td>
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