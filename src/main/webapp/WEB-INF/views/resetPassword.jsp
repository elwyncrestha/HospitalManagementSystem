<%-- 
    Document   : resetPassword
    Created on : May 4, 2018, 2:56:19 PM
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
                <div class="login_wrapper">
                    <div class="animate form login_form">
                        <section class="login_content">
                            <form action="${pageContext.request.contextPath}/user/reset" method="POST">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <h1>Reset Password</h1>
                            
                            <span style="color: red;"><h4>${ResetMessage}</h4></span>

                            <div>
                                <input type="text" class="form-control" name="username" placeholder="Username" required="" />
                            </div>
                            <div>
                                <input type="email" class="form-control" name="email" placeholder="Email" required="" />
                            </div>
                            <div>
                                <input type="submit" class="btn btn-default submit" value="Reset">
                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                <p class="change_link">Know your password?
                                    <a href="${pageContext.request.contextPath}/login" class="to_register"> Login </a>
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
