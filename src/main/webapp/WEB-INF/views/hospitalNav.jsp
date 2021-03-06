<%-- 
    Document   : hospitalNav
    Created on : May 6, 2018, 2:58:30 PM
    Author     : elwyn
--%>

<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand navbar-brand-long" href="${pageContext.request.contextPath}/index">Hospital Management System</a>
        <a class="navbar-brand navbar-brand-short" href="${pageContext.request.contextPath}/index">HMS</a>
        
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropbtn">CATEGORIES</a>
                    <div class="dropdown-content">
                        <a href="${pageContext.request.contextPath}/hospital/doctor/display">Doctors</a>
                        <a href="${pageContext.request.contextPath}/hospital/nurse/display">Nurse</a>
                        <a href="${pageContext.request.contextPath}/hospital/department/display">Department</a>
                        <a href="${pageContext.request.contextPath}/hospital/service/display">Service</a>
                        <a href="${pageContext.request.contextPath}/admin/dashboard">Admin Login</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/hospital/contact/display">CONTACT</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
