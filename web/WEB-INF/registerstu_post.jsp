<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="src.BaseConn" %>
<%
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");//解决编码问题
    //String sid = (String) session.getAttribute("teacher");
    String sid = request.getParameter("sid");
    String sname = request.getParameter("sname");
    String studentpwd = request.getParameter("studentpwd");
    String sex = request.getParameter("sex");
    String class1 = request.getParameter("class");
    String age = request.getParameter("age");
    String mobilphone = request.getParameter("mobilphone");
    //Class.forName("com.mysql.jdbc.Driver");
    //String url = "jdbc:mysql://localhost:3306/classmanage";
   // Connection conn = DriverManager.getConnection(url, "root", "123456");
     BaseConn conn = new BaseConn();
    String sql = "insert into student(sid,sname,studentpwd,sex,class,age,mobilphone) values(" + sid + ",'" + sname + "','" + studentpwd + "','" + sex + "','" + class1 + "'," + age + ",'" + mobilphone + "')";
   // Statement stmt = conn.createStatement();
    conn.execute(sql);
    //stmt.close();
    conn.closeDB();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加菜品</title>
    </head>
    <body background="8.jpg" text="black">
           <br/>
        <br/>
        <br/>
        <br/>

        <h2 align="center">新增菜品成功！<a href="registerstu.jsp"target="admin_information">返回上一界面！</a></h2>
     

    </body>
</html>