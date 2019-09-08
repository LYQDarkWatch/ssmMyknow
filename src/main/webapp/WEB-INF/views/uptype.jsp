<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/9/4
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="background-color:#F5F5F5">
<form action="${pageContext.request.contextPath }/knowledge/addtype" method="post">

    知识点名称:
    <input type="text"  name="typename" />

    <input type="submit" value="提交">

</form>
</body>
</html>
