<%-- 
    Document   : adminHome
    Created on : Apr 27, 2018, 4:39:46 PM
    Author     : elwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="pageheader.jsp">
            <jsp:param name="title" value="Hospital Management System"></jsp:param>
        </jsp:include>

        <!---time-script-->
        <script>
            function startTime() {
                var today = new Date();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                document.getElementById('customTime').innerHTML =
                        h + ":" + m + ":" + s;
                var t = setTimeout(startTime, 500);
            }
            function checkTime(i) {
                if (i < 10) {
                    i = "0" + i;
                }
                ;  // add zero in front of numbers < 10
                return i;
            }
        </script>

    </head>

    <body class="nav-md" onload="startTime()">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <jsp:include page="leftnav.jsp"></jsp:include>
                    </div>

                    <!-- top navigation -->
                    <div class="top_nav">
                    <jsp:include page="topheader.jsp"></jsp:include>
                    </div>
                    <!-- /top navigation -->

                    <!-- page content -->
                    <div class="right_col" role="main">
                        <!-- top tiles -->
                        <div class="row tile_count">
                            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                                <span class="count_top"><i class="fa fa-user-md"></i> Total Doctors</span>
                                <div class="count">${CountDoc}</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-stethoscope"></i> Total Nurses</span>
                            <div class="count">${CountNurse}</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-wheelchair"></i> Total Patients</span>
                            <div class="count">${CountPatient}</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-hospital-o"></i> Total Departments</span>
                            <div class="count">${CountDepartment}</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-ambulance"></i> Total Services</span>
                            <div class="count">${CountService}</div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                            <span class="count_top"><i class="fa fa-clock-o"></i> Current Time</span>
                            <div class="count green" id="customTime"></div>
                        </div>
                    </div>
                    <!-- /top tiles -->

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="dashboard_graph">

                                <div class="row x_title">
                                    <div class="col-md-6">
                                        <h3>Network Activities <small>Graph title sub-title</small></h3>
                                    </div>
                                    <div class="col-md-6">
                                        <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                                            <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                                            <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <div id="chart_plot_01" class="demo-placeholder"></div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12 bg-white">
                                    <div class="x_title">
                                        <h2>Top Campaign Performance</h2>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="col-md-12 col-sm-12 col-xs-6">
                                        <div>
                                            <p>Facebook Campaign</p>
                                            <div class="">
                                                <div class="progress progress_sm" style="width: 76%;">
                                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="80"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <p>Twitter Campaign</p>
                                            <div class="">
                                                <div class="progress progress_sm" style="width: 76%;">
                                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="60"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-6">
                                        <div>
                                            <p>Conventional Media</p>
                                            <div class="">
                                                <div class="progress progress_sm" style="width: 76%;">
                                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="40"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div>
                                            <p>Bill boards</p>
                                            <div class="">
                                                <div class="progress progress_sm" style="width: 76%;">
                                                    <div class="progress-bar bg-green" role="progressbar" data-transitiongoal="50"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="clearfix"></div>
                            </div>
                        </div>

                    </div>
                    <br />

                    <div class="row">


                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="x_panel tile fixed_height_320">
                                <div class="x_title">
                                    <h2>App Versions</h2>
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
                                    <h4>App Usage across versions</h4>
                                    <div class="widget_summary">
                                        <div class="w_left w_25">
                                            <span>0.1.5.2</span>
                                        </div>
                                        <div class="w_center w_55">
                                            <div class="progress">
                                                <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 66%;">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="w_right w_20">
                                            <span>123k</span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="widget_summary">
                                        <div class="w_left w_25">
                                            <span>0.1.5.3</span>
                                        </div>
                                        <div class="w_center w_55">
                                            <div class="progress">
                                                <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="w_right w_20">
                                            <span>53k</span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="widget_summary">
                                        <div class="w_left w_25">
                                            <span>0.1.5.4</span>
                                        </div>
                                        <div class="w_center w_55">
                                            <div class="progress">
                                                <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="w_right w_20">
                                            <span>23k</span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="widget_summary">
                                        <div class="w_left w_25">
                                            <span>0.1.5.5</span>
                                        </div>
                                        <div class="w_center w_55">
                                            <div class="progress">
                                                <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 5%;">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="w_right w_20">
                                            <span>3k</span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="widget_summary">
                                        <div class="w_left w_25">
                                            <span>0.1.5.6</span>
                                        </div>
                                        <div class="w_center w_55">
                                            <div class="progress">
                                                <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 2%;">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="w_right w_20">
                                            <span>1k</span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="x_panel tile fixed_height_320 overflow_hidden">
                                <div class="x_title">
                                    <h2>Device Usage</h2>
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
                                    <table class="" style="width:100%">
                                        <tr>
                                            <th style="width:37%;">
                                                <p>Top 5</p>
                                            </th>
                                            <th>
                                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                                    <p class="">Device</p>
                                                </div>
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                                    <p class="">Progress</p>
                                                </div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>
                                                <canvas class="canvasDoughnut" height="140" width="140" style="margin: 15px 10px 10px 0"></canvas>
                                            </td>
                                            <td>
                                                <table class="tile_info">
                                                    <tr>
                                                        <td>
                                                            <p><i class="fa fa-square blue"></i>IOS </p>
                                                        </td>
                                                        <td>30%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p><i class="fa fa-square green"></i>Android </p>
                                                        </td>
                                                        <td>10%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p><i class="fa fa-square purple"></i>Blackberry </p>
                                                        </td>
                                                        <td>20%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p><i class="fa fa-square aero"></i>Symbian </p>
                                                        </td>
                                                        <td>15%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p><i class="fa fa-square red"></i>Others </p>
                                                        </td>
                                                        <td>30%</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="x_panel tile fixed_height_320">
                                <div class="x_title">
                                    <h2>Quick Settings</h2>
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
                                    <div class="dashboard-widget-content">
                                        <ul class="quick-list">
                                            <li><i class="fa fa-calendar-o"></i><a href="#">Settings</a>
                                            </li>
                                            <li><i class="fa fa-bars"></i><a href="#">Subscription</a>
                                            </li>
                                            <li><i class="fa fa-bar-chart"></i><a href="#">Auto Renewal</a> </li>
                                            <li><i class="fa fa-line-chart"></i><a href="#">Achievements</a>
                                            </li>
                                            <li><i class="fa fa-bar-chart"></i><a href="#">Auto Renewal</a> </li>
                                            <li><i class="fa fa-line-chart"></i><a href="#">Achievements</a>
                                            </li>
                                            <li><i class="fa fa-area-chart"></i><a href="#">Logout</a>
                                            </li>
                                        </ul>

                                        <div class="sidebar-widget">
                                            <h4>Profile Completion</h4>
                                            <canvas width="150" height="80" id="chart_gauge_01" class="" style="width: 160px; height: 100px;"></canvas>
                                            <div class="goal-wrapper">
                                                <span id="gauge-text" class="gauge-value pull-left">0</span>
                                                <span class="gauge-value pull-left">%</span>
                                                <span id="goal-text" class="goal-value pull-right">100%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Recent Activities <small>Sessions</small></h2>
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
                                    <div class="dashboard-widget-content">

                                        <ul class="list-unstyled timeline widget">
                                            <li>
                                                <div class="block">
                                                    <div class="block_content">
                                                        <h2 class="title">
                                                            <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                                        </h2>
                                                        <div class="byline">
                                                            <span>13 hours ago</span> by <a>Jane Smith</a>
                                                        </div>
                                                        <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="block">
                                                    <div class="block_content">
                                                        <h2 class="title">
                                                            <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                                        </h2>
                                                        <div class="byline">
                                                            <span>13 hours ago</span> by <a>Jane Smith</a>
                                                        </div>
                                                        <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="block">
                                                    <div class="block_content">
                                                        <h2 class="title">
                                                            <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                                        </h2>
                                                        <div class="byline">
                                                            <span>13 hours ago</span> by <a>Jane Smith</a>
                                                        </div>
                                                        <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="block">
                                                    <div class="block_content">
                                                        <h2 class="title">
                                                            <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                                        </h2>
                                                        <div class="byline">
                                                            <span>13 hours ago</span> by <a>Jane Smith</a>
                                                        </div>
                                                        <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-8 col-sm-8 col-xs-12">



                            <div class="row">

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Visitors location <small>geo-presentation</small></h2>
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
                                            <div class="dashboard-widget-content">
                                                <div class="col-md-4 hidden-small">
                                                    <h2 class="line_30">125.7k Views from 60 countries</h2>

                                                    <table class="countries_list">
                                                        <tbody>
                                                            <tr>
                                                                <td>United States</td>
                                                                <td class="fs15 fw700 text-right">33%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>France</td>
                                                                <td class="fs15 fw700 text-right">27%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Germany</td>
                                                                <td class="fs15 fw700 text-right">16%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Spain</td>
                                                                <td class="fs15 fw700 text-right">11%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Britain</td>
                                                                <td class="fs15 fw700 text-right">10%</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div id="world-map-gdp" class="col-md-8 col-sm-12 col-xs-12" style="height:230px;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">


                                <!-- Start to do list -->
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>To Do List <small>Sample tasks</small></h2>
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

                                            <div class="">
                                                <ul class="to_do">
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Schedule meeting with new client </p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Create email address for new intern</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Have IT fix the network printer</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Copy backups to offsite location</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Food truck fixie locavors mcsweeney</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Food truck fixie locavors mcsweeney</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Create email address for new intern</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Have IT fix the network printer</p>
                                                    </li>
                                                    <li>
                                                        <p>
                                                            <input type="checkbox" class="flat"> Copy backups to offsite location</p>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End to do list -->

                                <!-- start of weather widget -->
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h2>Current weather <small>Kathmandu</small></h2>
                                            <ul class="nav navbar-right panel_toolbox">
                                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                </li>
                                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                                </li>
                                            </ul>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                            <a href="https://www.accuweather.com/en/np/kathmandu/241809/weather-forecast/241809" class="aw-widget-legal"></a><div id="awcc1524970852581" class="aw-widget-current"  data-locationkey="241809" data-unit="c" data-language="en-us" data-useip="false" data-uid="awcc1524970852581"></div><script type="text/javascript" src="https://oap.accuweather.com/launch.js"></script>
                                        </div>
                                    </div>

                                </div>
                                <!-- end of weather widget -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <jsp:include page="footer.jsp"></jsp:include>
                    <!-- /footer content -->
                </div>
            </div>

        <jsp:include page="pagefooter.jsp"></jsp:include>

    </body>
</html>
