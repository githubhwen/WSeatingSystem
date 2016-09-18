
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="src.BaseConn" %>
<jsp:useBean id="cal" class="src.DL"/>

<%  String emotion = request.getParameter("emotion");

            if (emotion.equals("20")) {
                out.println("nihaoaaaaaaaaaaa");

            }

                BaseConn conn = new BaseConn();
                String sql1 = "select * from student where sid=20";
                ResultSet rs3 = conn.executeQuery(sql1);

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>菜品的价格</title>
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
        <br>
        
            <%while (rs3.next()) {%>
               您好你本次选择的价格为：
                
                    <%=rs3.getInt("class")%>

                <%}%>

                    <%
                            rs3.close();
                            //stmt.close();
                            conn.closeDB();
                %>
                
    <body>

    <html>



