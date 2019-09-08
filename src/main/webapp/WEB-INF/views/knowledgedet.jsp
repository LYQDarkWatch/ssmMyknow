<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/7/10
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.model.knowledge" %>
<%@include file="head.jsp"%>
<style>
    strong{
        font-size:25px;
    }
</style>
<html>
<head>
    <title>知识点详情</title>
</head>
<body style="background-color:#F5F5F5">
<center>
    <div style="height: auto;background-color: white;width: 800px">
<table  style="margin-top: 100px;background-color: white;width: 500px;height:400px;text-align: center">

    <tr>
        <td ><STRONG style="font-size: 30px;text-align: left">${knowledge.kname}</STRONG></td>
    </tr>
    <tr>
    <th><strong>上传人</strong></th>
</tr>
    <tr>
    <td style="font-size: 22px;text-align: left;">${knowledge.username}</td>
</tr>
    <tr>
        <th><STRONG>知识点内容</STRONG></th>
    </tr>
    <tr>
        <td style="letter-spacing: 5px;font-size: 20px;text-indent: 40px">${knowledge.pnitro}</td>
    </tr>







</table>
    </div>
</center>
</body>
</html>
