<%-- 
    Document   : editDoctor
    Created on : Apr 28, 2018, 10:45:55 AM
    Author     : elwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>

    <!DOCTYPE html>
    <html lang="en">
        <head>
        <jsp:include page="pageheader.jsp">
            <jsp:param name="title" value="Add Doctor"></jsp:param>
        </jsp:include>
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
                                <h3>Doctors</h3>
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
                                        <h2>Edit Doctor <small>Choose information from table below</small></h2>
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
                                        <form action="${cp}/admin/doctor/edit" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="doctorId">ID <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="doctorId" id="doctorId" required="required" class="form-control col-md-7 col-xs-12" readonly value="${EditDoctorDetails.doctorId}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="doctorFirstName" id="first-name" required="required" class="form-control col-md-7 col-xs-12" value="${EditDoctorDetails.doctorFirstName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="doctorLastName" required="required" class="form-control col-md-7 col-xs-12" value="${EditDoctorDetails.doctorLastName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender <span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                M:<input type="radio" class="flat" name="doctorGender" id="genderM" value="M" <c:if test="${EditDoctorDetails.doctorGender.equals('M')}">checked=""</c:if> />
                                                &nbsp;F:<input type="radio" class="flat" name="doctorGender" id="genderF" value="F" <c:if test="${EditDoctorDetails.doctorGender.equals('F')}">checked=""</c:if> />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="birthday" name="doctorDOB" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text" placeholder="yyyy-MM-dd" value="${EditDoctorDetails.doctorDOB}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="educational-background">Educational background <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="educational-background" name="doctorEduBG" required="required" class="form-control col-md-7 col-xs-12" value="${EditDoctorDetails.doctorEduBG}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="country">Country <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select class="form-control" name="doctorCountry">
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Afghanistan')}">selected</c:if>>Afghanistan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Åland Islands')}">selected</c:if>>Åland Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Albania')}">selected</c:if>>Albania</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Algeria')}">selected</c:if>>Algeria</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('American Samoa')}">selected</c:if>>American Samoa</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Andorra')}">selected</c:if>>Andorra</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Angola')}">selected</c:if>>Angola</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Anguilla')}">selected</c:if>>Anguilla</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Antarctica')}">selected</c:if>>Antarctica</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Antigua and Barbuda')}">selected</c:if>>Antigua and Barbuda</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Argentina')}">selected</c:if>>Argentina</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Armenia')}">selected</c:if>>Armenia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Aruba')}">selected</c:if>>Aruba</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Australia')}">selected</c:if>>Australia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Austria')}">selected</c:if>>Austria</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Azerbaijan')}">selected</c:if>>Azerbaijan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bahamas')}">selected</c:if>>Bahamas</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bahrain')}">selected</c:if>>Bahrain</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bangladesh')}">selected</c:if>>Bangladesh</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Barbados')}">selected</c:if>>Barbados</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Belarus')}">selected</c:if>>Belarus</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Belgium')}">selected</c:if>>Belgium</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Belize')}">selected</c:if>>Belize</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Benin')}">selected</c:if>>Benin</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bermuda')}">selected</c:if>>Bermuda</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bhutan')}">selected</c:if>>Bhutan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bolivia, Plurinational State of')}">selected</c:if>>Bolivia, Plurinational State of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bonaire, Sint Eustatius and Saba')}">selected</c:if>>Bonaire, Sint Eustatius and Saba</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bosnia and Herzegovina')}">selected</c:if>>Bosnia and Herzegovina</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Botswana')}">selected</c:if>>Botswana</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bouvet Island')}">selected</c:if>>Bouvet Island</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Brazil')}">selected</c:if>>Brazil</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('British Indian Ocean Territory')}">selected</c:if>>British Indian Ocean Territory</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Brunei Darussalam')}">selected</c:if>>Brunei Darussalam</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Bulgaria')}">selected</c:if>>Bulgaria</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Burkina Faso')}">selected</c:if>>Burkina Faso</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Burundi')}">selected</c:if>>Burundi</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Cambodia')}">selected</c:if>>Cambodia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Cameroon')}">selected</c:if>>Cameroon</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Canada')}">selected</c:if>>Canada</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Cape Verde')}">selected</c:if>>Cape Verde</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Cayman Islands')}">selected</c:if>>Cayman Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Central African Republic')}">selected</c:if>>Central African Republic</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Chad')}">selected</c:if>>Chad</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Chile')}">selected</c:if>>Chile</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('China')}">selected</c:if>>China</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Christmas Island')}">selected</c:if>>Christmas Island</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Cocos (Keeling) Islands')}">selected</c:if>>Cocos (Keeling) Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Colombia')}">selected</c:if>>Colombia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Comoros')}">selected</c:if>>Comoros</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Congo')}">selected</c:if>>Congo</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Congo, the Democratic Republic of the')}">selected</c:if>>Congo, the Democratic Republic of the</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Cook Islands')}">selected</c:if>>Cook Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Costa Rica')}">selected</c:if>>Costa Rica</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Côte d Ivoire')}">selected</c:if>>Côte d Ivoire</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Croatia')}">selected</c:if>>Croatia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Cuba')}">selected</c:if>>Cuba</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Curaçao')}">selected</c:if>>Curaçao</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Cyprus')}">selected</c:if>>Cyprus</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Czech Republic')}">selected</c:if>>Czech Republic</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Denmark')}">selected</c:if>>Denmark</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Djibouti')}">selected</c:if>>Djibouti</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Dominica')}">selected</c:if>>Dominica</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Dominican Republic')}">selected</c:if>>Dominican Republic</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Ecuador')}">selected</c:if>>Ecuador</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Egypt')}">selected</c:if>>Egypt</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('El Salvador')}">selected</c:if>>El Salvador</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Equatorial Guinea')}">selected</c:if>>Equatorial Guinea</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Eritrea')}">selected</c:if>>Eritrea</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Estonia')}">selected</c:if>>Estonia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Ethiopia')}">selected</c:if>>Ethiopia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Falkland Islands (Malvinas)')}">selected</c:if>>Falkland Islands (Malvinas)</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Faroe Islands')}">selected</c:if>>Faroe Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Fiji')}">selected</c:if>>Fiji</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Finland')}">selected</c:if>>Finland</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('France')}">selected</c:if>>France</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('French Guiana')}">selected</c:if>>French Guiana</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('French Polynesia')}">selected</c:if>>French Polynesia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('French Southern Territories')}">selected</c:if>>French Southern Territories</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Gabon')}">selected</c:if>>Gabon</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Gambia')}">selected</c:if>>Gambia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Georgia')}">selected</c:if>>Georgia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Germany')}">selected</c:if>>Germany</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Ghana')}">selected</c:if>>Ghana</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Gibraltar')}">selected</c:if>>Gibraltar</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Greece')}">selected</c:if>>Greece</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Greenland')}">selected</c:if>>Greenland</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Grenada')}">selected</c:if>>Grenada</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Guadeloupe')}">selected</c:if>>Guadeloupe</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Guam')}">selected</c:if>>Guam</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Guatemala')}">selected</c:if>>Guatemala</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Guernsey')}">selected</c:if>>Guernsey</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Guinea')}">selected</c:if>>Guinea</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Guinea-Bissau')}">selected</c:if>>Guinea-Bissau</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Guyana')}">selected</c:if>>Guyana</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Haiti')}">selected</c:if>>Haiti</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Heard Island and McDonald Islands')}">selected</c:if>>Heard Island and McDonald Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Holy See (Vatican City State)')}">selected</c:if>>Holy See (Vatican City State)</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Honduras')}">selected</c:if>>Honduras</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Hong Kong')}">selected</c:if>>Hong Kong</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Hungary')}">selected</c:if>>Hungary</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Iceland')}">selected</c:if>>Iceland</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('India')}">selected</c:if>>India</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Indonesia')}">selected</c:if>>Indonesia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Iran, Islamic Republic of')}">selected</c:if>>Iran, Islamic Republic of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Iraq')}">selected</c:if>>Iraq</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Ireland')}">selected</c:if>>Ireland</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Isle of Man')}">selected</c:if>>Isle of Man</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Israel')}">selected</c:if>>Israel</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Italy')}">selected</c:if>>Italy</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Jamaica')}">selected</c:if>>Jamaica</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Japan')}">selected</c:if>>Japan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Jersey')}">selected</c:if>>Jersey</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Jordan')}">selected</c:if>>Jordan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Kazakhstan')}">selected</c:if>>Kazakhstan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Kenya')}">selected</c:if>>Kenya</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Kiribati')}">selected</c:if>>Kiribati</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Korea, Democratic Peoples Republic of')}">selected</c:if>>Korea, Democratic Peoples Republic of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Korea, Republic of')}">selected</c:if>>Korea, Republic of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Kuwait')}">selected</c:if>>Kuwait</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Kyrgyzstan')}">selected</c:if>>Kyrgyzstan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Lao Peoples Democratic Republic')}">selected</c:if>>Lao Peoples Democratic Republic</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Latvia')}">selected</c:if>>Latvia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Lebanon')}">selected</c:if>>Lebanon</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Lesotho')}">selected</c:if>>Lesotho</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Liberia')}">selected</c:if>>Liberia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Libya')}">selected</c:if>>Libya</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Liechtenstein')}">selected</c:if>>Liechtenstein</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Lithuania')}">selected</c:if>>Lithuania</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Luxembourg')}">selected</c:if>>Luxembourg</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Macao')}">selected</c:if>>Macao</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Macedonia, the former Yugoslav Republic of')}">selected</c:if>>Macedonia, the former Yugoslav Republic of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Madagascar')}">selected</c:if>>Madagascar</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Malawi')}">selected</c:if>>Malawi</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Malaysia')}">selected</c:if>>Malaysia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Maldives')}">selected</c:if>>Maldives</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Mali')}">selected</c:if>>Mali</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Malta')}">selected</c:if>>Malta</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Marshall Islands')}">selected</c:if>>Marshall Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Martinique')}">selected</c:if>>Martinique</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Mauritania')}">selected</c:if>>Mauritania</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Mauritius')}">selected</c:if>>Mauritius</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Mayotte')}">selected</c:if>>Mayotte</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Mexico')}">selected</c:if>>Mexico</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Micronesia, Federated States of')}">selected</c:if>>Micronesia, Federated States of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Moldova, Republic of')}">selected</c:if>>Moldova, Republic of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Monaco')}">selected</c:if>>Monaco</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Mongolia')}">selected</c:if>>Mongolia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Montenegro')}">selected</c:if>>Montenegro</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Montserrat')}">selected</c:if>>Montserrat</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Morocco')}">selected</c:if>>Morocco</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Mozambique')}">selected</c:if>>Mozambique</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Myanmar')}">selected</c:if>>Myanmar</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Namibia')}">selected</c:if>>Namibia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Nauru')}">selected</c:if>>Nauru</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Nepal')}">selected</c:if>>Nepal</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Netherlands')}">selected</c:if>>Netherlands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('New Caledonia')}">selected</c:if>>New Caledonia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('New Zealand')}">selected</c:if>>New Zealand</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Nicaragua')}">selected</c:if>>Nicaragua</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Niger')}">selected</c:if>>Niger</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Nigeria')}">selected</c:if>>Nigeria</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Niue')}">selected</c:if>>Niue</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Norfolk Island')}">selected</c:if>>Norfolk Island</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Northern Mariana Islands')}">selected</c:if>>Northern Mariana Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Norway')}">selected</c:if>>Norway</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Oman')}">selected</c:if>>Oman</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Pakistan')}">selected</c:if>>Pakistan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Palau')}">selected</c:if>>Palau</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Palestinian Territory, Occupied')}">selected</c:if>>Palestinian Territory, Occupied</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Panama')}">selected</c:if>>Panama</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Papua New Guinea')}">selected</c:if>>Papua New Guinea</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Paraguay')}">selected</c:if>>Paraguay</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Peru')}">selected</c:if>>Peru</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Philippines')}">selected</c:if>>Philippines</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Pitcairn')}">selected</c:if>>Pitcairn</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Poland')}">selected</c:if>>Poland</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Portugal')}">selected</c:if>>Portugal</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Puerto Rico')}">selected</c:if>>Puerto Rico</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Qatar')}">selected</c:if>>Qatar</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Réunion')}">selected</c:if>>Réunion</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Romania')}">selected</c:if>>Romania</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Russian Federation')}">selected</c:if>>Russian Federation</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Rwanda')}">selected</c:if>>Rwanda</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Saint Barthélemy')}">selected</c:if>>Saint Barthélemy</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Saint Helena, Ascension and Tristan da Cunha')}">selected</c:if>>Saint Helena, Ascension and Tristan da Cunha</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Saint Kitts and Nevis')}">selected</c:if>>Saint Kitts and Nevis</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Saint Lucia')}">selected</c:if>>Saint Lucia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Saint Martin (French part)')}">selected</c:if>>Saint Martin (French part)</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Saint Pierre and Miquelon')}">selected</c:if>>Saint Pierre and Miquelon</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Saint Vincent and the Grenadines')}">selected</c:if>>Saint Vincent and the Grenadines</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Samoa')}">selected</c:if>>Samoa</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('San Marino')}">selected</c:if>>San Marino</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Sao Tome and Principe')}">selected</c:if>>Sao Tome and Principe</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Saudi Arabia')}">selected</c:if>>Saudi Arabia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Senegal')}">selected</c:if>>Senegal</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Serbia')}">selected</c:if>>Serbia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Seychelles')}">selected</c:if>>Seychelles</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Sierra Leone')}">selected</c:if>>Sierra Leone</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Singapore')}">selected</c:if>>Singapore</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Sint Maarten (Dutch part)')}">selected</c:if>>Sint Maarten (Dutch part)</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Slovakia')}">selected</c:if>>Slovakia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Slovenia')}">selected</c:if>>Slovenia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Solomon Islands')}">selected</c:if>>Solomon Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Somalia')}">selected</c:if>>Somalia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('South Africa')}">selected</c:if>>South Africa</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('South Georgia and the South Sandwich Islands')}">selected</c:if>>South Georgia and the South Sandwich Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('South Sudan')}">selected</c:if>>South Sudan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Spain')}">selected</c:if>>Spain</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Sri Lanka')}">selected</c:if>>Sri Lanka</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Sudan')}">selected</c:if>>Sudan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Suriname')}">selected</c:if>>Suriname</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Svalbard and Jan Mayen')}">selected</c:if>>Svalbard and Jan Mayen</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Swaziland')}">selected</c:if>>Swaziland</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Sweden')}">selected</c:if>>Sweden</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Switzerland')}">selected</c:if>>Switzerland</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Syrian Arab Republic')}">selected</c:if>>Syrian Arab Republic</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Taiwan, Province of China')}">selected</c:if>>Taiwan, Province of China</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Tajikistan')}">selected</c:if>>Tajikistan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Tanzania, United Republic of')}">selected</c:if>>Tanzania, United Republic of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Thailand')}">selected</c:if>>Thailand</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Timor-Leste')}">selected</c:if>>Timor-Leste</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Togo')}">selected</c:if>>Togo</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Tokelau')}">selected</c:if>>Tokelau</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Tonga')}">selected</c:if>>Tonga</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Trinidad and Tobago')}">selected</c:if>>Trinidad and Tobago</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Tunisia')}">selected</c:if>>Tunisia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Turkey')}">selected</c:if>>Turkey</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Turkmenistan')}">selected</c:if>>Turkmenistan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Turks and Caicos Islands')}">selected</c:if>>Turks and Caicos Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Tuvalu')}">selected</c:if>>Tuvalu</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Uganda')}">selected</c:if>>Uganda</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Ukraine')}">selected</c:if>>Ukraine</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('United Arab Emirates')}">selected</c:if>>United Arab Emirates</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('United Kingdom')}">selected</c:if>>United Kingdom</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('United States')}">selected</c:if>>United States</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('United States Minor Outlying Islands')}">selected</c:if>>United States Minor Outlying Islands</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Uruguay')}">selected</c:if>>Uruguay</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Uzbekistan')}">selected</c:if>>Uzbekistan</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Vanuatu')}">selected</c:if>>Vanuatu</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Venezuela, Bolivarian Republic of')}">selected</c:if>>Venezuela, Bolivarian Republic of</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Viet Nam')}">selected</c:if>>Viet Nam</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Virgin Islands, British')}">selected</c:if>>Virgin Islands, British</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Virgin Islands, U.S.')}">selected</c:if>>Virgin Islands, U.S.</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Wallis and Futuna')}">selected</c:if>>Wallis and Futuna</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Western Sahara')}">selected</c:if>>Western Sahara</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Yemen')}">selected</c:if>>Yemen</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Zambia')}">selected</c:if>>Zambia</option>
                                                    <option <c:if test="${EditDoctorDetails.doctorCountry.equals('Zimbabwe')}">selected</c:if>>Zimbabwe</option>
                                                    </select>
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
                                    <h2>Edit Doctor <small>Available Informations</small></h2>
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
                                                <th>Name</th>
                                                <th>Gender</th>
                                                <th>Date of Birth</th>
                                                <th>Educational Background</th>
                                                <th>Country</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                            </tr>
                                        </thead>


                                        <tbody>
                                            <c:forEach items="${DoctorDetails}" var="doc">
                                                <tr>
                                                    <td>${doc.doctorFirstName} ${doc.doctorLastName}</td>
                                                    <td>${doc.doctorGender}</td>
                                                    <td>${doc.doctorDOB}</td>
                                                    <td>${doc.doctorEduBG}</td>
                                                    <td>${doc.doctorCountry}</td>
                                                    <td><a href="${cp}/admin/doctor/edit/${doc.doctorId}">Edit</a></td>
                                                    <td><a href="${cp}/admin/doctor/delete/${doc.doctorId}">Delete</a></td>
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
