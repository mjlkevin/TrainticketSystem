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
    <link rel="stylesheet" href="css/login.css">
    <script src="js/index.js"></script>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="jquery-ui-bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="jquery-ui-bootstrap/js/demo.js"></script>
    <link rel="stylesheet" href="jquery-ui-bootstrap/css/demo.css">
    <link rel="stylesheet"
          href="jquery-ui-bootstrap/css/custom-theme/jquery-ui-1.10.0.custom.css">
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
		      您好，请<a id="login_user" name="g_href" href="javascript:;">登录</a>
		      <a id="regist_out" name="g_href" href="javascript:;" class="ml">注册</a>
		      </li>
		    </ul>
		</span>
		
		</div>
		<!-- 导航栏 -->
		<div class="navBar">
		    <ul class="navBar_ul">
		        <li id="1" class="navBar_li"><a href="">首页</a></li>
		        <li id="2" class="navBar_li"><a href="">车票</a></li>
		        <li id="3" class="navBar_li"><a href="">我的车票</a></li>
		    </ul>
		</div>
		<!-- 轮播图 -->
		
		<div class="longSlide">
		  <div class="loginFrame">
		  	<form method="post" action="logAction">
		    	用户名<input type="text" name="lname"/> <br>
		    	密码<input type="password" name="lpassword" /><br>
		    	<input type="submit" name="lsubmit" value="登录" />
		  	</form>
		  </div>
		</div>
		<!-- 页脚-->
		<div class="bottom">
		    <div class="footer-con"></div>
		  <div class="footer-txt">
		
		  </div>
		</div>
  
    <s:form method="post" action="regAction">
    	<s:textfield name="rname" label="用户名"/>
    	<s:password name="rpassword" label="密码"/>
    	<s:textfield name="rsex" label="性别"/>
    	<s:textfield name="rage" label="年龄"/>
    	<s:textfield name="remail" label="电邮"/>
    	<s:submit name="rsubmit" value="注册"/>
    </s:form>
	<hr align="left" width="60%" color="RED"/>

  </body>
</html>
