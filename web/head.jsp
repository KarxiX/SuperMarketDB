<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>超市订单管理系统</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/public.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/model.css"/>
    <script src="js/jquery-confirm.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <link type="text/css" rel="stylesheet" href="css/jquery-confirm.less">
    <link type="text/css" rel="stylesheet" href="css/jquery-confirm.css">
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>聚超市订单管理系统</h1>
    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b">${sessionScope.USER.userName }</span> , 欢迎你！</p>
        <a href="javascript:if(confirm('您真的要退出吗？')){location.href='${pageContext.request.contextPath}/logout.do'}">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time"></span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li><a href="${pageContext.request.contextPath}/billlist.do">订单管理</a></li>
                <li><a href="${pageContext.request.contextPath}/providerlist.do">供应商管理</a></li>
                <li><a href="${pageContext.request.contextPath}/userlist.do">用户管理</a></li>
                <li><a href="${pageContext.request.contextPath}/pwdmodify.jsp">密码修改</a></li>
                <li>
                    <a href="javascript:if(confirm('您真的要退出吗？')){location.href='${pageContext.request.contextPath}/logout.do'}">退出系统</a>
                </li>
            </ul>
        </nav>
    </div>