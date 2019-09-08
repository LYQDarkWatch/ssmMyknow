<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/8/31
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="head.jsp"%>
<%@ page import="com.lyq.model.knowledge" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>上传新的知识点</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>

</head>
<style>
    .text{
       margin-left: 500px;

    }
.text1{
    width: 500px;
    margin-left: 500px;
}

</style>
<body style="background-color:#F5F5F5">
<div style="background-color: #FAFAFA;">
<form action="${pageContext.request.contextPath }/knowledge/uploadKnow" method="post">
    <div class="text1"> <input type="text" class="form-control" name="kname" placeholder="请输入标题" required autofocus/><br></div>
    <div class="text">内容：<br><textarea name="pnitro" cols="120" rows="35"  style="OVERFLOW:hidden"></textarea><br></div>
    <div class="text1">类别：
        <select name="typename"> <%
            List<knowledge> knowledges = (List) request.getAttribute("knowledge");
            if (knowledges.size() != 0) {
                for (int i = 0; i < knowledges.size(); i++) {
                    pageContext.setAttribute("knowledge", knowledges.get(i));
        %>

            <option value=" ${knowledge.typename}">${knowledge.typename}</option>
        <%
            }
            }
        %></select><a href="${pageContext.request.contextPath }/knowledge/uptype?username=${sessionScope.user.username}"><input type="button" value="新增 "></a>
   </div>
    <input type="hidden" name="username" value="${sessionScope.user.username}">
    <!--<div class="text1"><input type="username" name="username" class="form-control" value="${sessionScope.user.username}"/><br></div>
 -->   <div style="margin-left: 500px"><input type="submit" value="提交"></div>
</form>
    </div>
</body>
</html>
