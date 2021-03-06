<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>UserInfo</title>
    <meta charset="UTF-8">
    <%--js--%>
    <script src="js/index.js"></script>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="jquery-ui-bootstrap/js/demo.js"></script>

    <%--css--%>
    <link rel="stylesheet" href="css/UserInfo.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/css/demo.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/docs.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/bootstrap.min.css">

    <%--inline_css--%>
    <style type="text/css">
        #left_nav{
            margin-top: 40px;
            margin-left: 100px;
        }
    </style>

  </head>
  
  <body>
 <!--标题栏 -->
<div class="header">
    <span class="logo">
    </span>
    <h1 id="title">BuyAndGo</h1>
<span class="right">
    <ul class="header-menu">
      <li class="menu-line menu-item">|</li>
      <li class="menu-item menu-login">
      您好，请<a id="login_user" name="g_href" href="RegLogin-2.jsp">登录</a>
      <a id="regist_out" name="g_href" href="javascript:;" class="ml">注册</a>
      </li>
    </ul>
</span>

</div>
<!-- 导航栏 -->
<div class="navBar">
    <ul class="navBar_ul">
        <li id="1" class="navBar_li"><a href="index.html">首页</a></li>
        <li id="2" class="navBar_li"><a href="">车票</a></li>
        <li id="3" class="navBar_li"><a href="">我的车票</a></li>
    </ul>
</div>

<!-- 用户信息页面 -->
<div class="userInfo">
    <!--左导航栏-->
    <div class="span3 bs-docs-sidebar" id="left_nav">
        <ul class="userInfo_nav nav nav-list bs-docs-sidenav">
            <li style="height: 70px"><a href="#download-bootstrap"><i class="icon-chevron-right"></i> MyOrder</a></li>
            <li style="height: 70px"><a href="#button"><i class="icon-chevron-right"></i> Button</a></li>
            <li style="height: 70px"><a href="#accordion"><i class="icon-chevron-right"></i> Accordion</a></li>
            <li style="height: 70px"><a href="#dialog"><i class="icon-chevron-right"></i> Dialog</a></li>
            <li style="height: 70px"><a href="#tabs-simple"><i class="icon-chevron-right"></i> Tabs</a></li>
        </ul>
    </div>

    <!--右内容栏-->
    <div class="usrInfoContent">

    </div>
</div>




<!-- 页脚-->
<div class="bottom">
    <div class="footer-con">

    </div>
  <div class="footer-txt">

  </div>
</div>
  </body>
</html>
