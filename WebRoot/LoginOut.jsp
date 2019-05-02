<!--
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>TrainticketSystem</title>
    <!-- js -->
      <!-- jQuery -->
    <script src="js/jquery-3.3.1.js"></script>
      <!-- jQuery-ui-->
    <script src="jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="jquery-ui-bootstrap/js/demo.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.min.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.mousewheel.min.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.bgiframe-2.1.3-pre.js"></script>
      <!--自定义js-->
      <script src="js/index.js"></script>
    <!-- css -->
      <!-- 框架css -->
      <link rel="stylesheet" href="jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css">
      <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/docs.css">
      <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/font-awesome.min.css">
      <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/bootstrap.min.css">
      <!--begin wijmo menu-->
      <link href="jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.css" rel="stylesheet" type="text/css" />
      <!--End wijmo menu-->
      <!-- 自定义css -->
      <link rel="stylesheet" href="css/index2.css">
  </head>
  
<body>
<!-- wijmo start-->
<div id="wijmo-container" class="container-fluid">
    <div class="ui-widget ui-widget-header wijmo-wijmenu ui-corner-all ui-helper-clearfix wijmo-wijmenu-horizontal" aria-activedescendant="ui-active-menuitem" role="menubar">
        <div class="scrollcontainer checkablesupport">
            <ul id="menu1" class="wijmo-wijmenu-list ui-helper-reset" tabindex="0" style="display: block;">
        <li role="menuitem" class="ui-widget-header ui-corner-all">
            <h3><a href="">TrainTicketSystem</a></h3>
        </li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Home</span></a></li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Login</span></a></li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Register</span></a></li>
    </ul>
    </div>
</div>
</div>
    <!-- wijmo end-->
<!--标题栏-->
<div class="header">
    <h1 id="title">BuyAndGo火车购票系统</h1>
</div>
<!-- 消息提示框 -->
<div class="Msg">
    <%
    if(request.getSession().getAttribute("loginUser")!=null){
    request.getSession().removeAttribute("loginUser");
    }
    response.sendRedirect("reglogin.jsp");
    %>
</div>

<!-- 页脚-->
<div class="bottom" style="bottom: 0px">
    <div class="footer-con"></div>
  <div class="footer-txt">

  </div>
</div>
  </body>
</html>
