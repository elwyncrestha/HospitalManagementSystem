<%-- 
    Document   : displayPatient
    Created on : Apr 30, 2018, 7:38:27 PM
    Author     : elwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="pageheader.jsp"></jsp:include>
    </head>

    <body class="nav-md">
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
                        <div class="page-title">
                            <div class="title_left">
                                <h3>Patients</h3>
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
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Displaying Patients <small>Available Informations</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <table id="datatable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Name</th>
                                                    <th>Gender</th>
                                                    <th>Date of Birth</th>
                                                    <th>Health Problem</th>
                                                    <th>Country</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <c:forEach items="${PatientDetails}" var="pat">
                                                    <tr>
                                                        <td>${pat.patientId}</td>
                                                        <td>${pat.patientFirstName} ${pat.patientLastName}</td>
                                                        <td>${pat.patientGender}</td>
                                                        <td>${pat.patientDOB}</td>
                                                        <td>${pat.healthProblem}</td>
                                                        <td>${pat.patientCountry}</td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
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