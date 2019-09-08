<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/9/1
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.model.user" %>
<%@ page import="java.util.List" %>
<%@include file="head.jsp"%>
<html>
<head>
    <title>个人中心</title>
</head>
<style>
    body{
        background-image:url("../images/bg1.jpg");
    }
    .user{
        position: center;
        height: auto;
        width: 400px;
        margin-left: 820px;
        margin-top: 200px;
        background-color: white;
        float: left;
        border-radius: 25px 25px 25px 25px;
    }
    td{
        border-radius:15px 15px 15px 15px;
        border: 1px solid bisque;
    }
    font{
        font-size: 20px;
        color: black;
    }
    a:hover{
        color: black;
    }
</style>
<body style="background-color:#F5F5F5">

        <%
            List<user> users = (List) request.getAttribute("user");
            if (users.size() != 0) {
                for (int i = 0; i < users.size(); i++) {
                    pageContext.setAttribute("user", users.get(i));
        %>
      <div class="user">
          <font><strong>用户名</strong></font>:${user.username}<br>
          <font><strong>邮箱</strong></font>:${user.email}<br>
          <font><strong>性别</strong></font>:${user.gender}<br>
          <font><strong>密码</strong></font>:${user.password}<br>


          <a href="${pageContext.request.contextPath}/user/finduser?uid=${user.uid}"> <input type="button" style="margin-left: 170px" value="修改"></a>
          <a href="${pageContext.request.contextPath}/user/deleteuser?uid=${user.uid}"><input type="button" value="注销" style="margin-left: 50px"></a>
      </div>

        <%
            }
            }
        %>

</body>
</html>
