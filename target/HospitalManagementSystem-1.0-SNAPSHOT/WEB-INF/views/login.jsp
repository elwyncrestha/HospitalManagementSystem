<%-- 
    Document   : login
    Created on : May 1, 2018, 2:55:32 PM
    Author     : elwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="pageheader.jsp"></jsp:include>
        </head>

        <body class="login">
            <div>
                <a class="hiddenanchor" id="signup"></a>
                <a class="hiddenanchor" id="signin"></a>

                <div class="login_wrapper">
                    <div class="animate form login_form">
                        <section class="login_content">
                            <form action="${pageContext.request.contextPath}/login" method="POST">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <h1>HMS Login</h1>
                            
                            <span style="color: green;"><h4>${LogoutMessage}</h4></span>
                            <span style="color: red;"><h4>${LoginMessage}</h4></span>

                            <div>
                                <input type="text" class="form-control" name="username" placeholder="Username" required="" />
                            </div>
                            <div>
                                <input type="password" class="form-control" name="password" placeholder="Password" required="" />
                            </div>
                            <div>
                                <input type="submit" class="btn btn-default submit" value="Log in">
                                <a class="reset_pass" href="${pageContext.request.contextPath}/user/reset">Lost your password?</a>
                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                <p class="change_link">New to site?
                                    <a href="#signup" class="to_register"> Create Account </a>
                                </p>
                                <p class="change_link">Want new password?
                                    <a href="${pageContext.request.contextPath}/user/changepassword" class="to_register"> Change password </a>
                                </p>

                                <div class="clearfix"></div>
                                <br />

                                <div>
                                    <h1><i class="fa fa-medkit"></i> Hospital Management System</h1>
                                    <p>© 2018 All Rights Reserved</p>
                                </div>
                            </div>
                        </form>
                    </section>
                </div>

                <div id="register" class="animate form registration_form">
                    <section class="login_content">
                        <form action="${pageContext.request.contextPath}/register" method="post">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <h1>Create Account</h1>
                            <p>Note: <span class="small">You'll not be able to login until admin activates your account</span></p>
                            <div>
                                <input type="text" name="username" class="form-control" placeholder="Username" required="" />
                            </div>
                            <div>
                                <input type="email" name="email" class="form-control" placeholder="Email" required="" />
                            </div>
                            <div>
                                <input type="password" name="password" class="form-control" placeholder="Password" required="" />
                            </div>
                            <div>
                                <input type="submit" class="btn btn-default submit" value="Submit">
                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                <p class="change_link">Already a member ?
                                    <a href="#signin" class="to_register"> Log in </a>
                                </p>

                                <div class="clearfix"></div>
                                <br />

                                <div>
                                    <h1><i class="fa fa-medkit"></i> Hospital Management System</h1>
                                    <p>© 2018 All Rights Reserved</p>
                                </div>
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </body>
</html>
