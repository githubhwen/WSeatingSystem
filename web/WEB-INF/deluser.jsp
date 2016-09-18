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
        <title>删除菜品或裁员</title>
        <script language="javascript">
            function checkForm(form) {
                if (form.id.value == "") {
                    alert("请输入ID号!");
                    form.id.focus();
                    return false;
                }  
                else {
                    return true;
                }
            }
        </script>
    </head>
    <body background="30.jpg" text="black">
        <br/>
        <br/>
        <h1 align=center >基本信息</h1>
        <br/>
        <form name="form" action="deluser_post.jsp" method="post">
            <table align=center width="20%" border="1">
                <tr>
                    <td><label for="id">编号:</label></td>
                    <td><input type="text" id="id" name="id"  size="25" maxlength="25" /></td>
                </tr>
            </table>
            <br/>
            <div align="center">
                <input type="radio" name="user" id="user1" value="student" checked />菜品
                <input type="radio" name="user" id="user2" value="teacher" />服务员
            </div>
            <br/>
            <p align=center >
                <input type="submit" value="删除"  id="submit" name="删除" onClick="return checkForm(form)" style="width:80px;height:40px;"/>
                <input type="reset" value="重置"  id="reset" name="重置" style="width:80px;height:40px;"/>
            </p>
        </form>
    </body>
</html>
