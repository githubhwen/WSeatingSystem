<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="check" class="src.SCheckLogin"/>

   <%
String tid = request.getParameter("id");
String tpwd=request.getParameter("pwd");
String loginMsg = check.schecklogin(tid,tpwd);

if(loginMsg.equals("SUCCESS_LOGIN")) {	    
	session.setAttribute("teacherinfo",tid);
	response.sendRedirect("eating_menu.html");
}
else if(loginMsg.equals("WRONG_PASSWORD")) {
	out.println("密码输入错误");

   
}
else if(loginMsg.equals("NONE_USER")) {
	out.println("ID号不存在！ ");
}


%>