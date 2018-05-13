<%-- 
    Document   : leftnav
    Created on : Apr 27, 2018, 5:11:39 PM
    Author     : elwyn
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>

    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="${cp}/admin/dashboard" class="site_title"><i class="fa fa-medkit"></i> <span>H M S</span></a>
    </div>

    <div class="clearfix"></div>

    <!-- menu profile quick info -->
    <div class="profile clearfix">
        <div class="profile_pic">
            <img src="<c:url value = "/resources/images/img.png"></c:url>" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Welcome,</span>
                <h2>Elvin Shrestha</h2>
            </div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                    <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="${cp}/admin/dashboard">Admin Home</a></li>
                    </ul>
                </li>
                <li><a><i class="fa fa-user-md"></i> Doctors <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="${cp}/admin/doctor/add">Add Doctor</a></li>
                        <li><a href="${cp}/admin/doctor/display">Display Doctors</a></li>
                        <li><a href="${cp}/admin/doctor/edit">Edit Doctors</a></li>
                    </ul>
                </li>
                <li><a><i class="fa fa-stethoscope"></i> Nurses <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="${cp}/admin/nurse/add">Add Nurse</a></li>
                        <li><a href="${cp}/admin/nurse/display">Display Nurses</a></li>
                        <li><a href="${cp}/admin/nurse/edit">Edit Nurses</a></li>
                    </ul>
                </li>
                <li><a><i class="fa fa-wheelchair"></i> Patients <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="${cp}/admin/patient/add">Add Patient</a></li>
                        <li><a href="${cp}/admin/patient/display">Display Patients</a></li>
                        <li><a href="${cp}/admin/patient/edit">Edit Patients</a></li>
                    </ul>
                </li>
                <li><a><i class="fa fa-hospital-o"></i> Departments <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="${cp}/admin/department/add">Add Department</a></li>
                        <li><a href="${cp}/admin/department/display">Display Departments</a></li>
                        <li><a href="${cp}/admin/department/edit">Edit Departments</a></li>
                    </ul>
                </li>
                <li><a><i class="fa fa-ambulance"></i> Services <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="${cp}/admin/service/add">Add Service</a></li>
                        <li><a href="${cp}/admin/service/display">Display Services</a></li>
                        <li><a href="${cp}/admin/service/edit">Edit Services</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="menu_section">
            <h3>Extra Activities</h3>
            <ul class="nav side-menu">
                <li><a><i class="fa fa-calendar"></i> Events <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="${cp}/admin/event/display">Display Events</a></li>
                    </ul>
                </li>
<!--                <li><a><i class="fa fa-users"></i> Users <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="${cp}/admin/user/display">Display Users</a></li>
                        <li><a href="${cp}/admin/user/edit">Edit Users</a></li>
                    </ul>
                </li>-->
                <li><a><i class="fa fa-sitemap"></i> Others <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a>Contacts<span class="fa fa-chevron-down"></span></a>
                            <ul class="nav child_menu">
                                <li class="sub_menu"><a href="${cp}/admin/contact/display">Display Contacts</a>
                                </li>
                                <li class="sub_menu"><a href="${cp}/admin/contact/delete">Delete Contacts</a>
                                </li>
                            </ul>
                        </li>

<!--                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                            <ul class="nav child_menu">
                                <li class="sub_menu"><a href="level2.html">Level Two</a>
                                </li>
                                <li class="sub_menu"><a href="#level2_1">Level Two</a>
                                </li>
                                <li class="sub_menu"><a href="#level2_2">Level Two</a>
                                </li>
                            </ul>
                        </li>

                        <li><a href="#level1_2">Level One</a>
                        </li>-->
                </li>
            </ul>
            </li>                  
            </ul>
        </div>

    </div>
    <!-- /sidebar menu -->

    <!-- /menu footer buttons -->
    <div class="sidebar-footer hidden-small">
        <a data-toggle="tooltip" data-placement="top" title="Settings">
            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="FullScreen">
            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Lock">
            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
        </a>
        <a data-toggle="tooltip" data-placement="top" title="Logout" href="${pageContext.request.contextPath}/logout">
            <span class="glyphicon glyphicon-off" aria-hidden="true" style="color:orange;"></span>
        </a>
    </div>
    <!-- /menu footer buttons -->
</div>
