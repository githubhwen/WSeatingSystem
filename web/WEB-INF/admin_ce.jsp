<%-- 
    Document   : admin_ce
    Created on : 2015-12-20, 21:32:38
    Author     : john
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>管理员</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body background="30.jpg" text="black">
        <br>
        <table>
            <tr> <td><a href="admin_information.jsp" target="admin_information" style=" color:#666; font-size:50px;">查看信息</a></td> </tr>
            <tr>
                <td><a href="registerstu.jsp" target="admin_information" style=" color:#666; font-size:50px;">增加菜品</a></td>
            </tr>
            <tr>
                <td><a href="registertea.jsp" target="admin_information" style=" color:#666; font-size:50px;">新增服务员</a></td>
            </tr>
            <tr>
                <td><a href="deluser.jsp" target="admin_information" style=" color:#666; font-size:50px;">删除菜品或裁员</a></td>
            </tr>
            <tr> <td><a href="admin_modifypwd.jsp" target="admin_information" style=" color:#666; font-size:50px;">修改管理员密码</a></td> </tr>
            <tr> <td><a href="login.jsp" target="_top" style=" color:#666; font-size:50px;">注销登陆</a></td> </tr>
    </table>
</body>
</html>
