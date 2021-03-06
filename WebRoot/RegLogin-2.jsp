<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>LoginAndRegister</title>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- js -->
    <script src="js/jquery-3.3.1.js"></script>
      <script src="jquery-ui-bootstrap/js/demo.js"></script>
      <script src="jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.min.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.mousewheel.min.js"></script>
      <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.bgiframe-2.1.3-pre.js"></script>
      <script src="js/index.js"></script>
      <script src="js/LogReg.js"></script>
    <!-- css -->
      <!-- 框架 css-->
      <link rel="stylesheet" href="jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css">
      <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/docs.css">
      <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/font-awesome.min.css">
          <link rel="stylesheet" href="jquery-ui-bootstrap/assets/css/bootstrap.min.css">
      <!--begin wijmo menu-->
      <link href="jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.css" rel="stylesheet" type="text/css" />
      <!--End wijmo menu-->
      <!-- 自定义 css-->
      <link rel="stylesheet" href="css/RegLogin.css">
  </head>
  	
<body style="padding:0">	
<!-- wijmo -->
<div id="wijmo-container" class="wijmo-mycss container-fluid ">
    <div class="ui-widget ui-widget-header wijmo-wijmenu ui-corner-all ui-helper-clearfix wijmo-wijmenu-horizontal" aria-activedescendant="ui-active-menuitem" role="menubar">
        <div class="scrollcontainer checkablesupport">
            <ul id="menu1" class="wijmo-wijmenu-list ui-helper-reset" tabindex="0" style="display: block;">
                <li role="menuitem" class="ui-widget-header ui-corner-all">
                    <h3><a href="">TrainTicketSystem</a></h3>
                </li>
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="index.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Home</span></a></li>
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Login</span></a></li>
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="UserInfoPage.jsp" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">UserCenter</span></a></li>
            </ul>
        </div>
    </div>

    <!--标题栏-->
    <div class="header">
        <h1 id="title">BuyAndGo火车购票系统</h1>
    </div>
<!-- 轮播图 -->
<div class="longSlide">
    <!--登录注册Frame-->
    <div class="LogRegFrame">
        <!--切换条-->
            <div class="top_tab_line">
                <div class="tab_line">
                    <a href="#" >账号注册</a>
                    <span class="vline">|</span>
                    <a href="#" class="loginBtn">账号登录</a>
                </div>
            </div>
            <!--登录与注册框-->
        <div class="loginFrame">
            <form action="loginAction">
                <table>
                    <tr>
                        <td><img src="images/userName.png" alt="" id="icon_username"><b>用户名</b></td>
                        <td><input class="text userName" type="text" name="name" placeholder="Input your username"></td>
                    </tr>
                    <tr>
                        <td><img src="images/psw.png" alt=""><b>密码</b></td>
                        <td><input class="text passWord" type="password" name="password" placeholder="Input your password"></td>
                    </tr>
                </table>
                <input type="submit" value="登录" class="submitBtn">
            </form>

        </div>
        <div class="registerFrame">
            <form action="RegLogAction">
                <table>
                    <tr>
                        <td><strong class='high' style="color:red">*</strong><img src="images/userName.png" alt="" id="icon_01"><b>用户名</b></td>
                        <td><input class="text" type="text" name="userName" placeholder="Input username"></td>
                    </tr>
                    <tr>
                        <td><strong class='high' style="color:red">*</strong><img src="images/psw.png" alt=""><b>密码</b></td>
                        <td><input class="text" type="password" name="userPsw" placeholder="Input password"></td>
                    </tr>
                    <tr>
                        <td><strong class='high' style="color:red">*</strong><img src="images/psw.png" alt=""><b>确认密码</b></td>
                        <td><input class="text" type="text" name="userName" placeholder="Comfirm password"></td>
                    </tr>
                    <tr>
                        <td><strong class='high' style="color: #ffffff;">*</strong><img src="images/PHONE.png" alt=""><b>手机号</b></td>
                        <td><input class="phone" type="text" placeholder="Input PhoneNumber"></td>
                    </tr>
                    <tr>
                        <td><strong class='high' style="color: #ffffff;">*</strong><b>验证码</b></td>
                        <td><input type="text" name=""  placeholder="Input IDCode" style="width: 80px"></td>
                        <td><input type="button" value="获取验证码" name="yzm" disabled="disabled" id="yzm_button"></td>
                    </tr>

                </table>
                <span class="submitBtn">注册</span>
            </form>

        </div>
    </div>
</div>
<!-- 页脚-->
<div class="bottom">
    <div class="footer-con"></div>
  <div class="footer-txt">

  </div>
</div>
<%--     <s:form method="post" action="regAction">
    	<s:textfield name="rname" label="用户名"/>
    	<s:password name="rpassword" label="密码"/>
    	<s:textfield name="rsex" label="性别"/>
    	<s:textfield name="rage" label="年龄"/>
    	<s:textfield name="remail" label="电邮"/>
    	<s:submit name="rsubmit" value="注册"/>
    </s:form>
	<hr align="left" width="60%" color="RED"/>
 --%>
  </body>
</html>
