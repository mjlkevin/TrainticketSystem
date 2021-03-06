<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>LoginAndRegister</title>
    <meta charset="UTF-8">
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
<div id="wijmo-container" class="container-fluid" style="padding: 0px">
    <div class="ui-widget ui-widget-header wijmo-wijmenu ui-corner-all ui-helper-clearfix wijmo-wijmenu-horizontal" aria-activedescendant="ui-active-menuitem" role="menubar">
        <div class="scrollcontainer checkablesupport">
            <ul id="menu1" class="wijmo-wijmenu-list ui-helper-reset" tabindex="0" style="display: block;">
                <li role="menuitem" class="ui-widget-header ui-corner-all">
                    <h3><a href="">TrainTicketSystem</a></h3>
                </li>
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Home</span></a></li>
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Login</span></a></li>
                <li role="menuitem" class="ui-widget wijmo-wijmenu-item ui-state-default ui-corner-all"><a href="#" class="wijmo-wijmenu-link ui-corner-all"><span class="wijmo-wijmenu-text">Register</span></a></li>
                </li>
            </ul>
        </div>
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
                        <td><input class="text userName" type="text" name="name"></td>

                    </tr>
                    <tr>
                        <td><img src="images/psw.png" alt=""><b>密码</b></td>
                        <td><input class="text passWord" type="password" name="password"></td>

                    </tr>
                </table>
                <input type="submit" value="登录" class="submitBtn">
            </form>
        </div>
        <div class="registerFrame">
            <form class="cmxform" id="signupForm" action="RegisterAction">
                <table>
                    <tr>
                        <td><strong class='high' style="color:red">*</strong><b>用户名</b></td>
                        <td><input id="username" class="text" type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td><strong class='high' style="color:red">*</strong><b>密码</b></td>
                        <td><input id="password" class="text" type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td><strong class='high' style="color:red">*</strong><b>确认密码</b></td>
                        <td><input id="confirm_password" class="text" type="password" name="confirm_password"></td>
                    </tr>
                    <tr>
                        <td><label for="phonenumber"></label><b>手机号</b></td>
                        <td><input id="phonenumber" class="text" type="text" name="phonenumber"></td>
                    </tr>
                    <tr>
                        <td><label for="email"><b>Email</b></label></td>
                        <td><input id="email" type="email" name="email" class="text"></td>
                    </tr>
                    <tr>
                        <td><strong class='high' style="color: #ffffff;">*</strong><b>验证码</b></td>
                        <td><input type="text" name="" style="width: 80px"></td>
                        <td><input type="button" value="获取验证码" name="yzm" disabled="disabled" id="yzm_button" style="width: 60px"></td>
                    </tr>

                </table>
                <input class="submit submitBtn" type="submit" >
            </form>

        </div>
    </div>
</div>
<!-- 页脚-->
<div class="bottom">
    <div class="footer-con"></div>
  <div class="footer-txt"></div>
</div>
<!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-3.3.1.js"></script>
    <script src="jquery-ui-bootstrap/js/demo.js"></script>
    <script src="jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.wijmo-open.1.5.0.min.js"></script>
    <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.mousewheel.min.js"></script>
    <script src="jquery-ui-bootstrap/third-party/wijmo/jquery.bgiframe-2.1.3-pre.js"></script>
    <script src="js/jquery.validate.js"></script>
    <script src="js/LogReg.js"></script>

  </body>
</html>
