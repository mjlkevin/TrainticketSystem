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
    <!-- css -->
    <!-- 框架css -->
    <link rel="stylesheet" href="jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/docs.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/bootstrap.min.css">
    <!--begin wijmo menu-->
    <link href="jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.css" rel="stylesheet" type="text/css" />
    <!--End wijmo menu-->

    <!-- customCss -->
    <link rel="stylesheet" href="css/index2.css">
  </head>
  
<body style="padding:0">
    <!-- wijmo start-->
<div id="wijmo-mycss wijmo-container" class="container-fluid" style="padding:0px 0px 0px 0px">
  <div class="ui-widget ui-widget-header wijmo-wijmenu ui-corner-all ui-helper-clearfix wijmo-wijmenu-horizontal" aria-activedescendant="ui-active-menuitem" role="menubar">
    <div class="scrollcontainer checkablesupport">
      <ul id="menu1" class="wijmo-wijmenu-list ui-helper-reset" tabindex="0" style="display: block;">
        <li role="menuitem" class="ui-widget-header ui-corner-all">
          <h3><a href="">TrainTicketSystem</a></h3>
        </li>
    <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="index.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Home</span></a></li>
    <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="RegLogin-2.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Login</span></a></li>
    <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="RegLogin-2.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Register</span></a></li>

      </ul>
    </div>
  </div>
</div>
    <!-- wijmo end-->

<!--custom header-->
<div class="header">
    <h1 id="title">BuyAndGo火车购票系统</h1>
</div>

<!-- search-frame -->
    <div class="search">
    <form action="TrainQueryAction" id="search_form">
    <ul class="search_frame_ul">
    <li class="search_frame_li"><span><label>出发地</label></span></li>
    <li class="search_frame_li">
    <input id="tags" class="ui-autocomplete-input" type="text" name="depStation" >
    </li>
    <li class="search_frame_li"><span><label>目的地</label></span></li>
    <li class="search_frame_li">
    <input id="tags" class="ui-autocomplete-input" type="text" name="TerStation">
    </li>
    <li class="search_frame_li"><span><label>出发日期</label></span></li>
    <li class="search_frame_li">
    <input id="datepicker" type="text" name="depDate">
    </li>
    </ul>
    <span class="search_btn">
    <button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" >
    <span class="ui-button-text">查询</span>
    </button>
    </span>
    </form>
    </div>

<!-- 查询结果表格 -->
    <div class="table" id="customers">
    <table class="search-result">
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
    <s:iterator value="#session.alltrainList">
        <tr id="tr1" class="alt">
          <td><s:property value="TrainNumber"/></td>
          <td><s:property value="DepStation"/> </td>
          <td><s:property value="TerStation"/> </td>
          <td><s:property value="LeaveTime"/></td>
          <td><s:property value="ArrTime"/></td>
          <td>有余票</td>
          <td>有余票</td>
          <td><button class="book_btn ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" >
    <span class="ui-button-text">预订</span></button></td>
    </s:iterator>
  </table>
</div>
<!-- 页脚-->
<div class="bottom">
  <div class="footer-con"></div>
  <div class="footer-txt"></div>
 <div id="dialog-confirm" title="清空回收站吗？">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>这些项目将被永久删除，并且无法恢复。您确定吗？</p>
</div>
  </div>
</body>
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
    <script src="js/QuerySuccess.js"></script>
</html>
