<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="src.BaseConn" %> 
<%
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");//解决编码问题
    String aid = (String) session.getAttribute("admin");
    BaseConn conn = new BaseConn();
    String sql1 = "select * from admininfo where aid=" + aid;
    ResultSet rs1 = conn.executeQuery(sql1);
%>
<script language="javascript">
    function realSysTime(clock) {
        var now = new Date(); //创建Date对象 
        var year = now.getFullYear(); //获取年份 
        var month = now.getMonth(); //获取月份 
        var date = now.getDate(); //获取日期 
        var day = now.getDay(); //获取星期 
        var hour = now.getHours(); //获取小时 
        var minu = now.getMinutes(); //获取分钟 
        var sec = now.getSeconds(); //获取秒钟 
        month = month + 1;
        var arr_week = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
        var week = arr_week[day]; //获取中文的星期 
        var time = year + "年" + month + "月" + date + "日 " + week + " " + hour + ":" + minu + ":" + sec; //组合系统时间 
        clock.innerHTML = time; //显示系统时间 
    }
    window.onload = function () {
        window.setInterval("realSysTime(clock)", 1000); //实时获取并显示系统时间 
    };
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body background="9.jpg" text="white">
        
    <table align=center border="2">
        <tr>
            <td id="clock" />
        </tr>
    </table>
</body>
</html>