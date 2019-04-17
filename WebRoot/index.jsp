<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>TrainticketSystem</title>
    <!-- js -->
    <script src="js/index.js"></script>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="jquery-ui-bootstrap/js/demo.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/css/demo.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css">
  </head>
  
<body> 

<!-- 标题栏 -->
<div class="header">
    <span class="logo">
    </span>
    <h1 id="title">BuyAndGo火车购票系统</h1>
<span class="right">
    <ul class="header-menu">
      <li class="menu-line menu-item">|</li>
      <li class="menu-item menu-login">
      您好，请<a id="login_user" name="g_href" href="RegLogin.jsp">登录</a>
      <a id="regist_out" name="g_href" href="RegLogin.jsp" class="ml">注册</a>
      </li>
    </ul>
</span>

</div>
<!-- 导航栏 -->
<div class="navBar">
    <ul class="navBar_ul">
        <li id="1" class="navBar_li"><a href="index.jsp">首页</a></li>
        <li id="2" class="navBar_li"><a href="">车票</a></li>
        <li id="3" class="navBar_li"><a href="UserInfo.jsp">我的车票</a></li>
    </ul>
</div>
<!-- 查询框 -->
<div class="search">
    <form action="TrainQueryAction" style="border:1px solid #000">
    <ul class="search_frame_ul">
        <li class="search_frame_li">
            <div class="ui-widget">
            <span>
            	<label>出发地</label>
            </span>
            <input id="tags" class="ui-autocomplete-input" type="text" name="depStation" >
            </div>
        </li>
        <li class="search_frame_li">
            <span>
                <label>目的地</label>
            </span>
            <input id="tags" class="ui-autocomplete-input" type="text" name="TerStation">
        </li>
        <li class="search_frame_li">
            <span>
                <label>出发日期</label>
                <input id="datepicker" type="text" name="depDate">
            </span>
        </li>
    </ul>
    <span class="search_btn">
        <button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" ">
            <span class="ui-button-text">查询</span>
        </button>
    </span>
 </form>
</div>

<!-- 查询结果表格 -->
<div class="table" id="customers">
  <table>
      <thead>
        <tr class="th">
            <th>车次</th>
            <th>出发站</th>
            <th>到达站</th>
            <th>出发时间</th>
            <th>到达时间</th>
            <th>一等座</th>
            <th>二等座</th>
            <th>备注</th>
        </tr>
      </thead>
      <tr id="tr1" class="alt">
          <td>C1234</td>
          <td>广州南</td>
          <td>珠海</td>
          <td>18:00</td>
          <td>19:00</td>
          <td>是</td>
          <td></td>
          <td>预定</td>
      </tr>
      <tr id="tr2">
          <td>C1234</td>
          <td>广州南</td>
          <td>珠海</td>
          <td>18:00</td>
          <td>19:00</td>
          <td>是</td>
          <td></td>
          <td>预定</td>
      </tr>
      <tr id="tr3" class="alt">
          <td>C1234</td>
          <td>广州南</td>
          <td>珠海</td>
          <td>18:00</td>
          <td>19:00</td>
          <td>是</td>
          <td></td>
          <td>预定</td>
      </tr>
      <tr id="tr4">
          <td>C1234</td>
          <td>广州南</td>
          <td>珠海</td>
          <td>18:00</td>
          <td>19:00</td>
          <td>是</td>
          <td></td>
          <td>预定</td>
      </tr>
  </table>
</div>

<!-- 页脚-->
<div class="bottom">
    <div class="footer-con"></div>
  <div class="footer-txt">

  </div>
</div>
  </body>
</html>
