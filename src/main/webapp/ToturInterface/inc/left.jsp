<%--
  Created by IntelliJ IDEA.
  User: 12405
  Date: 2019/1/25
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>/ToturInterface/">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Left</title>
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
<body>
<div id="wrapper">
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li><a href="index.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-dashboard"></i> Dashboard</a></li>
                <li><a href="ui-elements.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-desktop"></i> UI Elements</a></li>
                <li><a href="chart.jsp"
                       class="active-menu waves-effect waves-dark"><i
                        class="fa fa-bar-chart-o"></i> Charts</a></li>
                <li><a href="tab-panel.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-qrcode"></i> Tabs & Panels</a></li>

                <li><a href="table.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-table"></i> Responsive Tables</a></li>
                <li><a href="form.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-edit"></i> Forms </a></li>


                <li><a href="#" class="waves-effect waves-dark"><i
                        class="fa fa-sitemap"></i> Multi-Level Dropdown<span
                        class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="#">Second Level Link</a></li>
                        <li><a href="#">Second Level Link</a></li>
                        <li><a href="#" class="waves-effect waves-dark">Second
                            Level Link<span class="fa arrow"></span>
                        </a>
                            <ul class="nav nav-third-level">
                                <li><a href="#">Third Level Link</a></li>
                                <li><a href="#">Third Level Link</a></li>
                                <li><a href="#">Third Level Link</a></li>

                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="empty.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-fw fa-file"></i> Empty Page</a></li>
            </ul>

        </div>

    </nav>
</div>
</body>
</html>
