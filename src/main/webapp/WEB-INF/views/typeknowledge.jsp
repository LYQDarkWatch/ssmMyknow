<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/7/5
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.lyq.model.knowledge" %>
<%@ page import="java.util.List" %>
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
    <script src="../js/jquery.min.js">
    </script>
    <script type="text/javascript">
        $(function(){
            //轮播图自动播放
            $('#myCarousel').carousel({
                interval: 3000,//自动播放4s

            });

        });
    </script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-color:#F5F5F5" onload="">
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
<div class="jumbotron">
    <h1>Spring Boot2.0重磅推出！</h1>
    <p>Spring Boot是由Pivotal团队提供的全新框架，其设计目的是用来简化新Spring应用的初始搭建以及开发过程。该框架使用了特定的方式来进行配置，从而使开发人员不再需要定义样板化的配置。</p>
    <p><a class="btn btn-primary btn-lg" href="/mystudy_war_exploded/knowledge/knowledgedet?kid=2" role="button">查看内容</a></p>
</div>

<div id="myCarousel" class="carousel slide" >
    <div class="carousel-inner">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to ="0" class="active" ></li>
            <li data-target="#myCarousel" data-slide-to ="1"></li>
            <li data-target="#myCarousel" data-slide-to ="2"></li>
        </ol>


        <div class="item active">
            <a href="http://www.itheima.com/special/hmcloudzly/">
                <img src="../img/dashuju.jpg" alt="第一张" width="100%">
            </a>
        </div>
        <div class="item">
            <a href="http://www.itheima.com/special/linuxzly/index.html">
                <img src="../img/linux.jpg" alt="第二张" width="100%">
            </a>
        </div>
        <div class="item">
            <a href="http://www.itheima.com/special/pythonzly/">
                <img src="../img/python.jpg" alt="第三张" width="100%">
            </a>
        </div>
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
                border-radius: 10px 25px 25px 15px;
                border-right: 1px solid black;
                border-bottom:1px solid black;
                text-align: center;
                font-size:20px;
            }
        </style>
    </div>
    <a href="#myCarousel" data-slide="prev" class="carousel-control left"><!-- ‹ -->
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a><!-- 左箭头 -->
    <a href="#myCarousel" data-slide="next" class="carousel-control right"><!-- › -->
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a><!-- 右箭头 -->
</div>
<div id="test" style="width: 800px;margin-left: 500px;float: left;background-color: white; margin-top: 60px " >
    <%
        List<knowledge> knowledges = (List) request.getAttribute("knowledge");
        if (knowledges.size() != 0) {
            for (int i = 0; i < knowledges.size(); i++) {
                pageContext.setAttribute("knowledge", knowledges.get(i));
    %>
    <div style="width: 200px;height: 350px;float: left;" class="divt">
    <strong >知识点</strong><br>
    <a href="/mystudy_war_exploded/knowledge/knowledgedet?kid=${knowledge.kid}">
        ${knowledge.kname}
        </a><br><strong>知识点内容</strong><br>
    <p class="font">${knowledge.pnitro}</p>
    <br><strong style="position:relative">上传人</strong><br>
    ${knowledge.username}
    <br><strong>知识点类型</strong><br>${knowledge.typename}
    </div>
    <%
        }
        }
    %>
</div>
</body>
</html>