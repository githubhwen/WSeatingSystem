<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");//解决编码问题
   
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Insert title here</title>
    </head>

    <form name="DL" method="post" action="DL"><br>
       <body background="" text="black" scroll="yes">
        <h1 align=center face="黑体" >菜品查询</h1>
        <h1 align=center face="黑体" >请选购顾客订购的产品</h1>
    <input type="radio" name="emotion" value="20.jpg"/><img src="20.jpg" width="400" height="400" alt="表情"/>
    <input type="radio" name="emotion" value="21.jpg"/><img src="21.jpg" width="400" height="400" alt="表情"/>
    <br>
    <input type="radio" name="emotion" value="22.jpg"/><img src="21.jpg" width="400" height="400" alt="表情"/>
    <input type="radio" name="emotion" value="23.jpg"/><img src="22.jpg" width="400" height="400" alt="表情"/>
    <input type="radio" name="emotion" value="24.jpg"/><img src="23.jpg" width="400" height="400" alt="表情"/>
    </body>

        <center>  <input type="button" value="提交" style="width:80px;height:50px" onclick="this.form.action = 'jisuan.jsp';
                    this.form.submit()"></center>
</form>
    
</html>
