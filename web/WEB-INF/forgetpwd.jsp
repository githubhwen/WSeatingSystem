<%-- 
    Document   : register
    Created on : 2015-12-16, 21:25:15
    Author     : john
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查找</title>
        <script language="javascript">
            function checkForm(form) {
                if (form.id.value == "") {
                    alert("请输入您的ID号!");
                    form.id.focus();
                    return false;
                }
                if (form.mobilphone.value == "") {
                    alert("请输入您的身份证号!");
                   // form.mobilphone.focus();
                    return false;
                }
                else {
                    return true;
                }
            }
        </script>
    </head>
    <body background="6.jpg" text="black">
        <br/>
        <br/>
        <h1 align=center >找回密码</h1>
        <br/>
        <form name="form" action="forgetpwd_post.jsp" method="post">
            <table align=center width="20%" border="1">
                <tr>
                    <td><label for="id">ID号:</label></td>
                    <td><input type="text" id="id" name="id"  size="25" maxlength="25" /></td>
                </tr>
                <tr>
                    <td><label for="mobilphone">身份证号:</label></td>
                    <td><input type="text" id="mobilphone" name="mobilphone"  size="25" maxlength="25" /></td>
                </tr>
            </table>
            <br/>
            <div align="center">
                <input type="radio" name="user" id="user1" value="student" checked />顾客
                <input type="radio" name="user" id="user2" value="teacher" />管理员
                <input type="radio" name="user" id="user3" value="admin" />服务员
            </div>
            <br/>
            <p align=center >
                <input type="submit" value="找回"  id="submit" name="找回" onClick="return checkForm(form)" style="width:80px;height:40px;"/>
                <input type="reset" value="重置"  id="reset" name="重置" style="width:80px;height:40px;"/>
            </p>
            <br/>
            <h2 align="center"><a href="login.jsp">返回主界面</a></h2>
        </form>
    </body>
</html>
