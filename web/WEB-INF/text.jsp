<%-- 
    Document   : text
    Created on : 2015-12-25, 17:45:59
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
java.sql.Connection conn=null;
java.lang.String strConn;
try{
conn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/classmanage","root","root");
%>
连接数据库成功！
<%
}catch (java.sql.SQLException e)
        {  out.println(e.toString());
    } finally{
    if(conn!=null) conn.close();

}
%>
