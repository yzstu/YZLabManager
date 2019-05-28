<%--
  Created by IntelliJ IDEA.
  User: 12405
  Date: 2019/1/25
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

    <%
    String tutorName = (String) session.getAttribute("tutorName");
    String stuCount = (String)session.getAttribute("stuCount");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>/ToturInterface/">

    <title>Home</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet" href="assets/materialize/css/materialize.min.css"
          media="screen,projection"/>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet"/>
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans'
          rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
</head>
<frameset rows="60,*" cols="*" scrolling="No" framespacing="0" frameborder="no" border="0">
    <!-- 引用头部 -->
    <frame src="inc/head.jsp" title="mainFrame">
    <!-- 引用左边和主体部分 -->
    <frameset rows="50*" cols="220,*" scrolling="No" framespacing="0" frameborder="no" border="0">
        <frame src="inc/left.jsp"title="mainFrame">
        <frame src="index.jsp" name="main" scrolling="yes" noresize="noresize" id="rightFrame" title="rightFrame">
    </frameset>
</frameset>
</html>
