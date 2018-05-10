<%-- 
    Document   : hospitalNurse
    Created on : May 9, 2018, 8:36:31 PM
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
            <header class="masthead" style="background-image: url('<c:url value="/resources/images/bannerNurse.jpg"></c:url>')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-10 mx-auto">
                            <div class="site-heading">
                                <h1 class="heading-long">Nurses </h1>
                                <h1 class="heading-short">Nurses</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-10 mx-auto">
                        <div class="post-preview">
                            <h3 class="post-title">
                                See list of available nurses
                            </h3>
                        </div>
                        <div class="post-preview table-responsive">
                            <table class="table table-bordered table-hover table-dark table-condensed">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Gender</th>
                                        <th>Date of Birth</th>
                                        <th>Educational Background</th>
                                        <th>Country</th>
                                    </tr>
                                </thead>


                                <tbody>
                                <c:forEach items="${NurseDetails}" var="nurse">
                                    <tr>
                                        <td>${nurse.nurseId}</td>
                                        <td>${nurse.nurseFirstName} ${nurse.nurseLastName}</td>
                                        <td>${nurse.nurseGender}</td>
                                        <td>${nurse.nurseDOB}</td>
                                        <td>${nurse.nurseEduBG}</td>
                                        <td>${nurse.nurseCountry}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <hr />
                    <!-- Pager -->
                    <div class="clearfix">
                        <a class="btn btn-secondary float-right" href="${pageContext.request.contextPath}/index">Back to home &rarr;</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8 mx-auto">

                </div>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        <jsp:include page="hospitalFooter.jsp"></jsp:include>

        <jsp:include page="hospitalPageFooter.jsp"></jsp:include>
    </body>
</html>
