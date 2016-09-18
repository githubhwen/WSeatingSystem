<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@page import="java.sql.*" %>
<%@ page import="src.BaseConn" %> 
<%
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");//解决编码问题
    String tid = (String) session.getAttribute("teccher");
    //Class.forName("com.mysql.jdbc.Driver");
    //String url = "jdbc:mysql://localhost:3306/classmanage";
   // Connection conn = DriverManager.getConnection(url, "root", "123456");
    BaseConn conn = new BaseConn();
    String sql1 = "select * from teacherinfo where tid=" + tid;
    //Statement stmt = conn.createStatement();
    ResultSet rs1 = conn.executeQuery(sql1);
    String studentpwd = "";
%>
<%
    if (rs1.next()) {
        studentpwd = rs1.getString("teacherpwd");
    }%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <title>修改登录密码</title>
        <script language="javascript">
            function checkForm(form) {
                if (form.oldPwd.value == "") {
                    alert("请输入原密码!");
                    form.oldPwd.focus();
                    return false;
                }
                if (form.oldPwd.value != form.studentpwd.value) {
                    alert("您输入的原密码不正确，请重新输入!");
                    form.oldPwd.value = "";
                    form.oldPwd.focus();
                    return false;
                }
                if (form.newPwd.value == "") {
                    alert("请输入的新密码!");
                    form.newPwd.focus();
                    return false;
                }
               
                if (form.newPwdConfirm.value == "") {
                    alert("请确认新密码!");
                    form.newPwdConfirm.focus();
                    return false;
                }
                if (form.newPwd.value != form.newPwdConfirm.value) {
                    alert("您两次输入的新密码不一致，请重新输入!");
                    form.newPwd.value = "";
                    form.newPwdConfirm.value = "";
                    form.newPwd.focus();
                    return false;
                }
//                else
//                {
//                    alert("密码修改成功!");
//                    return false;
//                    //PreparedStatement ps = conn.preparedStatement(sql2);
//			//ps.setString(1, userName);
//                }
            }
        </script>
    </head>
    <body background="16.jpg" text="black">
        <h1 align="center">修改密码</h1>
        <form name="pwd_change_form" action="studentpwd_change_deal.jsp" method="post">
            <table border="3" align="center"  style="width:400px;height:400px;">
                <tr>
                    <td><input type="hidden" name="studentpwd" value="<%=studentpwd%>" /></td>
                </tr>
                <tr>
                    <td>请输入原密码：<input type="password" name="oldPwd" /></td>
                </tr>
                <tr>
                    <td>请输入新密码：<input type="password" name="newPwd" /></td>
                </tr>
                <tr>
                    <td>请确认新密码：<input type="password" name="newPwdConfirm" /></td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" value="确认修改" name="submit" onClick="return checkForm(pwd_change_form)" />
                        <input type="reset" value="重置" name="reset" />
                        <a href="student_menu.html" target="_top">&nbsp;返回 </a></td>
                </tr>
            </table>
        </form>
        <%
        rs1.close();
        //stmt.close();
        conn.closeDB();
        %>
    </body>
</html>
