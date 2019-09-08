<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>


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
        }</style>
    <title>用户登录</title>
</head>
<body style="background-color: #F5F5F5;">
<div style="background-color: white;width: 490px;position: center;margin-left: 730px;border-radius:25px 25px 25px 25px;margin-top: 200px">
<form action="${pageContext.request.contextPath }/admin/userlogin" method="POST">
    <div class="mycenter">
        <div class="mysign">
            <div class="col-lg-11 text-center text-info">
                <h2>请登录</h2>
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
                <input type="button" value="注册" class="btn btn-info col-lg-12"
                       onclick="window.location.href='${pageContext.request.contextPath }/admin/register'"/>
            </div>
        </div>
    </div>
</form>
</div>
</body>
</html>


