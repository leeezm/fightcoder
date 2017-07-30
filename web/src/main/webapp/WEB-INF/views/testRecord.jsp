<%--
  Created by IntelliJ IDEA.
  User: LuWenjing
  Date: 2017/7/30
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>码林争霸——提交记录</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/nav.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/usermess.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/testRecord.css">
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
            <a href="#"><li>个人资料</li></a>
            <a href="#"><li id="li-self">提交记录</li></a>
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
            <table id="table">
                <thead>
                <tr>
                    <th>题目编号</th>
                    <th>名称</th>
                    <th>运行状态</th>
                    <th>耗时</th>
                    <th>内存</th>
                    <th>语言</th>
                    <th>提交时间</th>
                </tr>
                </thead>
                <tbody id="tbody">
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                <tr>
                    <td>0001</td>
                    <td><a href="#">A+B问题</a></td>
                    <td><label class="run-status runtime">Runtime Error</label></td>
                    <td>2000ms</td>
                    <td>23kb</td>
                    <td>Java</td>
                    <td>2017-09-11</td>
                </tr>
                </tbody>
            </table>
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
