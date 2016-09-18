
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>久久香文帅点菜系统</title>
    </head>
    <body background="5.jpg">
    <body text="green">
        <br>
        <br>
        <br>
        <h1 align="center"><b>久久香文帅点菜系统</b></h1>
        <form method="post">
            
              <tr>
            <td>
                            </td>

              
              <br>
              <br>
              <br>
            <table border="1" align="center">
                <tr>
                    <td>ID号：</td>
                    <td>
                    
                    <input type="text"   name="id" style="height: 50px;font-size:25px;" /></td>
                   
            </tr>
                <tr>
                    <td>登陆密码：</td>
                    <td>
          
                        <input type="password" name="pwd" style="height: 50px;font-size:25px;" />
                    
                    </td>
                </tr>
            </table>
            <p> </p>
            <div align="center">
               <input type="button" value="管理员" style="width:80px;height:50px" onclick="this.form.action = 'login_1.jsp';
                    this.form.submit()">
                <input type="button" value="服务员"  style="width:80px;height:50px" onclick="this.form.action = 'login_2.jsp';
                    this.form.submit()">
                
            </div>
            <br/>
            <div align="center">
                <a href="forgetpwd.jsp">找回密码？</a>
            </div>
        </form>
    </body>
</html>