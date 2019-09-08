<%--
  Created by IntelliJ IDEA.
  User: Liuyuqi
  Date: 2019/7/5
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
<script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<html>
<head>
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
        }


    </style>


    <title>用户登录</title>
</head>
<body >

<form action="${pageContext.request.contextPath }/admin/userlogin" method="POST">
    <div class="mycenter">
        <div class="mysign">
            <div class="col-lg-11 text-center text-info">
                <h2>MyKnowLedge</h2>
            </div>
            <div class="col-lg-10">
                <input type="text" class="form-control" name="username" placeholder="请输入账户名" required autofocus/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <input type="password" class="form-control" name="password" placeholder="请输入密码" required
                       autofocus/><br/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <input type="submit" class="btn btn-success col-lg-12" value="登录"/>
            </div>
            <div class="col-lg-10"></div>
            <div class="col-lg-10">
                <input type="register" class="btn btn-info col-lg-12"
                       onclick="window.location.href='${pageContext.request.contextPath }/admin/register'" value="注册"/>
            </div>
        </div>
    </div>
</form>


</body>
</html>

