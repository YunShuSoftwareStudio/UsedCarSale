<%--
  Created by IntelliJ IDEA.
  User: Altman
  Date: 2018-04-28
  Time: 08:21
  首页：经理页面的首页.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>二手汽车销售管理系统 </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <!-- Left menu -->
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="${pageContext.request.contextPath}/jsp/mainAdmin.jsp" class="site_title">
                    <span>汽车销售</span></a>
                </div>

                <div class="clearfix"></div>

                <input id="AAA" type="hidden" v="${emp}">

                <!-- menu profile quick info -->
                <%@include file="userLeft.jsp" %>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <ul class="nav side-menu">
                            <li class="active"><a><i class="fa fa-home"></i> 主页消息 <span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu" style="display: block;">
                                    <li class="current-page"><a
                                            href="${pageContext.request.contextPath}/login/goMain.action?empId=${emp.empId}">欢迎页</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-user"></i> 客户管理
                                <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="${pageContext.request.contextPath}/customer/getAllCustomer.action?empId=${emp.empId}">
                                        客户资料</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-desktop"></i> 销售管理
                                <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="general_elements.html">车辆销售</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-th-list"></i> 库存管理
                                <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="tables.html">库存</a></li>
                                    <li><a href="tables_dynamic.html">采购</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-cny"></i> 财务管理
                                <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="chartjs.html">收款</a></li>
                                    <li><a href="chartjs2.html">付款</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-bar-chart-o"></i>报表管理
                                <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="fixed_sidebar.html">汽车销量</a></li>
                                    <li><a href="fixed_footer.html">员工销量</a></li>
                                    <li><a href="fixed_footer.html">财务状况</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-cog"></i> 系统管理
                                <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="chartjs.html">员工管理</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /sidebar menu -->

            </div>
        </div>
        <!-- /Left menu -->

        <!-- top navigation -->
        <%@include file="userRight.jsp" %>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Form Buttons</h3>
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                                <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Default Buttons </h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <button type="button" class="btn btn-default">Default</button>

                                <button type="button" class="btn btn-primary">Primary</button>

                                <button type="button" class="btn btn-success">Success</button>

                                <button type="button" class="btn btn-info">Info</button>

                                <button type="button" class="btn btn-warning">Warning</button>

                                <button type="button" class="btn btn-danger">Danger</button>

                                <button type="button" class="btn btn-dark">Dark</button>

                                <button type="button" class="btn btn-link">Link</button>
                            </div>
                        </div>


                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Rounded Button</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <button type="button" class="btn btn-round btn-default">Default</button>
                                <button type="button" class="btn btn-round btn-primary">Primary</button>
                                <button type="button" class="btn btn-round btn-success">Success</button>
                                <button type="button" class="btn btn-round btn-info">Info</button>
                                <button type="button" class="btn btn-round btn-warning">Warning</button>
                                <button type="button" class="btn btn-round btn-danger">Danger</button>
                            </div>
                        </div>

                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Button Dropdown</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button" aria-expanded="false">Default <span class="caret"></span>
                                    </button>
                                    <ul role="menu" class="dropdown-menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle btn-sm" type="button" aria-expanded="false">Primary <span class="caret"></span>
                                    </button>
                                    <ul role="menu" class="dropdown-menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-success dropdown-toggle btn-xs" type="button">Success <span class="caret"></span>
                                    </button>
                                    <ul role="menu" class="dropdown-menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                        </div>


                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Split Button Dropdown</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <!-- Split button -->
                                <div class="btn-group">
                                    <button type="button" class="btn btn-danger">Action</button>
                                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Split button -->
                                <div class="btn-group">
                                    <button type="button" class="btn btn-danger">Action</button>
                                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Split button -->
                                <div class="btn-group">
                                    <button type="button" class="btn btn-danger">Action</button>
                                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>


                            </div>
                        </div>


                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Button App Design</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p>Add the class <code>.btn .btn-app</code> tag</p>
                                <a class="btn btn-app">
                                    <i class="fa fa-edit"></i> Edit
                                </a>
                                <a class="btn btn-app">
                                    <i class="fa fa-play"></i> Play
                                </a>
                                <a class="btn btn-app">
                                    <i class="fa fa-pause"></i> Pause
                                </a>
                                <a class="btn btn-app">
                                    <i class="fa fa-save"></i> Save
                                </a>
                                <a class="btn btn-app">
                                    <span class="badge bg-red">6</span>
                                    <i class="fa fa-bullhorn"></i> Notifications
                                </a>
                                <a class="btn btn-app">
                                    <i class="fa fa-repeat"></i> Repeat
                                </a>
                                <a class="btn btn-app">
                                    <span class="badge bg-green">211</span>
                                    <i class="fa fa-users"></i> Users
                                </a>
                                <a class="btn btn-app">
                                    <span class="badge bg-orange">32</span>
                                    <i class="fa fa-inbox"></i> Orders
                                </a>
                                <a class="btn btn-app">
                                    <span class="badge bg-orange">12</span>
                                    <i class="fa fa-envelope"></i> Inbox
                                </a>
                                <a class="btn btn-app">
                                    <span class="badge bg-blue">102</span>
                                    <i class="fa fa-heart-o"></i> Likes
                                </a>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-6">

                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Button Sizes</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="buttons">
                                    <!-- Standard button -->
                                    <button type="button" class="btn btn-default btn-lg">Large Button</button>
                                    <button type="button" class="btn btn-default btn-sm">Medium Button</button>
                                    <button type="button" class="btn btn-default btn-xs">Small Button</button>
                                    <br>

                                    <button type="button" class="btn btn-success btn-lg">Large Button</button>
                                    <button type="button" class="btn btn-success btn-sm">Medium Button</button>
                                    <button type="button" class="btn btn-success btn-xs">Small Button</button>
                                    <br>

                                    <button type="button" class="btn btn-info btn-lg">Large Button</button>
                                    <button type="button" class="btn btn-info btn-sm">Medium Button</button>
                                    <button type="button" class="btn btn-info btn-xs">Small Button</button>
                                    <br>
                                </div>
                            </div>

                        </div>


                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Button Groups</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="row">
                                    <div class="btn-group">
                                        <button class="btn btn-default" type="button">Left</button>
                                        <button class="btn btn-default" type="button">Middle</button>
                                        <button class="btn btn-default" type="button">Right</button>
                                    </div>
                                    <div class="btn-group  btn-group-sm">
                                        <button class="btn btn-default" type="button">Left</button>
                                        <button class="btn btn-default" type="button">Middle</button>
                                        <button class="btn btn-default" type="button">Right</button>
                                    </div>
                                </div>
                                <p class="text-muted">Vertical button groups</p>
                                <div class="row">
                                    <div class="btn-group-vertical">
                                        <button class="btn btn-default" type="button">Top</button>
                                        <button class="btn btn-default" type="button">Middle</button>
                                        <button class="btn btn-default" type="button">Bottom</button>
                                    </div>
                                </div>
                                <p class="text-muted">Nested button groups</p>
                                <div class="row">
                                    <div class="btn-group">
                                        <button class="btn btn-default" type="button">1</button>
                                        <button class="btn btn-danger" type="button">2</button>
                                        <button class="btn btn-default" type="button">3</button>
                                        <div class="btn-group">
                                            <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button"> Dropdown <span class="caret"></span> </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Dropdown link 1</a>
                                                </li>
                                                <li><a href="#">Dropdown link 2</a>
                                                </li>
                                                <li><a href="#">Dropdown link 3</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <p class="text-muted">Multiple button groups</p>
                                <div class="row">
                                    <div class="btn-toolbar">
                                        <div class="btn-group">
                                            <button class="btn btn-info" type="button">1</button>
                                            <button class="btn btn-info active" type="button">2</button>
                                            <button class="btn btn-info" type="button">3</button>
                                            <button class="btn btn-info" type="button">4</button>
                                        </div>
                                        <div class="btn-group">
                                            <button class="btn btn-success" type="button">5</button>
                                            <button class="btn btn-success" type="button">6</button>
                                            <button class="btn btn-success" type="button">7</button>
                                        </div>
                                        <div class="btn-group">
                                            <button class="btn btn-warning" type="button">8</button>
                                        </div>
                                    </div>
                                </div>

                                <p class="text-muted">Group Radio</p>
                                <div class="row">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-default">
                                            <input type="radio" name="options" id="option1"> Option 1
                                        </label>
                                        <label class="btn btn-default">
                                            <input type="radio" name="options" id="option2"> Option 2
                                        </label>
                                        <label class="btn btn-default">
                                            <input type="radio" name="options" id="option3"> Option 3
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <%@include file="footer.jsp" %>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="../vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../vendors/fastclick/lib/fastclick.js"></script>

<!-- Custom Theme Scripts -->
<script src="../build/js/custom.min.js"></script>
</body>

</html>
