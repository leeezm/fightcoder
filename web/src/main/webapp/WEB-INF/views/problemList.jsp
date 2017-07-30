<%--
  Created by IntelliJ IDEA.
  User: LuWenjing
  Date: 2017/7/30
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>码林争霸——题库</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../static/css/nav.css">
    <link rel="stylesheet" type="text/css" href="../static/css/problemList.css">
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
    <ul class="list-menu">
        <li>按算法分类
            <ul>
                <a href="#"><li>分治</li></a>
                <a href="#"><li>贪心</li></a>
                <a href="#"><li>链表</li></a>
                <a href="#"><li>搜索</li></a>
                <a href="#"><li>字符串</li></a>
                <a href="#"><li>动态规划</li></a>
                <a href="#"><li>图论</li></a>
            </ul>
        </li>
        <li>按难易程度分类
            <ul>
                <a href="#"><li>简单</li></a>
                <a href="#"><li>中等</li></a>
                <a href="#"><li>很难</li></a>
                <a href="#"><li>超难</li></a>
            </ul>
        </li>
        <li>按数据结构分类
            <ul>
                <a href="#"><li>线性结构</li></a>
                <a href="#"><li>树结构</li></a>
            </ul>
        </li>
    </ul>
    <div class="problem-list">
        <table class="problem-table">
            <thead>
            <tr>
                <th>题目编号</th>
                <th>题目名称</th>
                <th>难易程度</th>
                <th>通过率</th>
                <th>通过人数</th>
            </tr>
            </thead>
            <tbody id="problem-table-body">
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            <tr>
                <td><a href="#">0001</a></td>
                <td><a href="#">A+B问题</a></td>
                <td>简单</td>
                <td>100%</td>
                <td>200</td>
            </tr>
            </tbody>
        </table>
    </div>
</article>

<div class="problem-bg"></div>

<script type="text/javascript" src="..static/js/jquery.min.js"></script>
<script type="text/javascript" src="..static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../static/js/nav.js"></script>
<script type="text/javascript">

</script>

</body>
</html>