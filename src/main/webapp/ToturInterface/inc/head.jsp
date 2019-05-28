<%--
  Created by IntelliJ IDEA.
  User: 12405
  Date: 2019/1/25
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%
    String tutorName = (String) session.getAttribute("tutorName");
%>
<html>
<head>
    <base href="<%=basePath%>/ToturInterface/">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Head</title>
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
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand waves-effect waves-dark" href="index.html"><i
                    class="large material-icons">insert_chart</i> <strong>TRACK</strong></a>

            <div id="sideNav" class="waves-effect waves-dark" href="">
                <i class="material-icons dp48">toc</i>
            </div>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li><a class="dropdown-button waves-effect waves-dark" href="#!"
                   data-activates="dropdown4"><i class="fa fa-envelope fa-fw"></i>
                <i class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button waves-effect waves-dark" href="#!"
                   data-activates="dropdown3"><i class="fa fa-tasks fa-fw"></i> <i
                    class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button waves-effect waves-dark" href="#!"
                   data-activates="dropdown2"><i class="fa fa-bell fa-fw"></i> <i
                    class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button waves-effect waves-dark" href="#!"
                   data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>Hello!Teacher <%=tutorName %>
            </b> <i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>
    </nav>
    <!-- Dropdown Structure -->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="#"><i class="fa fa-user fa-fw"></i> My Profile</a>
        </li>
        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
        <li><a href="../login.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
        </li>
    </ul>
    <ul id="dropdown2" class="dropdown-content w250">
        <li><a href="#">
            <div>
                <i class="fa fa-comment fa-fw"></i> New Comment <span
                    class="pull-right text-muted small">4 min</span>
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
                    class="pull-right text-muted small">12 min</span>
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <i class="fa fa-envelope fa-fw"></i> Message Sent <span
                    class="pull-right text-muted small">4 min</span>
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <i class="fa fa-tasks fa-fw"></i> New Task <span
                    class="pull-right text-muted small">4 min</span>
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <i class="fa fa-upload fa-fw"></i> Server Rebooted <span
                    class="pull-right text-muted small">4 min</span>
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a class="text-center" href="#"> <strong>See
            All Alerts</strong> <i class="fa fa-angle-right"></i>
        </a></li>
    </ul>
    <ul id="dropdown3" class="dropdown-content dropdown-tasks w250">
        <li><a href="#">
            <div>
                <p>
                    <strong>Task 1</strong> <span class="pull-right text-muted">60%
								Complete</span>
                </p>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-success" role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 60%">
                        <span class="sr-only">60% Complete (success)</span>
                    </div>
                </div>
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <p>
                    <strong>Task 2</strong> <span class="pull-right text-muted">28%
								Complete</span>
                </p>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-info" role="progressbar"
                         aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"
                         style="width: 28%">
                        <span class="sr-only">28% Complete</span>
                    </div>
                </div>
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <p>
                    <strong>Task 3</strong> <span class="pull-right text-muted">60%
								Complete</span>
                </p>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-warning" role="progressbar"
                         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                         style="width: 60%">
                        <span class="sr-only">60% Complete (warning)</span>
                    </div>
                </div>
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <p>
                    <strong>Task 4</strong> <span class="pull-right text-muted">85%
								Complete</span>
                </p>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-danger" role="progressbar"
                         aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
                         style="width: 85%">
                        <span class="sr-only">85% Complete (danger)</span>
                    </div>
                </div>
            </div>
        </a></li>
        <li class="divider"></li>
        <li>
    </ul>
    <ul id="dropdown4" class="dropdown-content dropdown-tasks w250">
        <li><a href="#">
            <div>
                <strong>John Doe</strong> <span class="pull-right text-muted">
							<em>Today</em>
						</span>
            </div>
            <div>Lorem Ipsum has been the industry's standard dummy text
                ever since the 1500s...
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <strong>John Smith</strong> <span class="pull-right text-muted">
							<em>Yesterday</em>
						</span>
            </div>
            <div>Lorem Ipsum has been the industry's standard dummy text
                ever since an kwilnw...
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="#">
            <div>
                <strong>John Smith</strong> <span class="pull-right text-muted">
							<em>Yesterday</em>
						</span>
            </div>
            <div>Lorem Ipsum has been the industry's standard dummy text
                ever since the...
            </div>
        </a></li>
        <li class="divider"></li>
        <li><a class="text-center" href="#"> <strong>Read
            All Messages</strong> <i class="fa fa-angle-right"></i>
        </a></li>
    </ul>
</div>
</body>
</html>
