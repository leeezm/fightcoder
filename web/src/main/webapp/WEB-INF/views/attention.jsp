<%--
  Created by IntelliJ IDEA.
  User: LuWenjing
  Date: 2017/7/30
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>码林争霸——个人信息</title>
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
            <a href="#"><li id="li-self">个人资料</li></a>
            <a href="#"><li>提交记录</li></a>
            <a href="#"><li>参赛记录</li></a>
            <a href="#"><li>上传题目</li></a>
        </ul>
    </div>
    <div class="content">
        <div class="content-header">
            <div class="pic-nickname">
                <div class="user-img"><img src="../static/images/meinv.png" />
                </div>
                <div class="user-mess">
                    <div class="user-nickname">红拂女</div>
                    <div class="user-other">
                        <div>
                            <span>声望值:</span>
                            <span>三颗星</span>
                        </div>
                        <div>
                            <span>关注:</span>
                            <span><a href="#">7</a></span>
                        </div>
                        <div>
                            <span>粉丝:</span>
                            <span><a href="#">7</a></span>
                        </div>
                        <div>
                            <span>加入帮派:</span>
                            <span><a href="#">披星戴月</a></span>
                        </div>
                    </div>
                    <div class="btn-box">
                        <a href="#" class="send-btn" id="send-btn">发私信</a>
                        <span class="notice-btn" name="0001" id="notice-btn">加关注</span>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="content-mess" id="content-mess">
            <div class="attention-item">
                <img src="../static/images/meinv.png" class="att-item-icon" />
                <div class="att-item-mess">
                    <div class="att-item-nickname"><a href="#">红拂女</a></div>
                    <div>
                        <span>关注：</span><span>34</span>
                        <span>粉丝：</span><span>34</span>
                        <span>加入帮派：</span><span>披星戴月</span>
                    </div>
                </div>
                <div class="att-item-btn no-notice">加关注</div>
            </div>
            <hr/>
            <div class="attention-item">
                <img src="../static/images/meinv.png" class="att-item-icon" />
                <div class="att-item-mess">
                    <div class="att-item-nickname"><a href="#">红拂女</a></div>
                    <div>
                        <span>关注：</span><span>34</span>
                        <span>粉丝：</span><span>34</span>
                        <span>加入帮派：</span><span>披星戴月</span>
                    </div>
                </div>
                <div class="att-item-btn no-notice">加关注</div>
            </div>
            <hr/>
            <div class="attention-item">
                <img src="../static/images/meinv.png" class="att-item-icon" />
                <div class="att-item-mess">
                    <div class="att-item-nickname"><a href="#">红拂女</a></div>
                    <div>
                        <span>关注：</span><span>34</span>
                        <span>粉丝：</span><span>34</span>
                        <span>加入帮派：</span><span>披星戴月</span>
                    </div>
                </div>
                <div class="att-item-btn yes-notice">已关注</div>
            </div>
            <hr/>
            <div class="attention-item">
                <img src="../static/images/meinv.png" class="att-item-icon" />
                <div class="att-item-mess">
                    <div class="att-item-nickname"><a href="#">红拂女</a></div>
                    <div>
                        <span>关注：</span><span>34</span>
                        <span>粉丝：</span><span>34</span>
                        <span>加入帮派：</span><span>披星戴月</span>
                    </div>
                </div>
                <div class="att-item-btn no-notice" >加关注</div>
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
<script type="text/javascript" src="../static/js/attention.js"></script>


</body>
</html>
