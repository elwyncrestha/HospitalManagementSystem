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
                    <!--              <div class="dropdown">-->
                    <a class="nav-link dropbtn">CATEGORIES</a>
                    <div class="dropdown-content">
                        <a href="#">Doctors</a>
                        <a href="#">Nurse</a>
                        <a href="#">Patient</a>
                        <a href="#">Department</a>
                        <a href="#">Service</a>
                        <a href="${pageContext.request.contextPath}/admin/dashboard">Admin Login</a>
                    </div>
                    <!--				</div>-->
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">ABOUT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">EVENTS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/hospital/contact/display">CONTACT</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
