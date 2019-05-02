
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
    <title>UserInfoPage</title>
    <!-- js -->
      <!-- jquery-3.3.1 -->
    <script src="js/jquery-3.3.1.js"></script>
      <!-- jQuery-ui-->
    <script src="jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.min.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.mousewheel.min.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.bgiframe-2.1.3-pre.js"></script>
      <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <!--自定义js-->
      <script src="js/index.js"></script>
    <!-- css -->
      <!-- 框架css -->
      <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css">
      <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/font-awesome.min.css">
      <!--begin wijmo menu-->
      <link href="jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.css" rel="stylesheet" type="text/css" />
      <!--End wijmo menu-->
      <!-- nav_css-->
      <link rel="stylesheet" href="css/dist/sidebar-menu.css">
      <!-- UserInfo.css -->
      <link rel="stylesheet" href="css/UserInfo.css">
      <style type="text/css">
          .main-sidebar{
              position: absolute;
              left: 0;
              height: 80%;
              width: 230px;
              z-index: 810;
              background-color: #222d32;
          }
      </style>
  </head>
  
<body>
 <!--wijmo start-->
<div id="wijmo-container" class="container-fluid" style="padding:0;">
    <div class="ui-widget ui-widget-header wijmo-wijmenu ui-corner-all ui-helper-clearfix wijmo-wijmenu-horizontal" aria-activedescendant="ui-active-menuitem" role="menubar">
        <div class="scrollcontainer checkablesupport">
            <ul id="menu1" class="wijmo-wijmenu-list ui-helper-reset" tabindex="0" style="display: block;">
        <li role="menuitem" class="ui-widget-header ui-corner-all">
            <h3><a href="">TrainTicketSystem</a></h3>
        </li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all">
          <a href="index.jsp" class="wijmo-wijmenu-link ui-corner-all">
            <span class="wijmo-wijmenu-text">Home</span>
            </a>
            </li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all">
        <a href="RegLogin.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Login</span></a></li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all">
        <a href="RegLogin.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Register</span></a></li>
    </ul>
    </div>
</div>
</div>
 <!-- wijmo end-->
 <!--header-->
 <div class="header_title">
     <h1 id="title">BuyAndGo火车购票系统</h1>
 </div>
 <!--userinfopage start-->
<!-- left nav-->
<aside class="main-sidebar">
        <section  class="sidebar">
            <ul class="sidebar-menu">
                <li class="header">MAIN</li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>订单中心</span> <i class="fa fa-angle-left pull-right">1</i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> 火车票订单</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-files-o"></i>
                        <span>个人中心</span>
                        <span class="label label-primary pull-right">4</span>
                    </a>
                    <ul class="treeview-menu" style="display: none;">
                        <li><a href="#"><i class="fa fa-circle-o"></i> 查看个人信息</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Boxed</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Fixed</a></li>
                        <li class=""><a href="#"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-th"></i> <span>常用信息管理</span>
                        <small class="label pull-right label-info">new</small>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-pie-chart"></i>
                        <span>Charts</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> ChartJS</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Morris</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Flot</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Inline charts</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-laptop"></i>
                        <span>账号中心</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> 修改密码</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Icons</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Buttons</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Sliders</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Timeline</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Modals</a></li>
                    </ul>
                </li>
            </ul>
        </section>
    </aside>
<div class="usrInfoContent"></div>
<!-- 页脚-->
 <script src="css/dist/sidebar-menu.js"></script>
 <script>
     $.sidebarMenu($('.sidebar-menu'))
 </script>
  </body>
</html>
