<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>用户注册</title><!-- 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> -->
    <link href="css/normalize.css" rel="stylesheet"/>
    <link href="css/jquery-ui.css" rel="stylesheet"/>
    <link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>
    <style type="text/css">
        body {
            font: normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;
            color: #222;
            background: url(pattern.png);
            overflow-y: scroll;
            padding: 60px 0 0 0;
        }

        #my-form {
            width: 755px;
            margin: 0 auto;
            border: 1px solid #ccc;
            padding: 3em;
            border-radius: 3px;
            box-shadow: 0 0 2px rgba(0, 0, 0, .2);
        }

        #comments {
            width: 350px;
            height: 100px;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>

<body>

<div class="row">

    <div class="eightcol last">

        <!-- Begin Form -->
        <!--  enctype="multipart/form-data" -->
        <form id="my-form" action="registServlet?type=0" method="post">

            <section name="第一步">
                <div><label>姓名:</label><input id="name" name="name" type="text"/></div>
                <div><label>密码:</label><input id="password" name="password" type="password"/></div>

            </section>

            <section name="第二步">
                <div>
                    <label>专业:</label>
                    <label><input type="checkbox" name="point[]" value="electric"/>电气</label>
                    <label><input type="checkbox" name="point[]" value="automation"/>自动化</label>
                    <label><input type="checkbox" name="point[]" value="instrument"/>仪器</label>
                    <label><input type="checkbox" name="point[]" value="communication"/>通信</label>
                    <label><input type="checkbox" name="point[]" value="letterwork"/>信工</label>
                </div>
            </section>

            <section name="第三步">
                <div><label>手机号:</label><input type="text" name="tel"/></div>
                <div><label>导师:</label>
                    <select id="totur" name="totur">
                        <option value="default">&ndash; 选择导师 &ndash;</option>
                        <option value="10001">李修权</option>
                        <option value="10002">杜勇</option>
                        <option value="10003">唐桃波</option>
                        <option value="10004">杨友平</option>
                        <option value="10005">高玉良</option>
                        <option value="10006">常秀莲</option>
                        <option value="10007">聂汉平</option>
                    </select>
                </div>
                <div><label>班级:</label><input type="text" name="class"/></div>
                <div><label>备注:</label><textarea id="comments" name="comments"></textarea></div>
            </section>

            <div>
                <hr/>
            </div>

            <div>
                <button type="submit">提交</button>
                <button id="reset" type="button">重置</button>
                ${empty msg?"":msg}
                <%request.setAttribute("msg", null); %>
            </div>

        </form>

        <!-- End Form -->

    </div>

</div>


<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.idealforms.js"></script>
<script type="text/javascript">
    var options = {

        onFail: function () {
            alert($myform.getInvalid().length + ' 处仍需要填写！')
        },

        inputs: {
            'password': {
                filters: 'required pass',
            },
            'account': {
                filters: 'required account',
                data: {
                    //ajax: { url:'validate.php' }
                }
            },
            'file': {
                filters: 'extension',
                data: {extension: ['jpg']}
            },
            'comments': {
                filters: 'min max',
                data: {min: 50, max: 200}
            },
            'states': {
                filters: 'exclude',
                data: {exclude: ['default']},
                errors: {
                    exclude: '选择地区.'
                }
            },
            'langs[]': {
                filters: 'min max',
                data: {min: 2, max: 3},
                errors: {
                    min: 'Check at least <strong>2</strong> options.',
                    max: 'No more than <strong>3</strong> options allowed.'
                }
            }
        }

    };

    var $myform = $('#my-form').idealforms(options).data('idealforms');

    $('#reset').click(function () {
        $myform.reset().fresh().focusFirst()
    });

    $myform.focusFirst();
</script>
<div style="text-align:center;">
</div>
</body>
</html>
