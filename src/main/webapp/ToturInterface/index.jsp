<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<%
    String tutorName = (String) session.getAttribute("tutorName");
    String stuCount = (String)session.getAttribute("stuCount");
    //HashMap<String,Double> nameDuration = StudentUtils.getMyStuArr((Integer) session.getAttribute("ID"));
    String[] sevenDayDateArr = (String[]) session.getAttribute("sevenDayDateArr");
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
    <!-- 引入 ECharts 文件 -->
    <script src="assets/js/echarts.js"></script>
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
    <script src="assets/js/echarts.js"></script>
</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle waves-effect waves-dark"
                    data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand waves-effect waves-dark" href="index.jsp"><i
                    class="large material-icons">insert_chart</i> <strong>TRACK</strong></a>

            <div id="sideNav" href="">
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
            </b>
                <i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>
    </nav>
    <!-- Dropdown Structure -->
    <ul id="dropdown1" class="dropdown-content">
        <li><a href="#"><i class="fa fa-user fa-fw"></i> My Profile</a>
        </li>
        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
        <li><a href="../login.jsp"><i class="fa fa-sign-out fa-fw"></i>
            Logout</a></li>
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
                <strong><%=tutorName%>
                </strong> <span class="pull-right text-muted">
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
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li><a href="index.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="ui-elements.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-desktop"></i> School News</a></li>
                <%--<li><a href="chart.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-bar-chart-o"></i> Charts</a></li>--%>
                <li><a href="tab-panel.jsp"
                       class="active-menu waves-effect waves-dark"><i
                        class="fa fa-qrcode"></i> student's work</a></li>

                <li><a href="table.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-table"></i> Responsive Tables</a></li>
                <%--<li><a href="form.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-edit"></i> Forms </a></li>--%>


                <li><a href="empty.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-fw fa-file"></i> Yangtze University</a></li>
                <%--<li><a class="active-menu waves-effect waves-dark"
                       href="index.jsp"><i class="fa fa-dashboard"></i> Overview</a></li>
                <li><a href="ui-elements.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-desktop"></i> UI Elements</a></li>
                <li><a href="chart.jsp" class="waves-effect waves-dark"><i
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
                        <li><a href="#">Second Level Link<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li><a href="#">Third Level Link</a></li>
                                <li><a href="#">Third Level Link</a></li>
                                <li><a href="#">Third Level Link</a></li>

                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="empty.jsp" class="waves-effect waves-dark"><i
                        class="fa fa-fw fa-file"></i> Empty Page</a></li>--%>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">Overview</h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Overview</a></li>
            </ol>

        </div>
        <div id="page-inner">


            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image red">
                            <%--<i class="fa fa-users fa-5x"></i>--%>
                            <i class="material-icons dp48"></i>
                        </div>
                        <div class="card-stacked">
                            <div class="card-content">
                                <h3><%=stuCount %></h3>
                            </div>
                            <div class="card-action">
                                <strong>Student Conut</strong>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image orange">
                            <i class="material-icons dp48"></i>
                        </div>
                        <div class="card-stacked">
                            <div class="card-content">
                                <h3>2</h3>
                            </div>
                            <div class="card-action">
                                <strong> Has clock</strong>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image blue">
                            <%--<i class="fa fa-comments fa-5x"></i>--%>
                            <i class="material-icons dp48"></i>
                        </div>
                        <div class="card-stacked">
                            <div class="card-content">
                                <h3>1</h3>
                            </div>
                            <div class="card-action">
                                <strong> Overdue</strong>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image">
                            <%--<i class="fa fa-users fa-5x"></i>--%>
                            <i class="material-icons dp48"></i>
                        </div>
                        <div class="card-stacked">
                            <div class="card-content">
                                <h3>2</h3>
                            </div>
                            <div class="card-action">
                                <strong> Working</strong>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <!-- 为ECharts准备一个具备大小（宽高）的DOM容器-->
                <div id='learningTime' style='width:900px;height:400px;'></div>
                <!-- 引入ECharts文件 -->
                <%--学习时长的数据--%>
                <script>
                    //基于准备好的DOM，初始化echarts实例
                    var myChart = echarts.init(document.getElementById('learningTime'));
                    //指定图表的配置项和数据
                    var option = {
                        title: {
                            text: '最近七天学生学习时长'
                        },
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data:['黄力','尚玉豪','李顺','王勇','陈秘']
                        },
                        grid: {
                            left: '3%',
                            right: '4%',
                            bottom: '3%',
                            containLabel: true
                        },
                        toolbox: {
                            feature: {
                                saveAsImage: {}
                            }
                        },
                        xAxis: {
                            type: 'category',
                            boundaryGap: false,
                            data: ['<%=sevenDayDateArr[0]%>','<%=sevenDayDateArr[1]%>','<%=sevenDayDateArr[2]%>','<%=sevenDayDateArr[3]%>','<%=sevenDayDateArr[4]%>','<%=sevenDayDateArr[5]%>','<%=sevenDayDateArr[6]%>']
                        },
                        yAxis: {
                            type: 'value',
                            name: '学习时长/h'
                        },
                        series: [

                            <%--<%
                                for (String key : nameDuration.keySet()){
                                    %>


                            <%
                                }

                            %>
                            <c:set var = "nameDuration" value="<%=nameDuration%>"></c:set>
                            <c:forEach var="nameDuration" items="${nameDuration}">
                                {

                                }
                            </c:forEach>--%>
                            {
                                name:'小明',
                                type:'line',
                                stack: '总量',
                                data:[1,3,5,7,9,3,4]
                            },
                            {
                                name:'尚玉豪',
                                type:'line',
                                stack: '总量',
                                data:[12, 13, 6, 1, 8, 11, 5]
                            },
                            {
                                name:'李顺',
                                type:'line',
                                stack: '总量',
                                data:[11, 3, 9, 1, 3, 2, 7]
                            },
                            {
                                name:'王勇',
                                type:'line',
                                stack: '总量',
                                data:[3, 1, 6, 2, 7, 1, 9]
                            },
                            {
                                name:'陈秘',
                                type:'line',
                                stack: '总量',
                                data:[5, 1, 4, 1, 6, 1, 4]
                            }
                        ]
                    };
                    //使用刚指定的配置项和数据显示图表
                    myChart.setOption(option);
                </script>

                <div id='morningSign' style='width:900px;height:400px;'></div>
                <script>
                    //基于准备好的DOM，初始化echarts实例
                    var myChart = echarts.init(document.getElementById('morningSign'));
                    //指定图表的配置项和数据
                    var option = {
                        title: {
                            text: '最近七天学生早到情况'
                        },
                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data:['黄力','尚玉豪','李顺','王勇','陈秘']
                        },
                        grid: {
                            left: '3%',
                            right: '4%',
                            bottom: '3%',
                            containLabel: true
                        },
                        toolbox: {
                            feature: {
                                saveAsImage: {}
                            }
                        },
                        xAxis: {
                            type: 'category',
                            boundaryGap: false,
                            data: ['<%=sevenDayDateArr[0]%>','<%=sevenDayDateArr[1]%>','<%=sevenDayDateArr[2]%>','<%=sevenDayDateArr[3]%>','<%=sevenDayDateArr[4]%>','<%=sevenDayDateArr[5]%>','<%=sevenDayDateArr[6]%>']
                        },
                        yAxis: {
                            type:'value' ,
                            data:["00:00","01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"],

                            name: '学习时长/h'
                        },
                        series: [
                            {
                                name:'小明',
                                type:'line',
                                stack: '总量',
                                data:['06:42','07:31','08:35','08:01','07:35',' 06:29','07:12']
                            },
                            {
                                name:'尚玉豪',
                                type:'line',
                                stack: '总量',
                                data:['06:42','07:31','08:35','08:01','07:35',' 06:29','07:12']
                            },
                            {
                                name:'李顺',
                                type:'line',
                                stack: '总量',
                                data:['<%=sevenDayDateArr[0]%> 06:42','<%=sevenDayDateArr[1]%> 07:31','<%=sevenDayDateArr[2]%> 08:35','<%=sevenDayDateArr[3]%> 08:01','<%=sevenDayDateArr[4]%> 07:35','<%=sevenDayDateArr[5]%> 06:29','<%=sevenDayDateArr[6]%> 07:12']
                            },
                            {
                                name:'王勇',
                                type:'line',
                                stack: '总量',
                                data:['<%=sevenDayDateArr[0]%> 06:42','<%=sevenDayDateArr[1]%> 07:31','<%=sevenDayDateArr[2]%> 08:35','<%=sevenDayDateArr[3]%> 08:01','<%=sevenDayDateArr[4]%> 07:35','<%=sevenDayDateArr[5]%> 06:29','<%=sevenDayDateArr[6]%> 07:12']
                            },
                            {
                                name:'陈秘',
                                type:'line',
                                stack: '总量',
                                data:['<%=sevenDayDateArr[0]%> 06:42','<%=sevenDayDateArr[1]%> 07:31','<%=sevenDayDateArr[2]%> 08:35','<%=sevenDayDateArr[3]%> 08:01','<%=sevenDayDateArr[4]%> 07:35','<%=sevenDayDateArr[5]%> 06:29','<%=sevenDayDateArr[6]%> 07:12']
                            }
                        ]
                    };
                    //使用刚指定的配置项和数据显示图表
                    myChart.setOption(option);
                </script>

            </div>


            <%--<div class="row">
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-image">
                            <div id="morris-area-chart"></div>
                        </div>
                        <div class="card-action">
                            <b>Area Chart</b>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-image">
                            <div id="morris-donut-chart"></div>
                        </div>
                        <div class="card-action">
                            <b>Donut Chart Example</b>
                        </div>
                    </div>
                </div>

            </div>--%>



            <%--<div class="row">
                <div class="col-md-12"></div>
            </div>
            <!-- /. ROW  -->


            <div class="row">
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">
                            <b>Tasks Panel</b>
                        </div>
                        <div class="card-image">
                            <div class="collection">
                                <a href="#!" class="collection-item">Red<span
                                        class="new badge red" data-badge-caption="red">4</span></a> <a
                                    href="#!" class="collection-item">Blue<span
                                    class="new badge blue" data-badge-caption="blue">4</span></a> <a
                                    href="#!" class="collection-item"><span class="badge">1</span>Alan</a>
                                <a href="#!" class="collection-item"><span
                                        class="new badge">4</span>Alan</a> <a href="#!"
                                                                              class="collection-item">Alan<span
                                    class="new badge blue"
                                    data-badge-caption="blue">4</span></a> <a href="#!"
                                                                              class="collection-item"><span
                                    class="badge">14</span>Alan</a>
                                <a href="#!" class="collection-item">Custom Badge Captions<span
                                        class="new badge" data-badge-caption="custom caption">4</span></a>
                                <a href="#!" class="collection-item">Custom Badge Captions<span
                                        class="badge" data-badge-caption="custom caption">4</span></a>
                            </div>
                        </div>

                    </div>

                </div>
                <div class="col-md-8 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="card-action">
                            <b>User List</b>
                        </div>
                        <div class="card-image">
                            <ul class="collection">
                                <li class="collection-item avatar"><i
                                        class="material-icons circle green">insert_chart</i> <span
                                        class="title">Title</span>
                                    <p>
                                        First Line <br> Second Line
                                    </p> <a href="#!" class="secondary-content"><i
                                            class="material-icons">grade</i></a></li>
                                <li class="collection-item avatar"><i
                                        class="material-icons circle">folder</i> <span class="title">Title</span>
                                    <p>
                                        First Line <br> Second Line
                                    </p> <a href="#!" class="secondary-content"><i
                                            class="material-icons">grade</i></a></li>
                                <li class="collection-item avatar"><i
                                        class="material-icons circle green">insert_chart</i> <span
                                        class="title">Title</span>
                                    <p>
                                        First Line <br> Second Line
                                    </p> <a href="#!" class="secondary-content"><i
                                            class="material-icons">grade</i></a></li>
                                <li class="collection-item avatar"><i
                                        class="material-icons circle red">play_arrow</i> <span
                                        class="title">Title</span>
                                    <p>
                                        First Line <br> Second Line
                                    </p> <a href="#!" class="secondary-content"><i
                                            class="material-icons">grade</i></a></li>
                            </ul>
                        </div>
                    </div>


                </div>
            </div>
            <!-- /. ROW  -->
            <div class="fixed-action-btn horizontal click-to-toggle">
                <a class="btn-floating btn-large red"> <i
                        class="material-icons">menu</i>
                </a>
                <ul>
                    <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a></li>
                    <li><a class="btn-floating yellow darken-1"><i
                            class="material-icons">format_quote</i></a></li>
                    <li><a class="btn-floating green"><i
                            class="material-icons">publish</i></a></li>
                    <li><a class="btn-floating blue"><i
                            class="material-icons">attach_file</i></a></li>
                </ul>
            </div>--%>

            <footer style="text-align:center;">
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
