<%-- 
    Document   : editNurse
    Created on : Apr 29, 2018, 7:15:30 AM
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
                                <h3>Nurses</h3>
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
                                        <h2>Edit Nurse <small>Choose information from table below</small></h2>
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
                                        <form action="${cp}/admin/nurse/edit" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nurseId">ID <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="nurseId" id="nurseId" required="required" class="form-control col-md-7 col-xs-12" readonly value="${EditNurseDetails.nurseId}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="nurseFirstName" id="first-name" required="required" class="form-control col-md-7 col-xs-12" value="${EditNurseDetails.nurseFirstName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="nurseLastName" required="required" class="form-control col-md-7 col-xs-12" value="${EditNurseDetails.nurseLastName}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender <span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                M:<input type="radio" class="flat" name="nurseGender" id="genderM" value="M" <c:if test="${EditNurseDetails.nurseGender.equals('M')}">checked=""</c:if> />
                                                &nbsp;F:<input type="radio" class="flat" name="nurseGender" id="genderF" value="F" <c:if test="${EditNurseDetails.nurseGender.equals('F')}">checked=""</c:if> />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <input id="birthday" name="nurseDOB" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text" placeholder="yyyy-MM-dd" value="${EditNurseDetails.nurseDOB}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="educational-background">Educational background <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="educational-background" name="nurseEduBG" required="required" class="form-control col-md-7 col-xs-12" value="${EditNurseDetails.nurseEduBG}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="country">Country <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select class="form-control" name="nurseCountry">
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Afghanistan')}">selected</c:if>>Afghanistan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Åland Islands')}">selected</c:if>>Åland Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Albania')}">selected</c:if>>Albania</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Algeria')}">selected</c:if>>Algeria</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('American Samoa')}">selected</c:if>>American Samoa</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Andorra')}">selected</c:if>>Andorra</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Angola')}">selected</c:if>>Angola</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Anguilla')}">selected</c:if>>Anguilla</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Antarctica')}">selected</c:if>>Antarctica</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Antigua and Barbuda')}">selected</c:if>>Antigua and Barbuda</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Argentina')}">selected</c:if>>Argentina</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Armenia')}">selected</c:if>>Armenia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Aruba')}">selected</c:if>>Aruba</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Australia')}">selected</c:if>>Australia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Austria')}">selected</c:if>>Austria</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Azerbaijan')}">selected</c:if>>Azerbaijan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bahamas')}">selected</c:if>>Bahamas</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bahrain')}">selected</c:if>>Bahrain</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bangladesh')}">selected</c:if>>Bangladesh</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Barbados')}">selected</c:if>>Barbados</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Belarus')}">selected</c:if>>Belarus</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Belgium')}">selected</c:if>>Belgium</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Belize')}">selected</c:if>>Belize</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Benin')}">selected</c:if>>Benin</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bermuda')}">selected</c:if>>Bermuda</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bhutan')}">selected</c:if>>Bhutan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bolivia, Plurinational State of')}">selected</c:if>>Bolivia, Plurinational State of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bonaire, Sint Eustatius and Saba')}">selected</c:if>>Bonaire, Sint Eustatius and Saba</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bosnia and Herzegovina')}">selected</c:if>>Bosnia and Herzegovina</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Botswana')}">selected</c:if>>Botswana</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bouvet Island')}">selected</c:if>>Bouvet Island</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Brazil')}">selected</c:if>>Brazil</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('British Indian Ocean Territory')}">selected</c:if>>British Indian Ocean Territory</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Brunei Darussalam')}">selected</c:if>>Brunei Darussalam</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Bulgaria')}">selected</c:if>>Bulgaria</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Burkina Faso')}">selected</c:if>>Burkina Faso</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Burundi')}">selected</c:if>>Burundi</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Cambodia')}">selected</c:if>>Cambodia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Cameroon')}">selected</c:if>>Cameroon</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Canada')}">selected</c:if>>Canada</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Cape Verde')}">selected</c:if>>Cape Verde</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Cayman Islands')}">selected</c:if>>Cayman Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Central African Republic')}">selected</c:if>>Central African Republic</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Chad')}">selected</c:if>>Chad</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Chile')}">selected</c:if>>Chile</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('China')}">selected</c:if>>China</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Christmas Island')}">selected</c:if>>Christmas Island</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Cocos (Keeling) Islands')}">selected</c:if>>Cocos (Keeling) Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Colombia')}">selected</c:if>>Colombia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Comoros')}">selected</c:if>>Comoros</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Congo')}">selected</c:if>>Congo</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Congo, the Democratic Republic of the')}">selected</c:if>>Congo, the Democratic Republic of the</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Cook Islands')}">selected</c:if>>Cook Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Costa Rica')}">selected</c:if>>Costa Rica</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Côte d Ivoire')}">selected</c:if>>Côte d Ivoire</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Croatia')}">selected</c:if>>Croatia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Cuba')}">selected</c:if>>Cuba</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Curaçao')}">selected</c:if>>Curaçao</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Cyprus')}">selected</c:if>>Cyprus</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Czech Republic')}">selected</c:if>>Czech Republic</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Denmark')}">selected</c:if>>Denmark</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Djibouti')}">selected</c:if>>Djibouti</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Dominica')}">selected</c:if>>Dominica</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Dominican Republic')}">selected</c:if>>Dominican Republic</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Ecuador')}">selected</c:if>>Ecuador</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Egypt')}">selected</c:if>>Egypt</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('El Salvador')}">selected</c:if>>El Salvador</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Equatorial Guinea')}">selected</c:if>>Equatorial Guinea</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Eritrea')}">selected</c:if>>Eritrea</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Estonia')}">selected</c:if>>Estonia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Ethiopia')}">selected</c:if>>Ethiopia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Falkland Islands (Malvinas)')}">selected</c:if>>Falkland Islands (Malvinas)</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Faroe Islands')}">selected</c:if>>Faroe Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Fiji')}">selected</c:if>>Fiji</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Finland')}">selected</c:if>>Finland</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('France')}">selected</c:if>>France</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('French Guiana')}">selected</c:if>>French Guiana</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('French Polynesia')}">selected</c:if>>French Polynesia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('French Southern Territories')}">selected</c:if>>French Southern Territories</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Gabon')}">selected</c:if>>Gabon</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Gambia')}">selected</c:if>>Gambia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Georgia')}">selected</c:if>>Georgia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Germany')}">selected</c:if>>Germany</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Ghana')}">selected</c:if>>Ghana</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Gibraltar')}">selected</c:if>>Gibraltar</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Greece')}">selected</c:if>>Greece</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Greenland')}">selected</c:if>>Greenland</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Grenada')}">selected</c:if>>Grenada</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Guadeloupe')}">selected</c:if>>Guadeloupe</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Guam')}">selected</c:if>>Guam</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Guatemala')}">selected</c:if>>Guatemala</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Guernsey')}">selected</c:if>>Guernsey</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Guinea')}">selected</c:if>>Guinea</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Guinea-Bissau')}">selected</c:if>>Guinea-Bissau</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Guyana')}">selected</c:if>>Guyana</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Haiti')}">selected</c:if>>Haiti</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Heard Island and McDonald Islands')}">selected</c:if>>Heard Island and McDonald Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Holy See (Vatican City State)')}">selected</c:if>>Holy See (Vatican City State)</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Honduras')}">selected</c:if>>Honduras</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Hong Kong')}">selected</c:if>>Hong Kong</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Hungary')}">selected</c:if>>Hungary</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Iceland')}">selected</c:if>>Iceland</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('India')}">selected</c:if>>India</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Indonesia')}">selected</c:if>>Indonesia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Iran, Islamic Republic of')}">selected</c:if>>Iran, Islamic Republic of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Iraq')}">selected</c:if>>Iraq</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Ireland')}">selected</c:if>>Ireland</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Isle of Man')}">selected</c:if>>Isle of Man</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Israel')}">selected</c:if>>Israel</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Italy')}">selected</c:if>>Italy</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Jamaica')}">selected</c:if>>Jamaica</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Japan')}">selected</c:if>>Japan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Jersey')}">selected</c:if>>Jersey</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Jordan')}">selected</c:if>>Jordan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Kazakhstan')}">selected</c:if>>Kazakhstan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Kenya')}">selected</c:if>>Kenya</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Kiribati')}">selected</c:if>>Kiribati</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Korea, Democratic Peoples Republic of')}">selected</c:if>>Korea, Democratic Peoples Republic of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Korea, Republic of')}">selected</c:if>>Korea, Republic of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Kuwait')}">selected</c:if>>Kuwait</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Kyrgyzstan')}">selected</c:if>>Kyrgyzstan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Lao Peoples Democratic Republic')}">selected</c:if>>Lao Peoples Democratic Republic</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Latvia')}">selected</c:if>>Latvia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Lebanon')}">selected</c:if>>Lebanon</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Lesotho')}">selected</c:if>>Lesotho</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Liberia')}">selected</c:if>>Liberia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Libya')}">selected</c:if>>Libya</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Liechtenstein')}">selected</c:if>>Liechtenstein</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Lithuania')}">selected</c:if>>Lithuania</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Luxembourg')}">selected</c:if>>Luxembourg</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Macao')}">selected</c:if>>Macao</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Macedonia, the former Yugoslav Republic of')}">selected</c:if>>Macedonia, the former Yugoslav Republic of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Madagascar')}">selected</c:if>>Madagascar</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Malawi')}">selected</c:if>>Malawi</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Malaysia')}">selected</c:if>>Malaysia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Maldives')}">selected</c:if>>Maldives</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Mali')}">selected</c:if>>Mali</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Malta')}">selected</c:if>>Malta</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Marshall Islands')}">selected</c:if>>Marshall Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Martinique')}">selected</c:if>>Martinique</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Mauritania')}">selected</c:if>>Mauritania</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Mauritius')}">selected</c:if>>Mauritius</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Mayotte')}">selected</c:if>>Mayotte</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Mexico')}">selected</c:if>>Mexico</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Micronesia, Federated States of')}">selected</c:if>>Micronesia, Federated States of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Moldova, Republic of')}">selected</c:if>>Moldova, Republic of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Monaco')}">selected</c:if>>Monaco</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Mongolia')}">selected</c:if>>Mongolia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Montenegro')}">selected</c:if>>Montenegro</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Montserrat')}">selected</c:if>>Montserrat</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Morocco')}">selected</c:if>>Morocco</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Mozambique')}">selected</c:if>>Mozambique</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Myanmar')}">selected</c:if>>Myanmar</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Namibia')}">selected</c:if>>Namibia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Nauru')}">selected</c:if>>Nauru</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Nepal')}">selected</c:if>>Nepal</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Netherlands')}">selected</c:if>>Netherlands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('New Caledonia')}">selected</c:if>>New Caledonia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('New Zealand')}">selected</c:if>>New Zealand</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Nicaragua')}">selected</c:if>>Nicaragua</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Niger')}">selected</c:if>>Niger</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Nigeria')}">selected</c:if>>Nigeria</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Niue')}">selected</c:if>>Niue</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Norfolk Island')}">selected</c:if>>Norfolk Island</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Northern Mariana Islands')}">selected</c:if>>Northern Mariana Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Norway')}">selected</c:if>>Norway</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Oman')}">selected</c:if>>Oman</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Pakistan')}">selected</c:if>>Pakistan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Palau')}">selected</c:if>>Palau</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Palestinian Territory, Occupied')}">selected</c:if>>Palestinian Territory, Occupied</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Panama')}">selected</c:if>>Panama</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Papua New Guinea')}">selected</c:if>>Papua New Guinea</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Paraguay')}">selected</c:if>>Paraguay</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Peru')}">selected</c:if>>Peru</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Philippines')}">selected</c:if>>Philippines</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Pitcairn')}">selected</c:if>>Pitcairn</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Poland')}">selected</c:if>>Poland</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Portugal')}">selected</c:if>>Portugal</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Puerto Rico')}">selected</c:if>>Puerto Rico</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Qatar')}">selected</c:if>>Qatar</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Réunion')}">selected</c:if>>Réunion</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Romania')}">selected</c:if>>Romania</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Russian Federation')}">selected</c:if>>Russian Federation</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Rwanda')}">selected</c:if>>Rwanda</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Saint Barthélemy')}">selected</c:if>>Saint Barthélemy</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Saint Helena, Ascension and Tristan da Cunha')}">selected</c:if>>Saint Helena, Ascension and Tristan da Cunha</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Saint Kitts and Nevis')}">selected</c:if>>Saint Kitts and Nevis</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Saint Lucia')}">selected</c:if>>Saint Lucia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Saint Martin (French part)')}">selected</c:if>>Saint Martin (French part)</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Saint Pierre and Miquelon')}">selected</c:if>>Saint Pierre and Miquelon</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Saint Vincent and the Grenadines')}">selected</c:if>>Saint Vincent and the Grenadines</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Samoa')}">selected</c:if>>Samoa</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('San Marino')}">selected</c:if>>San Marino</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Sao Tome and Principe')}">selected</c:if>>Sao Tome and Principe</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Saudi Arabia')}">selected</c:if>>Saudi Arabia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Senegal')}">selected</c:if>>Senegal</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Serbia')}">selected</c:if>>Serbia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Seychelles')}">selected</c:if>>Seychelles</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Sierra Leone')}">selected</c:if>>Sierra Leone</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Singapore')}">selected</c:if>>Singapore</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Sint Maarten (Dutch part)')}">selected</c:if>>Sint Maarten (Dutch part)</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Slovakia')}">selected</c:if>>Slovakia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Slovenia')}">selected</c:if>>Slovenia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Solomon Islands')}">selected</c:if>>Solomon Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Somalia')}">selected</c:if>>Somalia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('South Africa')}">selected</c:if>>South Africa</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('South Georgia and the South Sandwich Islands')}">selected</c:if>>South Georgia and the South Sandwich Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('South Sudan')}">selected</c:if>>South Sudan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Spain')}">selected</c:if>>Spain</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Sri Lanka')}">selected</c:if>>Sri Lanka</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Sudan')}">selected</c:if>>Sudan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Suriname')}">selected</c:if>>Suriname</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Svalbard and Jan Mayen')}">selected</c:if>>Svalbard and Jan Mayen</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Swaziland')}">selected</c:if>>Swaziland</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Sweden')}">selected</c:if>>Sweden</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Switzerland')}">selected</c:if>>Switzerland</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Syrian Arab Republic')}">selected</c:if>>Syrian Arab Republic</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Taiwan, Province of China')}">selected</c:if>>Taiwan, Province of China</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Tajikistan')}">selected</c:if>>Tajikistan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Tanzania, United Republic of')}">selected</c:if>>Tanzania, United Republic of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Thailand')}">selected</c:if>>Thailand</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Timor-Leste')}">selected</c:if>>Timor-Leste</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Togo')}">selected</c:if>>Togo</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Tokelau')}">selected</c:if>>Tokelau</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Tonga')}">selected</c:if>>Tonga</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Trinidad and Tobago')}">selected</c:if>>Trinidad and Tobago</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Tunisia')}">selected</c:if>>Tunisia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Turkey')}">selected</c:if>>Turkey</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Turkmenistan')}">selected</c:if>>Turkmenistan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Turks and Caicos Islands')}">selected</c:if>>Turks and Caicos Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Tuvalu')}">selected</c:if>>Tuvalu</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Uganda')}">selected</c:if>>Uganda</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Ukraine')}">selected</c:if>>Ukraine</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('United Arab Emirates')}">selected</c:if>>United Arab Emirates</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('United Kingdom')}">selected</c:if>>United Kingdom</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('United States')}">selected</c:if>>United States</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('United States Minor Outlying Islands')}">selected</c:if>>United States Minor Outlying Islands</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Uruguay')}">selected</c:if>>Uruguay</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Uzbekistan')}">selected</c:if>>Uzbekistan</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Vanuatu')}">selected</c:if>>Vanuatu</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Venezuela, Bolivarian Republic of')}">selected</c:if>>Venezuela, Bolivarian Republic of</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Viet Nam')}">selected</c:if>>Viet Nam</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Virgin Islands, British')}">selected</c:if>>Virgin Islands, British</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Virgin Islands, U.S.')}">selected</c:if>>Virgin Islands, U.S.</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Wallis and Futuna')}">selected</c:if>>Wallis and Futuna</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Western Sahara')}">selected</c:if>>Western Sahara</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Yemen')}">selected</c:if>>Yemen</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Zambia')}">selected</c:if>>Zambia</option>
                                                    <option <c:if test="${EditNurseDetails.nurseCountry.equals('Zimbabwe')}">selected</c:if>>Zimbabwe</option>
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
                                    <h2>Edit Nurse <small>Available Informations</small></h2>
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
                                            <c:forEach items="${NurseDetails}" var="nurse">
                                                <tr>
                                                    <td>${nurse.nurseFirstName} ${nurse.nurseLastName}</td>
                                                    <td>${nurse.nurseGender}</td>
                                                    <td>${nurse.nurseDOB}</td>
                                                    <td>${nurse.nurseEduBG}</td>
                                                    <td>${nurse.nurseCountry}</td>
                                                    <td><a href="${cp}/admin/nurse/edit/${nurse.nurseId}">Edit</a></td>
                                                    <td><a href="${cp}/admin/nurse/delete/${nurse.nurseId}">Delete</a></td>
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
