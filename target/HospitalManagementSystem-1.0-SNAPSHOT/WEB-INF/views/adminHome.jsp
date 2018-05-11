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

                    <hr />
                    
                    <div class="row">
                        <!-- introduction start -->
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Introduction <small>Hospital Management System</small></h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <div class="text-center">
                                        <h1>Hospital Management System</h1>
                                        <hr />
                                        <p style="font-size: 18px; color:#777;" class="text-justify">
                                            This system contains information of doctors, nurses, patients, departments, services, events and contacts. Doctor, nurse, patient, department and service can be added, displayed, edited and deleted. Events is shown as the embedded widget of Google Calendar. Contacts is filled up through the form shown in the front end design of this management system. Contact is filled into database, also emails are send to the contactor and also to the responsive authority (currently elwyncrestha@gmail.com). In addition, some other widgets are embedded directly using iframe tag.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- introduction end -->
                    </div>
                    
                    <hr />
                    
                    <div class="row">
                        <!-- start of weather widget -->
                        <div class="col-md-12 col-sm-12 col-xs-12">
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
                <!-- /page content -->

                <!-- footer content -->
                <jsp:include page="footer.jsp"></jsp:include>
                    <!-- /footer content -->
                </div>
            </div>

        <jsp:include page="pagefooter.jsp"></jsp:include>

    </body>
</html>
