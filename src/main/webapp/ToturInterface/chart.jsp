<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>/ToturInterface/">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Chart</title>
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
    <%
        String tutorName = (String) session.getAttribute("tutorName");
        String ID = (String) session.getAttribute("ID");
    %>

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
            <a class="navbar-brand waves-effect waves-dark" href="index.jsp"><i
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
    <!--/. NAV TOP  -->
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li><a href="index.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="ui-elements.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-desktop"></i> School News</a></li>
                <li><a href="chart.jsp"
                       class="active-menu waves-effect waves-dark"><i
                        class="fa fa-bar-chart-o"></i> Charts</a></li>
                <li><a href="tab-panel.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-qrcode"></i> Tabs & Panels</a></li>

                <li><a href="table.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-table"></i> Responsive Tables</a></li>
                <li><a href="form.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-edit"></i> Forms </a></li>


                <%--<li><a href="#" class="waves-effect waves-dark"><i
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
                </li>--%>
                <li><a href="empty.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-fw fa-file"></i> Empty Page</a></li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">Charts</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Charts</a></li>
                <li class="active">Data</li>
            </ol>

        </div>
        <div id="page-inner">

            <div class="row">


                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">Bar Chart</div>
                        <div class="card-content">
                            <div id="morris-bar-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">Area Chart</div>
                        <div class="card-content">
                            <div id="morris-area-chart"></div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /. ROW  -->
            <div class="row">

                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">Line Chart</div>
                        <div class="card-content">
                            <div id="morris-line-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">Donut Chart</div>
                        <div class="card-content">
                            <div id="morris-donut-chart"></div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /. ROW  -->
            <footer>
                <p>Copyright &copy; 2019 www.yzstu.cn All rights reserved.</p>
            </footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.10.2.js"></script>

<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>

<script src="assets/materialize/js/materialize.min.js"></script>

<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="assets/js/morris/morris.js"></script>


<script src="assets/js/easypiechart.js"></script>
<script src="assets/js/easypiechart-data.js"></script>

<script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

<!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>


</body>
</html>