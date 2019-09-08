<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/9/1
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.model.knowledge" %>
<%@include file="head.jsp"%>

<html>
<head>
    <title>修改知识点</title>
</head>
<body style="background-color:#F5F5F5">


<form action="${pageContext.request.contextPath }/knowledge/upknow" method="post">

    <table style="margin-top: 200px;background-color: white;width: 400px;text-align: center;margin-left: 750px">
                <input type="hidden" value="${knowledge.kid}" name="kid">
        <tr><td>知识点名称:</td></tr>
    <tr><td><input type="text" value="${knowledge.kname}" name="kname" /></td> </tr>

        <tr><td> 知识点内容：</td></tr>
        <tr><td ><textarea cols="50" rel="200" style="height: 300px" name="pnitro" >${knowledge.pnitro}</textarea></td></tr>

        <tr><td>知识点类型</td></tr>
    <tr><td><input type="text" value="${knowledge.typename}" name="typename" /></td></tr>

        <td><input type="submit" value="提交">
        <a href="${pageContext.request.contextPath }/knowledge/main"><input type="button" value="返回"></a></td>
</table>
</form>

</body>
</html>
