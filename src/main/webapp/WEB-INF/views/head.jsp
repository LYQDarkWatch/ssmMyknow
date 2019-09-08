<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>


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
    <style type="text/css">
        /*body {*/
        /*    background:url(../img/111.png) #f8f6e9;*/
        /*}*/
        .mycenter {
            margin-top: 100px;
            margin-left: auto;
            margin-right: auto;
            height: 350px;
            width: 500px;
            padding: 5%;
            padding-left: 5%;
            padding-right: 5%;
        }

        .mycenter mysign {
            width: 440px;
        }

        .mycenter input, checkbox, button {
            margin-top: 2%;
            margin-left: 10%;
            margin-right: 10%;
        }

        .mycheckbox {
            margin-top: 10px;
            margin-left: 40px;
            margin-bottom: 10px;
            height: 10px;
        }</style>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" title="logoTitle" href="#">MyKnowledge</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath }/knowledge/main">主页 <span class="sr-only">(current)</span></a></li>
                <li>
                    <a href="${pageContext.request.contextPath }/knowledge/myknowledge?username=${sessionScope.user.username}">我的知识库</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath }/user/mycenter?username=${sessionScope.user.username}">个人中心</a>
                </li>
            </ul>

            <form action="${pageContext.request.contextPath }/knowledge/findDataByName" method="post"
                  class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" name="kname" class="form-control">
                </div>
                <input type="submit" class="btn btn-default" value="搜索"/>
            </form>
            <div align="right">
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li role="presentation">
                            <a href="#">当前用户：<span class="badge">${sessionScope.user.username}</span></a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/admin/logout"><span
                                    class="glyphicon glyphicon-lock"></span>退出登录 </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>
</body>
</html>
