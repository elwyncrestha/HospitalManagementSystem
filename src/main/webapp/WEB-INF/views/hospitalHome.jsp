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
            <header class="masthead" style="background-image: url('<c:url value="/resources/images/hospital_night.jpg"></c:url>')">
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
                            <a href="post.html">
                                <h2 class="post-title">
                                    Man must explore, and this is exploration at its greatest
                                </h2>
                                <h3 class="post-subtitle">
                                    Problems look mighty small from 150 miles up
                                </h3>
                            </a>
                            <p class="post-meta">Posted by
                                <a href="#">Start Bootstrap</a>
                                on September 24, 2017</p>
                        </div>
                        <hr>
                        <div class="post-preview">
                            <a href="post.html">
                                <h2 class="post-title">
                                    I believe every human has a finite number of heartbeats. I don't intend to waste any of mine.
                                </h2>
                            </a>
                            <p class="post-meta">Posted by
                                <a href="#">Start Bootstrap</a>
                                on September 18, 2017</p>
                        </div>
                        <hr>
                        <div class="post-preview">
                            <a href="post.html">
                                <h2 class="post-title">
                                    Science has not yet mastered prophecy
                                </h2>
                                <h3 class="post-subtitle">
                                    We predict too much for the next year and yet far too little for the next ten.
                                </h3>
                            </a>
                            <p class="post-meta">Posted by
                                <a href="#">Start Bootstrap</a>
                                on August 24, 2017</p>
                        </div>
                        <hr>
                        <div class="post-preview">
                            <a href="post.html">
                                <h2 class="post-title">
                                    Failure is not an option
                                </h2>
                                <h3 class="post-subtitle">
                                    Many say exploration is part of our destiny, but it’s actually our duty to future generations.
                                </h3>
                            </a>
                            <p class="post-meta">Posted by
                                <a href="#">Start Bootstrap</a>
                                on July 8, 2017</p>
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
