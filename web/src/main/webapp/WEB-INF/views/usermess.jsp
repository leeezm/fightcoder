<%--
  Created by IntelliJ IDEA.
  User: LuWenjing
  Date: 2017/7/30
  Time: 17:16
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
        <div class="content-mess">
            <div class="usermess">
                <img src="../static/images/meinv.png"/ id="usericon">
                <div class="file-btn">
                    <span>修改图像</span>
                    <input type="file" name="usericon" id="usericon-btn" />
                </div>
                <div class="file-btn">
                    <span id="update-user">修改信息</span>
                </div>
            </div>
            <div id="mess-container">
                <div class="item">
                    <div class="item-label">昵称</div>
                    <div class="item-content">红拂女</div>
                </div>
                <div class="item">
                    <div class="item-label">邮箱</div>
                    <div class="item-content">2290806321@qq.com</div>
                </div>
                <div class="item">
                    <div class="item-label">年龄</div>
                    <div class="item-content">22</div>
                </div>
                <div class="item">
                    <div class="item-label">性别</div>
                    <div class="item-content">女</div>
                </div>
                <div class="item">
                    <div class="item-label">学校</div>
                    <div class="item-content">西安邮电大学</div>
                </div>
            </div>
            <form id="mess-form" action="#" method="post" style="display: none;">
                <div class="item">
                    <div class="item-label">昵称</div>
                    <div class="item-content"><input value="红拂女"/></div>
                </div>
                <div class="item">
                    <div class="item-label">邮箱</div>
                    <div class="item-content"><input value="2290806321@qq.com"/></div>
                </div>
                <div class="item">
                    <div class="item-label">年龄</div>
                    <div class="item-content"><input value="22" /></div>
                </div>
                <div class="item">
                    <div class="item-label">性别</div>
                    <div class="item-content">
                        <input type="radio" name="sex" checked="true" />男
                        <input type="radio" name="sex" />女
                    </div>
                </div>
                <div class="item">
                    <div class="item-label">学校</div>
                    <div class="item-content">
                        <input value="西安邮电大学" />
                        <input type="submit" name="submit" value="保存" style="margin-left:30%" />
                        <input type="reset" name="reset" value="取消" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</article>

<script type="text/javascript" src="../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../static/js/nav.js"></script>
<script type="text/javascript" src="../static/js/ajax.js"></script>
<script type="text/javascript" src="../static/js/event.js"></script>
<script type="text/javascript" src="../static/js/usermess.js"></script>


</body>
</html>