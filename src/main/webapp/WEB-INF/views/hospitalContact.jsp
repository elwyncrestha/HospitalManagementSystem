<%-- 
    Document   : hospitalContact
    Created on : May 6, 2018, 3:09:03 PM
    Author     : elwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="hospitalPageHeader.jsp"></jsp:include>

            <!---google-script-->
            <script src="https://apis.google.com/js/platform.js" async defer></script>

        </head>
        <body>
            <!-- Navigation -->
        <jsp:include page="hospitalNav.jsp"></jsp:include>

            <!-- Page Header -->
            <header class="masthead" style="background-image: url('<c:url value="/resources/images/contact-bg.jpg"></c:url>')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-10 mx-auto">
                            <div class="page-heading">
                                <h1>Contact Me</h1>
                                <span class="subheading">Have questions? I have answers (maybe).</span>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-4 text-center" style="border: 1px solid #ccc;">
                        <br />
                        <div class="table-responsive">
                            <div class="g-person" data-href="//plus.google.com/u/0/116358070034072397158" data-rel="author"></div>
                        </div>
                        <p>Send me a message or contact me from the address below</p>
                        <hr />
                        <address>
                            <strong>Elvin Shrestha</strong><br />
                            House Number: ###<br />
                            Byawasaye Galli, Ward Number 13<br>
                            Tahachal, Kathmandu<br>
                            Nepal <br />
                            P: +977 9860687788 / +977 9803690091
                        </address>
                        <div class="map-responsive">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3532.5315328877377!2d85.29810741437427!3d27.700870432384946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMjfCsDQyJzAzLjEiTiA4NcKwMTgnMDEuMSJF!5e0!3m2!1sen!2snp!4v1524201378930" width="357" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                        <br />
                    </div>
                    <div class="col-lg-8 col-md-10">
                        <p>Want to get in touch with me? Fill out the form below to send me a message and I will try to get back to you within 24 hours!</p>
                        <form action="${pageContext.request.contextPath}/hospital/contact/add" method="POST">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" name="contactName" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="email" name="contactEmail" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Phone Number</label>
                                <input type="tel" name="contactNumber" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="5" name="contactMessage" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-secondary" id="sendMessageButton" value="Send">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- footer -->
        <jsp:include page="hospitalFooter.jsp"></jsp:include>

            <!-- js -->
        <jsp:include page="hospitalPageFooter.jsp"></jsp:include>


    </body>
</html>
