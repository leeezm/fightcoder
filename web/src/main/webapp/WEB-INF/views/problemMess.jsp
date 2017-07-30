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
    <title>码林争霸——A+B问题</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/nav.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/problemMess.css" />
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
    <div class="problem-header">
        <div class="problem-title">A+B问题</div>
        <div class="problem-content">
            <div><span>难易程度：</span><span>简单</span></div>
            <div><span>通过率：</span><span>100%</span></div>
            <div><span>通过人数：</span><span>200</span></div>
        </div>
    </div>
    <div class="problem-container">
        <div class="problem-desc">
            <div class="desc">
                <div class="desc-header">题目描述</div>
                <div class="desc-content">Z小镇是一个景色宜人的地方，吸引来自各地的观光客来此旅游观光。
                    Z小镇附近共有
                    N(1<\N≤500)个景点（编号为1,2,3,…,N），这些景点被M（0<\M≤5000）条道路连接着，所有道路都是双向的，两个景点之间可能有多条道路。也许是为了保护该地的旅游资源，Z小镇有个奇怪的规定，就是对于一条给定的公路Ri，任何在该公路上行驶的车辆速度必须为Vi。频繁的改变速度使得游客们很不舒服，因此大家从一个景点前往另一个景点的时候，都希望选择行使过程中最大速度和最小速度的比尽可能小的路线，也就是所谓最舒适的路线。
                </div>
            </div>
            <div class="desc">
                <div class="desc-header">输入描述</div>
                <div class="desc-content">第一行包含两个正整数，N和M。
                    接下来的M行每行包含三个正整数：x，y和v（1≤x,y≤N，0 最后一行包含两个正整数s，t，表示想知道从景点s到景点t最大最小速度比最小的路径。s和t不可能相同。
                </div>
            </div>
            <div class="desc">
                <div class="desc-header">输出描述</div>
                <div class="desc-content">如果景点s到景点t没有路径，输出“IMPOSSIBLE”。否则输出一个数，表示最小的速度比。如果需要，输出一个既约分数。
                </div>
            </div>
            <div class="desc">
                <div class="desc-header">样例输入</div>
                <div class="desc-content">
                    样例1<br>
                    4 2<br>
                    1 2 1<br>
                    3 4 2<br>
                    1 4<br><br>

                    样例1<br>
                    4 2<br>
                    1 2 1<br>
                    3 4 2<br>
                    1 4<br><br>

                    样例1<br>
                    4 2<br>
                    1 2 1<br>
                    3 4 2<br>
                    1 4<br>
                </div>
            </div>
            <div class="desc">
                <div class="desc-header">数据范围及提示</div>
                <div class="desc-content">
                    N(1<\N≤500)<br><br>

                    M（0<\M≤5000）<br><br>

                    Vi在int范围内
                </div>
            </div>
        </div>
        <div class="problem-code">
            <form role="form" style="margin-left: 2%">
                <div class="editor-header">
                    <select class="form-control form-control-plus"
                            id="language">
                        <option value="ace/mode/c_cpp">语言</option>
                        <option value="ace/mode/c_cpp" selected="selected">C/C++语言</option>
                        <option value="ace/mode/java">JAVA语言</option>
                        <option value="ace/mode/javascript">JavaScript语言</option>
                    </select>
                    <select class="form-control form-control-plus"
                            id="color">
                        <option>环境配色</option>
                        <option value="ace/theme/xcode" selected="selected">高亮</option>
                        <option value="ace/theme/monokai">暗色</option>
                    </select>
                    <select class="form-control form-control-plus"
                            id="retract">
                        <option value="4">代码缩进</option>
                        <option>2</option>
                        <option selected="selected">4</option>
                        <option>8</option>
                    </select>
                    <div class="flex-btn">
                        <span class="glyphicon glyphicon-resize-full" id="expand"></span>
                    </div>
                </div>
            </form>
            <pre id="editor" style="height:360px"></pre>
            <a class="btn btn-default" href="#" style="margin-left:80%">查看题解</a>
            <button class="btn btn-primary">提交</button>
        </div>
    </div>
</article>

<div class="problem-bg"></div>

<script type="text/javascript" src="../static/js/nav.js"></script>
<script type="text/javascript" src="..static/js/jquery.min.js"></script>
<script type="text/javascript" src="..static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../static/src-noconflict/ace.js"></script>
<script type="text/javascript" src="../static/js/ajax.js"></script>
<script type="text/javascript" src="../static/js/event.js"></script>
<script type="text/javascript" src="../static/js/problemMess.js"></script>

</body>
</html>
