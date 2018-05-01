<%-- 
    Document   : editPatient
    Created on : Apr 30, 2018, 7:42:38 PM
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
                                <h3>Patients</h3>
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
                                        <h2>Edit Patient <small>Choose information from table below</small></h2>
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
                                        <form action="${cp}/admin/patient/edit" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="patientId">ID <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="patientId" id="patientId" required="required" class="form-control col-md-7 col-xs-12" readonly value="${EditPatientDetails.patientId}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="patientFirstName" id="first-name" required="required" class="form-control col-md-7 col-xs-12" value="${EditPatientDetails.patientFirstName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="patientLastName" required="required" class="form-control col-md-7 col-xs-12" value="${EditPatientDetails.patientLastName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender <span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                M:<input type="radio" class="flat" name="patientGender" id="genderM" value="M" <c:if test="${EditPatientDetails.patientGender.equals('M')}">checked=""</c:if> />
                                                &nbsp;F:<input type="radio" class="flat" name="patientGender" id="genderF" value="F" <c:if test="${EditPatientDetails.patientGender.equals('F')}">checked=""</c:if> />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="birthday" name="patientDOB" class="date-picker form-control col-md-7 col-xs-12" required="required" type="date" value="${EditPatientDetails.patientDOB}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="health-problem">Health Problem <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="health-problem" name="healthProblem" required="required" class="form-control col-md-7 col-xs-12" value="${EditPatientDetails.healthProblem}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="country">Country <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select class="form-control" name="patientCountry">
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Afghanistan')}">selected</c:if>>Afghanistan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Åland Islands')}">selected</c:if>>Åland Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Albania')}">selected</c:if>>Albania</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Algeria')}">selected</c:if>>Algeria</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('American Samoa')}">selected</c:if>>American Samoa</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Andorra')}">selected</c:if>>Andorra</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Angola')}">selected</c:if>>Angola</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Anguilla')}">selected</c:if>>Anguilla</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Antarctica')}">selected</c:if>>Antarctica</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Antigua and Barbuda')}">selected</c:if>>Antigua and Barbuda</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Argentina')}">selected</c:if>>Argentina</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Armenia')}">selected</c:if>>Armenia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Aruba')}">selected</c:if>>Aruba</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Australia')}">selected</c:if>>Australia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Austria')}">selected</c:if>>Austria</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Azerbaijan')}">selected</c:if>>Azerbaijan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bahamas')}">selected</c:if>>Bahamas</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bahrain')}">selected</c:if>>Bahrain</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bangladesh')}">selected</c:if>>Bangladesh</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Barbados')}">selected</c:if>>Barbados</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Belarus')}">selected</c:if>>Belarus</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Belgium')}">selected</c:if>>Belgium</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Belize')}">selected</c:if>>Belize</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Benin')}">selected</c:if>>Benin</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bermuda')}">selected</c:if>>Bermuda</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bhutan')}">selected</c:if>>Bhutan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bolivia, Plurinational State of')}">selected</c:if>>Bolivia, Plurinational State of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bonaire, Sint Eustatius and Saba')}">selected</c:if>>Bonaire, Sint Eustatius and Saba</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bosnia and Herzegovina')}">selected</c:if>>Bosnia and Herzegovina</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Botswana')}">selected</c:if>>Botswana</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bouvet Island')}">selected</c:if>>Bouvet Island</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Brazil')}">selected</c:if>>Brazil</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('British Indian Ocean Territory')}">selected</c:if>>British Indian Ocean Territory</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Brunei Darussalam')}">selected</c:if>>Brunei Darussalam</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Bulgaria')}">selected</c:if>>Bulgaria</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Burkina Faso')}">selected</c:if>>Burkina Faso</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Burundi')}">selected</c:if>>Burundi</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Cambodia')}">selected</c:if>>Cambodia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Cameroon')}">selected</c:if>>Cameroon</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Canada')}">selected</c:if>>Canada</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Cape Verde')}">selected</c:if>>Cape Verde</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Cayman Islands')}">selected</c:if>>Cayman Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Central African Republic')}">selected</c:if>>Central African Republic</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Chad')}">selected</c:if>>Chad</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Chile')}">selected</c:if>>Chile</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('China')}">selected</c:if>>China</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Christmas Island')}">selected</c:if>>Christmas Island</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Cocos (Keeling) Islands')}">selected</c:if>>Cocos (Keeling) Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Colombia')}">selected</c:if>>Colombia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Comoros')}">selected</c:if>>Comoros</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Congo')}">selected</c:if>>Congo</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Congo, the Democratic Republic of the')}">selected</c:if>>Congo, the Democratic Republic of the</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Cook Islands')}">selected</c:if>>Cook Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Costa Rica')}">selected</c:if>>Costa Rica</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Côte d Ivoire')}">selected</c:if>>Côte d Ivoire</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Croatia')}">selected</c:if>>Croatia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Cuba')}">selected</c:if>>Cuba</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Curaçao')}">selected</c:if>>Curaçao</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Cyprus')}">selected</c:if>>Cyprus</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Czech Republic')}">selected</c:if>>Czech Republic</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Denmark')}">selected</c:if>>Denmark</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Djibouti')}">selected</c:if>>Djibouti</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Dominica')}">selected</c:if>>Dominica</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Dominican Republic')}">selected</c:if>>Dominican Republic</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Ecuador')}">selected</c:if>>Ecuador</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Egypt')}">selected</c:if>>Egypt</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('El Salvador')}">selected</c:if>>El Salvador</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Equatorial Guinea')}">selected</c:if>>Equatorial Guinea</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Eritrea')}">selected</c:if>>Eritrea</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Estonia')}">selected</c:if>>Estonia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Ethiopia')}">selected</c:if>>Ethiopia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Falkland Islands (Malvinas)')}">selected</c:if>>Falkland Islands (Malvinas)</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Faroe Islands')}">selected</c:if>>Faroe Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Fiji')}">selected</c:if>>Fiji</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Finland')}">selected</c:if>>Finland</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('France')}">selected</c:if>>France</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('French Guiana')}">selected</c:if>>French Guiana</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('French Polynesia')}">selected</c:if>>French Polynesia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('French Southern Territories')}">selected</c:if>>French Southern Territories</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Gabon')}">selected</c:if>>Gabon</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Gambia')}">selected</c:if>>Gambia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Georgia')}">selected</c:if>>Georgia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Germany')}">selected</c:if>>Germany</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Ghana')}">selected</c:if>>Ghana</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Gibraltar')}">selected</c:if>>Gibraltar</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Greece')}">selected</c:if>>Greece</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Greenland')}">selected</c:if>>Greenland</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Grenada')}">selected</c:if>>Grenada</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Guadeloupe')}">selected</c:if>>Guadeloupe</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Guam')}">selected</c:if>>Guam</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Guatemala')}">selected</c:if>>Guatemala</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Guernsey')}">selected</c:if>>Guernsey</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Guinea')}">selected</c:if>>Guinea</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Guinea-Bissau')}">selected</c:if>>Guinea-Bissau</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Guyana')}">selected</c:if>>Guyana</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Haiti')}">selected</c:if>>Haiti</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Heard Island and McDonald Islands')}">selected</c:if>>Heard Island and McDonald Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Holy See (Vatican City State)')}">selected</c:if>>Holy See (Vatican City State)</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Honduras')}">selected</c:if>>Honduras</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Hong Kong')}">selected</c:if>>Hong Kong</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Hungary')}">selected</c:if>>Hungary</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Iceland')}">selected</c:if>>Iceland</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('India')}">selected</c:if>>India</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Indonesia')}">selected</c:if>>Indonesia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Iran, Islamic Republic of')}">selected</c:if>>Iran, Islamic Republic of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Iraq')}">selected</c:if>>Iraq</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Ireland')}">selected</c:if>>Ireland</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Isle of Man')}">selected</c:if>>Isle of Man</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Israel')}">selected</c:if>>Israel</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Italy')}">selected</c:if>>Italy</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Jamaica')}">selected</c:if>>Jamaica</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Japan')}">selected</c:if>>Japan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Jersey')}">selected</c:if>>Jersey</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Jordan')}">selected</c:if>>Jordan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Kazakhstan')}">selected</c:if>>Kazakhstan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Kenya')}">selected</c:if>>Kenya</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Kiribati')}">selected</c:if>>Kiribati</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Korea, Democratic Peoples Republic of')}">selected</c:if>>Korea, Democratic Peoples Republic of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Korea, Republic of')}">selected</c:if>>Korea, Republic of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Kuwait')}">selected</c:if>>Kuwait</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Kyrgyzstan')}">selected</c:if>>Kyrgyzstan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Lao Peoples Democratic Republic')}">selected</c:if>>Lao Peoples Democratic Republic</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Latvia')}">selected</c:if>>Latvia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Lebanon')}">selected</c:if>>Lebanon</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Lesotho')}">selected</c:if>>Lesotho</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Liberia')}">selected</c:if>>Liberia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Libya')}">selected</c:if>>Libya</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Liechtenstein')}">selected</c:if>>Liechtenstein</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Lithuania')}">selected</c:if>>Lithuania</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Luxembourg')}">selected</c:if>>Luxembourg</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Macao')}">selected</c:if>>Macao</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Macedonia, the former Yugoslav Republic of')}">selected</c:if>>Macedonia, the former Yugoslav Republic of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Madagascar')}">selected</c:if>>Madagascar</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Malawi')}">selected</c:if>>Malawi</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Malaysia')}">selected</c:if>>Malaysia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Maldives')}">selected</c:if>>Maldives</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Mali')}">selected</c:if>>Mali</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Malta')}">selected</c:if>>Malta</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Marshall Islands')}">selected</c:if>>Marshall Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Martinique')}">selected</c:if>>Martinique</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Mauritania')}">selected</c:if>>Mauritania</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Mauritius')}">selected</c:if>>Mauritius</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Mayotte')}">selected</c:if>>Mayotte</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Mexico')}">selected</c:if>>Mexico</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Micronesia, Federated States of')}">selected</c:if>>Micronesia, Federated States of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Moldova, Republic of')}">selected</c:if>>Moldova, Republic of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Monaco')}">selected</c:if>>Monaco</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Mongolia')}">selected</c:if>>Mongolia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Montenegro')}">selected</c:if>>Montenegro</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Montserrat')}">selected</c:if>>Montserrat</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Morocco')}">selected</c:if>>Morocco</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Mozambique')}">selected</c:if>>Mozambique</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Myanmar')}">selected</c:if>>Myanmar</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Namibia')}">selected</c:if>>Namibia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Nauru')}">selected</c:if>>Nauru</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Nepal')}">selected</c:if>>Nepal</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Netherlands')}">selected</c:if>>Netherlands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('New Caledonia')}">selected</c:if>>New Caledonia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('New Zealand')}">selected</c:if>>New Zealand</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Nicaragua')}">selected</c:if>>Nicaragua</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Niger')}">selected</c:if>>Niger</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Nigeria')}">selected</c:if>>Nigeria</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Niue')}">selected</c:if>>Niue</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Norfolk Island')}">selected</c:if>>Norfolk Island</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Northern Mariana Islands')}">selected</c:if>>Northern Mariana Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Norway')}">selected</c:if>>Norway</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Oman')}">selected</c:if>>Oman</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Pakistan')}">selected</c:if>>Pakistan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Palau')}">selected</c:if>>Palau</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Palestinian Territory, Occupied')}">selected</c:if>>Palestinian Territory, Occupied</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Panama')}">selected</c:if>>Panama</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Papua New Guinea')}">selected</c:if>>Papua New Guinea</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Paraguay')}">selected</c:if>>Paraguay</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Peru')}">selected</c:if>>Peru</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Philippines')}">selected</c:if>>Philippines</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Pitcairn')}">selected</c:if>>Pitcairn</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Poland')}">selected</c:if>>Poland</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Portugal')}">selected</c:if>>Portugal</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Puerto Rico')}">selected</c:if>>Puerto Rico</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Qatar')}">selected</c:if>>Qatar</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Réunion')}">selected</c:if>>Réunion</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Romania')}">selected</c:if>>Romania</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Russian Federation')}">selected</c:if>>Russian Federation</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Rwanda')}">selected</c:if>>Rwanda</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Saint Barthélemy')}">selected</c:if>>Saint Barthélemy</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Saint Helena, Ascension and Tristan da Cunha')}">selected</c:if>>Saint Helena, Ascension and Tristan da Cunha</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Saint Kitts and Nevis')}">selected</c:if>>Saint Kitts and Nevis</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Saint Lucia')}">selected</c:if>>Saint Lucia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Saint Martin (French part)')}">selected</c:if>>Saint Martin (French part)</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Saint Pierre and Miquelon')}">selected</c:if>>Saint Pierre and Miquelon</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Saint Vincent and the Grenadines')}">selected</c:if>>Saint Vincent and the Grenadines</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Samoa')}">selected</c:if>>Samoa</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('San Marino')}">selected</c:if>>San Marino</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Sao Tome and Principe')}">selected</c:if>>Sao Tome and Principe</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Saudi Arabia')}">selected</c:if>>Saudi Arabia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Senegal')}">selected</c:if>>Senegal</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Serbia')}">selected</c:if>>Serbia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Seychelles')}">selected</c:if>>Seychelles</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Sierra Leone')}">selected</c:if>>Sierra Leone</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Singapore')}">selected</c:if>>Singapore</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Sint Maarten (Dutch part)')}">selected</c:if>>Sint Maarten (Dutch part)</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Slovakia')}">selected</c:if>>Slovakia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Slovenia')}">selected</c:if>>Slovenia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Solomon Islands')}">selected</c:if>>Solomon Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Somalia')}">selected</c:if>>Somalia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('South Africa')}">selected</c:if>>South Africa</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('South Georgia and the South Sandwich Islands')}">selected</c:if>>South Georgia and the South Sandwich Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('South Sudan')}">selected</c:if>>South Sudan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Spain')}">selected</c:if>>Spain</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Sri Lanka')}">selected</c:if>>Sri Lanka</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Sudan')}">selected</c:if>>Sudan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Suriname')}">selected</c:if>>Suriname</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Svalbard and Jan Mayen')}">selected</c:if>>Svalbard and Jan Mayen</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Swaziland')}">selected</c:if>>Swaziland</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Sweden')}">selected</c:if>>Sweden</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Switzerland')}">selected</c:if>>Switzerland</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Syrian Arab Republic')}">selected</c:if>>Syrian Arab Republic</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Taiwan, Province of China')}">selected</c:if>>Taiwan, Province of China</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Tajikistan')}">selected</c:if>>Tajikistan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Tanzania, United Republic of')}">selected</c:if>>Tanzania, United Republic of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Thailand')}">selected</c:if>>Thailand</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Timor-Leste')}">selected</c:if>>Timor-Leste</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Togo')}">selected</c:if>>Togo</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Tokelau')}">selected</c:if>>Tokelau</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Tonga')}">selected</c:if>>Tonga</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Trinidad and Tobago')}">selected</c:if>>Trinidad and Tobago</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Tunisia')}">selected</c:if>>Tunisia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Turkey')}">selected</c:if>>Turkey</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Turkmenistan')}">selected</c:if>>Turkmenistan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Turks and Caicos Islands')}">selected</c:if>>Turks and Caicos Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Tuvalu')}">selected</c:if>>Tuvalu</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Uganda')}">selected</c:if>>Uganda</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Ukraine')}">selected</c:if>>Ukraine</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('United Arab Emirates')}">selected</c:if>>United Arab Emirates</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('United Kingdom')}">selected</c:if>>United Kingdom</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('United States')}">selected</c:if>>United States</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('United States Minor Outlying Islands')}">selected</c:if>>United States Minor Outlying Islands</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Uruguay')}">selected</c:if>>Uruguay</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Uzbekistan')}">selected</c:if>>Uzbekistan</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Vanuatu')}">selected</c:if>>Vanuatu</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Venezuela, Bolivarian Republic of')}">selected</c:if>>Venezuela, Bolivarian Republic of</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Viet Nam')}">selected</c:if>>Viet Nam</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Virgin Islands, British')}">selected</c:if>>Virgin Islands, British</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Virgin Islands, U.S.')}">selected</c:if>>Virgin Islands, U.S.</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Wallis and Futuna')}">selected</c:if>>Wallis and Futuna</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Western Sahara')}">selected</c:if>>Western Sahara</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Yemen')}">selected</c:if>>Yemen</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Zambia')}">selected</c:if>>Zambia</option>
                                                    <option <c:if test="${EditPatientDetails.patientCountry.equals('Zimbabwe')}">selected</c:if>>Zimbabwe</option>
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
                                    <h2>Edit Patient <small>Available Informations</small></h2>
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
                                                <th>Id</th>
                                                <th>Name</th>
                                                <th>Gender</th>
                                                <th>Date of Birth</th>
                                                <th>Health Problem</th>
                                                <th>Country</th>
                                                <th>Edit</th>
                                                <th>Delete</th>
                                            </tr>
                                        </thead>


                                        <tbody>
                                            <c:forEach items="${PatientDetails}" var="pat">
                                                <tr>
                                                    <td>${pat.patientId}</td>
                                                    <td>${pat.patientFirstName} ${pat.patientLastName}</td>
                                                    <td>${pat.patientGender}</td>
                                                    <td>${pat.patientDOB}</td>
                                                    <td>${pat.healthProblem}</td>
                                                    <td>${pat.patientCountry}</td>
                                                    <td><a href="${cp}/admin/patient/edit/${pat.patientId}">Edit</a></td>
                                                    <td><a href="${cp}/admin/patient/delete/${pat.patientId}">Delete</a></td>
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