<%--
  Created by IntelliJ IDEA.
  User: 39805
  Date: 2017/9/3
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title></title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>


    <!-- Bootstrap core CSS     -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Animation library for notifications   -->
    <link href="../assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="../assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../assets/css/demo.css" rel="stylesheet"/>

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="../assets/css/themify-icons.css" rel="stylesheet">
    <link href="../assets/css/model.css" rel="stylesheet">

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-background-color="white" data-active-color="danger">

        <!--
            Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
            Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
        -->

        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    数据统计系统
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="../index.jsp">
                        <i class="ti-home"></i>
                        <p>首页</p>
                    </a>
                </li>
                <li>
                    <a href="users.jsp">
                        <i class="ti-user"></i>
                        <p>用户管理</p>
                    </a>
                </li>
                <li>
                    <a href="/model/selectModel.do">
                        <i class="ti-view-list-alt"></i>
                        <p>模板管理</p>
                    </a>
                </li>
                <li>
                    <a href="stat.html">
                        <i class="ti-panel"></i>
                        <p>统计管理</p>
                    </a>
                </li>
                <li class="active">
                    <a href="userdata.html">
                        <i class="ti-id-badge"></i>
                        <p>个人资料</p>
                    </a>
                </li>
                <li>
                    <a href="instat.html">
                        <i class="ti-bar-chart"></i>
                        <p>参与统计</p>
                    </a>
                </li>
                <li>
                    <a href="notice.html">
                        <i class="ti-bell"></i>
                        <p>所有提醒</p>
                    </a>
                </li>
                <li class="active-pro">
                    <a href="#">
                        <i class="ti-export"></i>
                        <p>升级至PRO</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">User Profile</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
                                <p>管理员</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-bell"></i>
                                <p class="notification">3</p>
                                <p>条提醒</p>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Another notification</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="ti-settings"></i>
                                <p>设置</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <form action="statModel.do?modelId=${model.modelId}" method="post" id="sys_stat">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">

                            <div class="card">
                                <div class="header">
                                    <h4 class="title">表格信息</h4>
                                </div>
                                <div class="content">
                                    <ul class="list-unstyled team-members">
                                        <li>
                                            <%--<div class="row">
                                                <div class="col-xs-3">
                                                    <div class="avatar">
                                                        &lt;%&ndash;<img src="assets/img/faces/face-0.jpg" alt="Circle Image"
                                                             class="img-circle img-no-padding img-responsive">&ndash;%&gt;

                                                            编号：
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                 ${model.modelId}
                                                    &lt;%&ndash;<br/>
                                                    <span class="text-muted"><small>Offline</small></span>&ndash;%&gt;
                                                </div>

                                                <div class="col-xs-3 text-right">
                                                    <btn class="btn btn-sm btn-success btn-icon"><i
                                                            class="fa fa-envelope"></i></btn>
                                                </div>
                                            </div>--%>
                                            编号：${model.modelId}
                                        </li>
                                        <li>
                                            <%--<div class="row">
                                                <div class="col-xs-3">
                                                    <div class="avatar">
                                                        &lt;%&ndash;<img src="assets/img/faces/face-1.jpg" alt="Circle Image"
                                                             class="img-circle img-no-padding img-responsive">&ndash;%&gt;
                                                            创建人员：
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    ${sysuser.userName}
                                                   &lt;%&ndash; Creative Tim
                                                    <br/>
                                                    <span class="text-success"><small>Available</small></span>&ndash;%&gt;
                                                </div>

                                                <div class="col-xs-3 text-right">
                                                    <btn class="btn btn-sm btn-success btn-icon"><i
                                                            class="fa fa-envelope"></i></btn>
                                                </div>
                                            </div>--%>
                                            发布人员：${sysuser.userName}
                                        </li>
                                        <li>
                                            <%--<div class="row">
                                                <div class="col-xs-3">
                                                    <div class="avatar">
                                                       &lt;%&ndash; <img src="assets/img/faces/face-3.jpg" alt="Circle Image"
                                                             class="img-circle img-no-padding img-responsive">&ndash;%&gt;
                                                        发起内容：
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    ${modelName}
                                                    &lt;%&ndash;Flume
                                                    <br/>
                                                    <span class="text-danger"><small>Busy</small></span>&ndash;%&gt;
                                                </div>

                                                <div class="col-xs-3 text-right">
                                                    <btn class="btn btn-sm btn-success btn-icon"><i
                                                            class="fa fa-envelope"></i></btn>
                                                </div>
                                            </div>--%>
                                            表格名称：<input value="${modelName}" name="temp">
                                        </li>
                                        <li>创建日期：<fmt:formatDate value="${m.createtime}" pattern="yyyy-MM-dd"/></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-7">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">人员信息</h4>
                                </div>
                                <div class="content">
                                    <div class="row">

                                        <%--<div class="col-md-3">
                                            <div class="form-group">
                                                <label><input type="checkbox" id="checkAll" onclick="swapCheck()"/>全选</label>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>姓名</label>
                                            </div>
                                        </div>

                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">部门</label>
                                            </div>
                                        </div>
                                    </div>

                                    <form id="former" action="" method="post">
                                      <c:forEach items="${users}" var="temp" varStatus="t">
                                        <div class="row">

                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label><input id="a" type="checkbox" name="subBox"
                                                                  value="${temp.userId}"/></label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>${temp.userName}</label>

                                                </div>
                                            </div>

                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">${temp.dep}</label>

                                                </div>
                                            </div>
                                        </div>
                                                                                                                                        M
                                      </c:forEach>--%>

                                        <table class="table table-hover" border="1" cellspacing="0">
                                            <thead>
                                            <tr>
                                                <th style="text-align:center"><input type="checkbox" id="checkAll"
                                                                                     onclick="swapCheck()"/>全选
                                                </th>
                                                <th style="text-align:center">姓名</th>
                                                <th style="text-align:center">部门</th>
                                            </tr>

                                            </thead>
                                            <%--   //  <form action="statModel.do?modelId=${model.modelId}" method="post" id="sys_stat">--%>
                                            <tbody>
                                            <c:forEach items="${users}" var="temp" varStatus="t">
                                                <tr align="center">
                                                    <td><input id="a" type="checkbox" name="subBox"
                                                               value="${temp.userId}"/></td>
                                                    <td>${temp.userName}</td>
                                                    <td>${temp.dep}</td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                            <%-- </form>--%>
                                        </table>


                                        <div class="row" style="display: none">
                                            <div class="col-md-3">
                                                <input id="userId" name="userId" type="text" class="/"
                                                       style="display: none"
                                                       placeholder="userId" value="0000">

                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-info btn-fill btn-wd" id="act">发布
                                            </button>
                                        </div>
                                        <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>


</div>
</div>
</div>


<footer class="footer">
    <div class="container-fluid">
        <nav class="pull-left">
            <ul>

                <li>
                    <a href="#">
                        Creative Tim
                    </a>
                </li>
                <li>
                    <a href="">
                        Blog
                    </a>
                </li>
                <li>
                    <a href="#/license">
                        Licenses
                    </a>
                </li>
            </ul>
        </nav>
        <div class="copyright pull-right">
            Copyright &copy; 2017.Company name All rights reserved.
        </div>
    </div>
</footer>

</div>
</div>


</body>

<!--   Core JS Files   -->
<script src="../assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="../assets/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="../assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="../assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<!---<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>--->

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="../assets/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/js/demo.js"></script>
<script src="../assets/js/model.js"></script>

</html>