<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@page import="java.sql.*" %>
<%@ page import="src.BaseConn" %> 
<%
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");//�����������
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
        <title>�޸ĵ�¼����</title>
        <script language="javascript">
            function checkForm(form) {
                if (form.oldPwd.value == "") {
                    alert("������ԭ����!");
                    form.oldPwd.focus();
                    return false;
                }
                if (form.oldPwd.value != form.studentpwd.value) {
                    alert("�������ԭ���벻��ȷ������������!");
                    form.oldPwd.value = "";
                    form.oldPwd.focus();
                    return false;
                }
                if (form.newPwd.value == "") {
                    alert("�������������!");
                    form.newPwd.focus();
                    return false;
                }
               
                if (form.newPwdConfirm.value == "") {
                    alert("��ȷ��������!");
                    form.newPwdConfirm.focus();
                    return false;
                }
                if (form.newPwd.value != form.newPwdConfirm.value) {
                    alert("����������������벻һ�£�����������!");
                    form.newPwd.value = "";
                    form.newPwdConfirm.value = "";
                    form.newPwd.focus();
                    return false;
                }
//                else
//                {
//                    alert("�����޸ĳɹ�!");
//                    return false;
//                    //PreparedStatement ps = conn.preparedStatement(sql2);
//			//ps.setString(1, userName);
//                }
            }
        </script>
    </head>
    <body background="16.jpg" text="black">
        <h1 align="center">�޸�����</h1>
        <form name="pwd_change_form" action="studentpwd_change_deal.jsp" method="post">
            <table border="3" align="center"  style="width:400px;height:400px;">
                <tr>
                    <td><input type="hidden" name="studentpwd" value="<%=studentpwd%>" /></td>
                </tr>
                <tr>
                    <td>������ԭ���룺<input type="password" name="oldPwd" /></td>
                </tr>
                <tr>
                    <td>�����������룺<input type="password" name="newPwd" /></td>
                </tr>
                <tr>
                    <td>��ȷ�������룺<input type="password" name="newPwdConfirm" /></td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" value="ȷ���޸�" name="submit" onClick="return checkForm(pwd_change_form)" />
                        <input type="reset" value="����" name="reset" />
                        <a href="student_menu.html" target="_top">&nbsp;���� </a></td>
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
