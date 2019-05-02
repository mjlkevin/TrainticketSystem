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
    <title>OrderCenter</title>
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
      <!-- OrderCenter.css -->
      <link rel="stylesheet" href="css/OrderCenter.css">
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
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="index.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Home</span></a></li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="RegLogin-2.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Login</span></a></li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Register</span></a></li>
        <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all wijmo-wijmenu-parent" aria-haspopup="true"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Dropdown</span><span class="ui-icon ui-icon-triangle-1-s"></span></a>
            <ul class="wijmo-wijmenu-list ui-widget-content ui-corner-all ui-helper-clearfix wijmo-wijmenu-child ui-helper-reset" style="display: none;">
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Secondary link</span></a> </li>
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Something else here</span></a> </li>
                <li class="wijmo-wijmenu-separator ui-state-default ui-corner-all"></li>
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Another link</span></a> </li>
            </ul>
        </li>
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
                        <li><a href="#"><i class="fa fa-circle-o"></i> 候补订单</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> 保险订单</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> 保险订单</a></li>
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
                        <span>会员中心</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
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
 <!-- right userInfoContent-->
<div class="userInfoContent">
    <div class="orderItem">
        <table>
            <tr>
                <th>车次信息</th>
                <th>旅客信息</th>
                <th>席位信息</th>
                <th>票价</th>
                <th>付款情况</th>
            </tr>
        </table>
        <div class="orderItem-hd">
            <div class="order-hd-info">
                <span class="txt-light">订票日期：</span>
                <span class="orderDate">2019-04-26</span>
            </div>
            <div class="order-hd-info">
                <span class="txt-light">订单号：</span>
                <span class="orderDate">EG27808365</span>
            </div>
        </div>
        <div class="orderItem-bd">
            <table class="order-item-table">
            <tr class="has-order-num">
                <td class="td-left">
                    <div class="order-info-ticket">
                        <div class="order-info-ticket-fromTo">唐家湾 - > 广州南</div>
                        <div class="order-info-ticket-time">2019-04-27&nbsp;&nbsp;&nbsp;11:17开</div>
                    </div>
                </td>
                <td style="width: 200px;">
                    <div class="passenger-operation">
                        <div>麦嘉良</div>
                        <div>中国居民身份证</div>
                    </div>
                </td>
                <td>
                    <div>二等座</div>
                    <div>05车14D号</div>
                </td>
                <td>
                    <div>成人票</div>
                    <div>60元</div>
                </td>
                <td>
                    <div>已付款</div>
                </td>
            </tr>
            </table>
        </div>

    </div>
    </div>
</div>
<!-- 页脚-->
 <script src="css/dist/sidebar-menu.js"></script>
 <script>
     $.sidebarMenu($('.sidebar-menu'))
 </script>
  </body>
</html>
