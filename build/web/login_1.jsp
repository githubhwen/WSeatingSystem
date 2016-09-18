<%-- 
    Document   : login_1
    Created on : 2016-9-17, 12:18:20
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="check" class="src.ACheckLogin"/>

<%    
String aid = request.getParameter("id");
String apwd=request.getParameter("pwd");
String loginMsg = check.achecklogin(aid,apwd);
if(loginMsg.equals("SUCCESS_LOGIN")) {	    
	session.setAttribute("admin",aid);
	response.sendRedirect("admin_menu.html");      
}
else if(loginMsg.equals("WRONG_PASSWORD")) {
	out.println("你输入的管理员号或密码错误，请检正后重新输入");
}
else if(loginMsg.equals("NONE_USER")) {
	out.println("管理员不存在！！！ ");
}    
%>
