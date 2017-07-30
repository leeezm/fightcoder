<%--
  Created by IntelliJ IDEA.
  User: LuWenjing
  Date: 2017/7/30
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>码林争霸——私信</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/nav.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/usermess.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/chat.css" />
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
            <li><a href="#"><img src="../static/images/mess-icon.png"></a></li>
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
    <div class="aside">
        <ul>
            <a href="#"><li>评论</li></a>
            <a href="#"><li id="li-self">私信</li></a>
            <a href="#"><li>关注</li></a>
            <a href="#"><li>其他</li></a>
        </ul>
    </div>
    <div class="content">
        <div class="content-header">
            <span>与&nbsp;一只小鸟&nbsp;的对话</span>
        </div>
        <hr>
        <div class="content-mess" id="content-mess">
            <div class="mess-item-right">
                <div class="main-container-right">
                    <div class="mess-right">星星一直都在，这一片云海!</div>
                    <div class="pic-right"><a href="#"><img src="../static/images/meinv.png" /></a></div>
                </div>
                <div class="date-footer-right">2017-09-12&nbsp;14:56</div>
            </div>
            <div class="mess-item-left">
                <div class="main-container-left">
                    <div class="pic-left"><a href="#"><img src="../static/images/meinv3.png" /></a></div>
                    <div class="mess-left">星星一直都在，这一片云海!</div>
                </div>
                <div class="date-footer-left">2017-09-12&nbsp;14:56</div>
            </div>
            <div class="mess-item-right">
                <div class="main-container-right">
                    <div class="mess-right">星星一直都在，这一片云海!</div>
                    <div class="pic-right"><a href="#"><img src="../static/images/meinv.png" /></a></div>
                </div>
                <div class="date-footer-right">2017-09-12&nbsp;14:56</div>
            </div>
            <div class="mess-item-left">
                <div class="main-container-left">
                    <div class="pic-left"><a href="#"><img src="../static/images/meinv3.png" /></a></div>
                    <div class="mess-left">星星一直都在，这一片云海!</div>
                </div>
                <div class="date-footer-left">2017-09-12&nbsp;14:56</div>
            </div>
            <div class="mess-item-right">
                <div class="main-container-right">
                    <div class="mess-right">星星一直都在，这一片云海!</div>
                    <div class="pic-right"><a href="#"><img src="../static/images/meinv.png" /></a></div>
                </div>
                <div class="date-footer-right">2017-09-12&nbsp;14:56</div>
            </div>
            <div class="mess-item-left">
                <div class="main-container-left">
                    <div class="pic-left"><a href="#"><img src="../static/images/meinv3.png" /></a></div>
                    <div class="mess-left">星星一直都在，这一片云海!星星一直都在，这一片云海!</div>
                </div>
                <div class="date-footer-left">2017-09-12&nbsp;14:56</div>
            </div>
        </div>
        <div class="dialog">
            <textarea class="form-control" id="input-dialog" rows="2" placeholder="输入内容。。。"></textarea>
            <input type="button" name="submit" id="submit" value="发送">
        </div>
    </div>
</article>

<script type="text/javascript" src="../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../static/js/nav.js"></script>
<script type="text/javascript" src="../static/js/ajax.js"></script>
<script type="text/javascript" src="../static/js/event.js"></script>
<script type="text/javascript" src="../static/js/chat.js"></script>


</body>
</html>
