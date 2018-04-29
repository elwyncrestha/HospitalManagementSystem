<%-- 
    Document   : editService
    Created on : Apr 29, 2018, 2:40:32 PM
    Author     : elwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>

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
                                <h3>Nurses</h3>
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
                                        <h2>Edit Service <small>Choose information from table below</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <br />
                                        <form action="${cp}/admin/service/edit" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="service-id">Service Id <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="serviceId" id="service-id" required="required" class="form-control col-md-7 col-xs-12" value="${EditServiceDetails.serviceId}" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="service-name">Service Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="serviceName" id="service-name" required="required" class="form-control col-md-7 col-xs-12" value="${EditServiceDetails.serviceName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="service-start-time">Service Start Time <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="time" id="service-start-time" name="serviceStartTime" required="required" class="form-control col-md-7 col-xs-12" value="${EditServiceDetails.serviceStartTime}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="service-end-time">Service End Time <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="time" id="service-end-time" name="serviceEndTime" required="required" class="form-control col-md-7 col-xs-12" value="${EditServiceDetails.serviceEndTime}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="service-cost">Service Cost <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="serviceCost" id="service-cost" required="required" class="form-control col-md-7 col-xs-12" value="${EditServiceDetails.serviceCost}">
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                <a class="btn btn-primary" href="${cp}/admin/dashboard">Cancel</a>
                                                <input class="btn btn-primary" type="reset" value="Reset">
                                                <input type="submit" class="btn btn-success" value="Submit">
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Edit Service <small>Available Informations</small></h2>
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
                                                <th>Service Id</th>
                                                <th>Service Name</th>
                                                <th>Service Duration</th>
                                                <th>Service Cost</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                            </tr>
                                        </thead>


                                        <tbody>
                                            <c:forEach items="${ServiceDetails}" var="service">
                                                <tr>
                                                    <td>${service.serviceId}</td>
                                                    <td>${service.serviceName}</td>
                                                    <td>${service.serviceStartTime} - ${service.serviceEndTime}</td>
                                                    <td>${service.serviceCost}</td>
                                                    <td><a href="${cp}/admin/service/edit/${service.serviceId}">Edit</a></td>
                                                    <td><a href="${cp}/admin/service/delete/${service.serviceId}">Delete</a></td>
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
