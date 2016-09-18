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
        <title>加菜咯！！</title>
        <script language="javascript">
            function checkForm(form) {
                if (form.sid.value == "") {
                    alert("请输入菜品编号!");
                    form.sid.focus();
                    return false;
                }
                if (form.sname.value == "") {
                    alert("菜品名称!");
                    form.sname.focus();
                    return false;
                }
                if (form.studentpwd.value == "") {
                    alert("菜品今日折扣!");
                    form.studentpwd.focus();
                    return false;
                }
                
                if (form.sex.value == "") {
                    alert("菜品材料!");
                    form.sex.focus();
                    return false;
                }
                if (form.class.value == "") {
                    alert("菜品价格!");
                    form.class.focus();
                    return false;
                }
                
            }
        </script>
    </head>
    <body background="10.jpg" text="black">
        <br/>
        <h1 align=center >新增菜品信息</h1>
        <br/>
        <form name="pwd_change_form" action="registerstu_post.jsp" method="post">
            <table align=left  border="3"  style="width:400px;height:400px;">
                <tr>
                    <td><label for="sid">菜品编号:</label></td>

                </tr>
                <tr>
                    <td><label for="sname">菜品名称:</label></td>

                </tr>
                <tr>
                    <td><label for="studentpwd">菜品今日折扣:</label></td>

                </tr>
                <tr>
                    <td><label for="sex">菜品价格:</label></td>

                </tr>
                <tr>
                    <td><label for="class">菜品材料:</label></td>

                </tr>
            </table>
            <table align=right  border="3"  style="width:300px;height:400px;">
         <tr>
                        <td><input type="text" id="sid" name="sid"  style="width:60px;height:75px" maxlength="50" /></td>

                </tr>
                <tr>

                <td><input type="text" id="sname" name="sname"  style="width:60px;height:75px" maxlength=50" /></td>


                </tr>
                <tr>

                <td><input type="text" id="studentpwd" name="studentpwd" style="width:60px;height:75px" maxlength="50" /></td>


                </tr>
                <tr>


                <td><input type="text" id="sex" name="sex" style="width:60px;height:75px" maxlength="50" /></td>


                </tr>
                <tr>

                <td><input type="text" id="class" name="class" style="width:60px;height:80px" maxlength="50" /></td>

                </tr>
            </table>

            <br/>
            <br/>
             <br/>
            <br/>
             <br/>

            <p align=buttom >
                <input type="submit" value="新增"  id="submit" name="新增" onClick="return checkForm(pwd_change_form)" style="width:80px;height:40px;"/>
                <input type="reset" value="重新选择"  id="reset" name="重新选择" style="width:80px;height:40px;"/>
            </p>
        </form>
    </body>
</html>
