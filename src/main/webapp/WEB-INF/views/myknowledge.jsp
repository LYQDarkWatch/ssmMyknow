<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/8/31
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.model.knowledge" %>
<%@ page import="java.util.List" %>
<%@include file="head.jsp"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>我的知识库</title>
</head>
<style>
    text{
        text-align: center;
    }
</style>
<body style="background-color:#F5F5F5">
<table border="1" class="text" style="background-color: white">
    <tr>
        <center>
            <th>知识点</th>
            <th>知识点内容</th>
            <th>知识点类型</th>
            <th colspan="3">操作</th>
        </center>
    </tr>
    <%
        List<knowledge> knowledges = (List) request.getAttribute("knowledge");
        if (knowledges.size() != 0) {
            for (int i = 0; i < knowledges.size(); i++) {
                pageContext.setAttribute("knowledge", knowledges.get(i));
    %>
    <tr>
        <td>${knowledge.kname}</td>
        <td>${knowledge.pnitro}</td>
        <td>${knowledge.typename}</td>
        <td>
            <button><a href="${pageContext.request.contextPath}/knowledge/deletedate?kid=${knowledge.kid}">刪除</a>
            </button>
        </td>
        <td>
            <button><a href="${pageContext.request.contextPath}/knowledge/findkonwbyid?kid=${knowledge.kid}">修改</a>
            </button>
        </td>
        <td>
            <button><a href="${pageContext.request.contextPath}/knowledge/shapebyid?kid=${knowledge.kid}">分享</a>
            </button>
        </td>

    </tr>

    <%
            }
        }%>
</table>

<center><a href="${pageContext.request.contextPath }/knowledge/updatekonw"><input type="button" value="添加知识点"></a>
</center>
</body>
</html>
