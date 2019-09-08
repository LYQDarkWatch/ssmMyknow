<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.lyq.model.knowledge" %>
<%@ page import="java.util.List" %>
<%@include file="head.jsp"%>
<html>
<head>
    <title>搜索</title>
</head>
<style>
    th,td{
        border: 1px solid navajowhite;
        border-radius: 15px 15px 15px 15px;
    }
    .font{
        overflow: hidden;
        text-overflow:ellipsis;
        display: -webkit-box;
        -webkit-box-orient: vertical;
        -webkit-line-clamp:2;
    }
    .divt{

      background-color: white;
        text-align: center;
        font-size:20px;
    }
</style>
<body style="background-color:#F5F5F5">
<div style="float: left;width: 500px;margin-left: 700px;margin-top: 40px">

</tr>
    <%
        List<knowledge> knowledges = (List) request.getAttribute("knowledge");
        if (knowledges.size() != 0) {
            for (int i = 0; i < knowledges.size(); i++) {
                pageContext.setAttribute("knowlist", knowledges.get(i));
    %>
    <div style="float: left;width: 500px" class="divt">
            <strong >知识点</strong><br>
            <a href="/mystudy_war_exploded/knowledge/knowledgedet?kid=${knowlist.kid}">
                ${knowlist.kname}
            </a><br><strong>知识点内容</strong><br>
            <p class="font">${knowlist.pnitro}</p>
            <br><strong style="position:relative">上传人</strong><br>
            ${knowlist.username}
            <br><strong>知识点类型</strong><br>${knowlist.typename}

    </div>

    <%
            }
        }
    %>
</div>
</body>
</html>
