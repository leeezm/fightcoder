<%--
  Created by IntelliJ IDEA.
  User: LuWenjing
  Date: 2017/7/30
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>码林争霸——登录</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../static/css/nav.css">
    <link rel="stylesheet" type="text/css" href="../static/css/login.css">
</head>
<body>

<canvas id="canvas"></canvas>

<nav class="nav-container">
    <div class="nav-header"><a href="#"><img src="../static/images/big_logo.png"></a></div>
    <div class="nav-list">
        <ul>
            <li><a href="#"><img src="../static/images/problem-icon.png"></a></li>
            <li><a href="#"><img src="../static/images/race-icon.png"></a></li>
            <li><a href="#"><img src="../static/images/blog-icon.png"></a></li>
            <li><a href="#"><img src="../static/images/test-icon.png"></a></li>
        </ul>
    </div>
    <div class="nav-login">
        <div><a href="#" id="login">
            <img src="../static/images/login-icon.png">
        </a></div>
        <div><a href="#" id="register">
            <img src="../static/images/register-icon.png">
        </a></div>
    </div>
    <div style="display: none">
        <img src="#">
    </div>
</nav>

<article class="mainbody">
    <canvas id="formCanvas"></canvas>
    <form action="#" method="post" class="login-form">
        <div class="form-title"><img src="../static/images/denglu.png"></div>
        <div class="input">
            <label for="input-username">用户名：</label>
            <input type="text" name="username" id="input-username" autofocus="true">
        </div>
        <div class="input">
            <label for="input-username">密&nbsp;&nbsp;码：</label>
            <input type="password" name="userpass" id="input-userpass">
        </div>
        <div class="btn-box">
            <input type="submit" id="submit" value="登录">
            <input type="reset" id="reset" value="取消">
        </div>
        <div id="error"></div>
    </form>
</article>

<script type="text/javascript" src="../static/js/nav.js"></script>
<script type="text/javascript" src="../static/js/event.js"></script>
<script type="text/javascript" src="../static/js/ajax.js"></script>
<script type="text/javascript" src="../static/js/login.js"></script>
<script type="text/javascript">

</script>

</body>
</html>
