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
        <title>JSP Page</title>
        <script language="javascript">
            function checkForm(form) {
                if (form.tid.value == "") {
                    alert("请输入服务员编号：");
                    form.tid.focus();
                    return false;
                }
                if (form.teachername.value == "") {
                    alert("请输入员工姓名：");
                    form.teachername.focus();
                    return false;
                }
                  if (form.teacherpwd.value == "") {
                    alert("请输入登陆密码：");
                    form.teacherpwd.focus();
                    return false;
                }
                  if (form.sex.value == "") {
                    alert("请输入员工性别：");
                    form.sex.focus();
                    return false;
                }
                  if (form.college.value == "") {
                    alert("请输入员工职位:");
                    form.college.focus();
                    return false;
                }
                  if (form.age.value == "") {
                    alert("请输入员工年龄：");
                    form.age.focus();
                    return false;
                }
                if (form.mobilphone.value == "") {
                    alert("请输入员工手机号：");
                    form.mobilphone.focus();
                    return false;
                }      
            }
        </script>
    </head>
    <body background="10.jpg" text="black">
        <br/>
        <br/>
        <h1 align=center >员工基本信息</h1>
        <br/>
        <form name="pwd_change_form" action="registertea_post.jsp" method="post">
            <table align=center style="width:400px;height:400px;" border="1">
                <tr>
                    <td><label for="tid">员工编号:</label></td>
                    <td><input type="text" id="tid" name="tid"  size="25" maxlength="25" /></td>
                </tr>
                <tr>
                    <td><label for="teachername">员工姓名:</label></td>
                    <td><input type="text" id="teachername" name="teachername"  size="25" maxlength="25" /></td>
                </tr>
                <tr>
                    <td><label for="teacherpwd">登陆密码:</label></td>
                    <td><input type="password" id="teacherpwd" name="teacherpwd" size="26" maxlength="25" /></td>
                </tr>
                <tr>
                    <td><label for="sex">员工性别:</label></td>
                    <td><input type="text" id="sex" name="sex" size="25" maxlength="25" /></td>
                </tr>
                <tr>
                    <td><label for="college">所属职位:</label></td>
                    <td><input type="text" id="college" name="college" size="25" maxlength="25" /></td>
                </tr>
                <tr>
                    <td><label for="age">员工年龄:</label></td>
                    <td><input type="text" id="age" name="age" size="25" maxlength="25" /></td>
                </tr>
                <tr>
                    <td><label for="mobilphone">员工手机号:</label></td>
                    <td><input type="text" id="mobilphone" name="mobilphone" size="25" maxlength="25" /></td>
                </tr>
            </table>
            <br/>
            <br/>
            <p align=center >
                <input type="submit" value="注册"  id="submit" name="注册" onClick="return checkForm(pwd_change_form)" style="width:80px;height:40px;"/>
                <input type="reset" value="重置"  id="reset" name="重置" style="width:80px;height:40px;"/>
            </p>
        </form>
    </body>
</html>
