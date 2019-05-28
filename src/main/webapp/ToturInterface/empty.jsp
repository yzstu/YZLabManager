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
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Yangtze university</title>

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
            <a class="navbar-brand waves-effect waves-dark" href="index.html"><i
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
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                关于长江大学
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">关于长江大学</a></li>
            </ol>

        </div>
        <div id="page-inner">

            <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <div class="card-action">关于长江大学</div>
                        <div class="card-content">
                            <p> 长江大学（Yangtze University），简称“长大”，位于长江中游的历史文化名城—-湖北省荆州市，
                                是湖北省属高校中规模最大、学科门类较全的综合性大学，为湖北省重点建设的骨干高校，获批湖北省“双
                                一流”建设高校，是国家“中西部高校基础能力建设工程”入选高校，教育部卓越工程师教育培养计划、
                                卓越农林人才教育培养计划、卓越医生教育培养计划项目试点高校，湖北省人民政府与中国石油天然气集团
                                公司、中国石油化工集团公司、中国海洋石油总公司与国家农业部共建高校，湖北省教育厅与荆州市共建高
                                校，全国深化创新创业教育改革示范高校。
                                长江大学办学历史可溯源至1950年创办的北京石油工业专科学校，1978年改名为江汉石油学院，开始举办
                                普通本科教育，隶属中国石油天然气集团公司。2003年4月，经国家教育部批准，原江汉石油学院、湖北农
                                学院、荆州师范学院、湖北省卫生职工医学院合并组建长江大学。2006年，学校获得博士学位授予权。
                                截至2017年3月，长江大学校园占地面积4742亩，校舍建筑面积90万平方米，固定资产19.7亿元；本校部位
                                于荆州城区、长江大学武汉校区位于武汉市蔡甸区；设有26个二级学院，98个本科专业；有教职工3080人，
                                其中专任教师2159人，教授334人，副教授849人；有博士学位授权一级学科3个，二级学科博士点15个，硕士
                                学位授权一级学科23个，二级学科硕士点128个，硕士专业学位点7个；有全日制普通本专科生33933人，全日
                                制博士、硕士研究生2642人，外国留学生1300余人。</p>
                            <div class="clearBoth">
                                <br/>
                            </div>

                        </div>
                    </div>

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
        <!-- Custom Js -->
        <script src="assets/js/custom-scripts.js"></script>
</body>
</html>
