<%--
  Created by IntelliJ IDEA.
  User: LuWenjing
  Date: 2017/7/30
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>码林争霸——关注</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/nav.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/usermess.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/attention.css">
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
            <a href="#"><li>私信</li></a>
            <a href="#"><li id="li-self">关注</li></a>
            <a href="#"><li>其他</li></a>
        </ul>
    </div>
    <div class="content">
        <div class="contentheader">
            <span>全部关注</span>
        </div>
        <hr/>
        <div class="content-mess" id="content-mess" style="height: 420px;">
            <div class="attention-item">
                <img src="../static/images/meinv.png" class="att-item-icon" />
                <div class="att-item-mess">
                    <div class="att-item-mess-nickname"><a href="#">红拂女</a><span>关注了你</span></div>
                    <div class="att-time">
                        <span>2017-09-12&nbsp;23:45:34</span>
                    </div>
                </div>
                <div class="att-item-btn no-notice">加关注</div>
            </div>
            <hr/>
            <div class="attention-item">
                <img src="../static/images/meinv.png" class="att-item-icon" />
                <div class="att-item-mess">
                    <div class="att-item-mess-nickname"><a href="#">红拂女</a><span>关注了你</span></div>
                    <div class="att-time">
                        <span>2017-09-12&nbsp;23:45:34</span>
                    </div>
                </div>
                <div class="att-item-btn no-notice">加关注</div>
            </div>
            <hr/>
            <div class="attention-item">
                <img src="../static/images/meinv.png" class="att-item-icon" />
                <div class="att-item-mess">
                    <div class="att-item-mess-nickname"><a href="#">红拂女</a><span>关注了你</span></div>
                    <div class="att-time">
                        <span>2017-09-12&nbsp;23:45:34</span>
                    </div>
                </div>
                <div class="att-item-btn yes-notice" >已关注</div>
            </div>
            <hr/>
            <div class="attention-item">
                <img src="../static/images/meinv.png" class="att-item-icon" />
                <div class="att-item-mess">
                    <div class="att-item-mess-nickname"><a href="#">红拂女</a><span>关注了你</span></div>
                    <div class="att-time">
                        <span>2017-09-12&nbsp;23:45:34</span>
                    </div>
                </div>
                <div class="att-item-btn yes-notice" >已关注</div>
            </div>
            <hr/>
        </div>

    </div>
</article>

<script type="text/javascript" src="../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../static/js/nav.js"></script>
<script type="text/javascript" src="../static/js/ajax.js"></script>
<script type="text/javascript" src="../static/js/event.js"></script>
<script type="text/javascript" src="../static/js/personalMess.js"></script>


</body>
</html>