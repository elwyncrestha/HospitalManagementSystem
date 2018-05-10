<%-- 
    Document   : hospitalHome
    Created on : Apr 25, 2018, 10:35:34 PM
    Author     : elwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
    <!DOCTYPE html>
    <html>
        <head>
        <jsp:include page="hospitalPageHeader.jsp"></jsp:include>
        </head>
        <body>
            <!-- Navigation -->
        <jsp:include page="hospitalNav.jsp"></jsp:include>

            <!-- Page Header -->
            <header class="masthead" style="background-image: url('<c:url value="/resources/images/bannerHospital.jpg"></c:url>')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-10 mx-auto">
                            <div class="site-heading">
                                <h1 class="heading-long">Hospital Management System </h1>
                                <h1 class="heading-short">HMS</h1>
                                <span class="subheading">A web application by Elvin Shrestha</span>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <div class="post-preview">
                            <a href="${pageContext.request.contextPath}/hospital/doctor/display">
                            <h2 class="post-title">
                                See list of available doctors
                            </h2>
                            <h3 class="post-subtitle">
                                For some people small, beautiful events are what life is all about.
                            </h3>
                        </a>
                    </div>
                    <hr>
                    <div class="post-preview">
                        <a href="${pageContext.request.contextPath}/hospital/nurse/display">
                            <h2 class="post-title">
                                See list of available nurses
                            </h2>
                            <h3 class="post-subtitle">
                                To do what nobody else will do, in a way that nobody else can, in spite of all we go through; is to be a nurse.
                            </h3>
                        </a>
                    </div>
                    <hr>
                    <div class="post-preview">
                        <a href="${pageContext.request.contextPath}/hospital/service/display">
                            <h2 class="post-title">
                                Listing of services.
                            </h2>
                            <h3 class="post-subtitle">
                                The best way to find yourself is to lose yourself in the service of others.
                            </h3>
                        </a>
                    </div>
                    <hr>
                    <div class="post-preview">
                        <a href="${pageContext.request.contextPath}/hospital/department/display">
                            <h2 class="post-title">
                                See list of departments
                            </h2>
                        </a>
                    </div>
                    <hr>
                    <!-- Pager -->
                    <div class="clearfix">
                        <a class="btn btn-secondary float-right" href="#">Older Posts &rarr;</a>
                    </div>
                </div>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        <jsp:include page="hospitalFooter.jsp"></jsp:include>

        <jsp:include page="hospitalPageFooter.jsp"></jsp:include>
    </body>
</html>
