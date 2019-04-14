<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>退出登录</title>
  </head>
  
  <body>
    <%
    	if(request.getSession().getAttribute("loginUser")!=null){
	    	request.getSession().removeAttribute("loginUser");
    	}
    	response.sendRedirect("reglogin.jsp");
     %>

  </body>
</html>
