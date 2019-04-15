<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>注册登录</title>
<%--     <script type="text/javascript">
        function reg()
        {
            targetForm=document.forms[0];
            targetForm.action="regLogAction!register"; //设置提交的Action
            targetForm.submit(); //提交表单
        }
    </script>
     --%>
    <meta charset="UTF-8">
    <title>Title</title>
<!-- js -->
    <script src="js/index.js"></script>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="jquery-ui-bootstrap/js/demo.js"></script>
    <script src="js/LogReg.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/RegLoginFrame.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/css/demo.css">
    <link rel="stylesheet" href="jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css">
  </head>
  
<body>
<!-- 标题栏 -->
<div class="header">
    <span class="logo">
    </span>
    <h1 id="title">BuyAndGo</h1>
<span class="right">
    <ul class="header-menu">
      <li class="menu-line menu-item">|</li>
      <li class="menu-item menu-login">
      您好，请<a id="login_user" name="g_href" href="javascript:;">登录</a>
      <a id="regist_out" name="g_href" href="javascript:;" class="ml">注册</a>
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
            <form action="">
                <table>
                    <tr >
                        <td><img src="images/userName.png" alt="" id="icon_username"><b>用户名</b></td>
                        <td><input class="text userName" type="text" name="userName" placeholder="Please input your username"></td>
                        <td id="1"></td>
                    </tr>
                    <tr>
                        <td><img src="images/psw.png" alt=""><b>密码</b></td>
                        <td><input class="text passWord" type="password" name="userPsw" placeholder="Please input your username"></td>
                        <td id="2"></td>
                    </tr>
                </table>
                <span class="submitBtn">登录</span>
            </form>

        </div>
        <div class="registerFrame">
            <form action="">
                <table>
                    <tr>
                        <td><strong class='high' style="color:red">*</strong><img src="images/userName.png" alt="" id="icon_01"><b>用户名</b></td>
                        <td><input class="text" type="text" name="userName" placeholder="Input username"></td>
                    </tr>
                    <tr>
                        <td><strong class='high' style="color:red"lor='red'>*</strong><img src="images/psw.png" alt=""><b>密码</b></td>
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
