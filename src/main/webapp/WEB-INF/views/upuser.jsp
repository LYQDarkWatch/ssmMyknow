<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/9/1
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.model.user" %>
<%@include file="head.jsp"%>

<html>
<head>
    <title>修改个人信息</title>
</head>
<body style="background-color:#F5F5F5">
<div style="border-radius: 15px 15px 15px 15px; background-color: white;width: 400px;height: auto;margin-left: 720px;margin-top: 200px" >
<form action="${pageContext.request.contextPath }/user/updateuser" method="post">
    <input type="hidden" value="${user.uid}" name="uid">
   <table style="width: 200px;height: 200px">
    <tr>
        <th>名称:</th>
        <td><input type="text" value="${user.username}" name="username" /></td>
    </tr>

       <tr><th> 性别：</th>
    <td><input type="text" value="${user.gender}" name="gender" /></td>
</tr>

       <tr><th>邮箱:</th>
    <td><input type="text" value="${user.email}" name="email" /></td>
       </tr>
    <center>
        <td></td><td></td><td > <input type="submit" value="提交"></td>
    </center>
   </table>
</form>
</div>
</body>
</html>
