<%-- 
    Document   : addPatient
    Created on : Apr 30, 2018, 6:51:24 PM
    Author     : elwyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "cp" value="${pageContext.request.contextPath}"></c:set>

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
                                        <h2>Add Patient <small>Brief information</small></h2>
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
                                        <form action="${cp}/admin/patient/add" method="POST" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" name="patientFirstName" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="last-name" name="patientLastName" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender <span class="required">*</span></label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                M:<input type="radio" class="flat" name="patientGender" id="genderM" value="M" checked="" />
                                                &nbsp;F:<input type="radio" class="flat" name="patientGender" id="genderF" value="F" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="birthday" name="patientDOB" class="date-picker form-control col-md-7 col-xs-12" required="required" type="date">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="health-problem">Health Problem <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="text" id="health-problem" name="healthProblem" required="required" class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="country">Country <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <select class="form-control" name="patientCountry">
                                                    <option>Afghanistan</option>
                                                    <option>Åland Islands</option>
                                                    <option>Albania</option>
                                                    <option>Algeria</option>
                                                    <option>American Samoa</option>
                                                    <option>Andorra</option>
                                                    <option>Angola</option>
                                                    <option>Anguilla</option>
                                                    <option>Antarctica</option>
                                                    <option>Antigua and Barbuda</option>
                                                    <option>Argentina</option>
                                                    <option>Armenia</option>
                                                    <option>Aruba</option>
                                                    <option>Australia</option>
                                                    <option>Austria</option>
                                                    <option>Azerbaijan</option>
                                                    <option>Bahamas</option>
                                                    <option>Bahrain</option>
                                                    <option>Bangladesh</option>
                                                    <option>Barbados</option>
                                                    <option>Belarus</option>
                                                    <option>Belgium</option>
                                                    <option>Belize</option>
                                                    <option>Benin</option>
                                                    <option>Bermuda</option>
                                                    <option>Bhutan</option>
                                                    <option>Bolivia, Plurinational State of</option>
                                                    <option>Bonaire, Sint Eustatius and Saba</option>
                                                    <option>Bosnia and Herzegovina</option>
                                                    <option>Botswana</option>
                                                    <option>Bouvet Island</option>
                                                    <option>Brazil</option>
                                                    <option>British Indian Ocean Territory</option>
                                                    <option>Brunei Darussalam</option>
                                                    <option>Bulgaria</option>
                                                    <option>Burkina Faso</option>
                                                    <option>Burundi</option>
                                                    <option>Cambodia</option>
                                                    <option>Cameroon</option>
                                                    <option>Canada</option>
                                                    <option>Cape Verde</option>
                                                    <option>Cayman Islands</option>
                                                    <option>Central African Republic</option>
                                                    <option>Chad</option>
                                                    <option>Chile</option>
                                                    <option>China</option>
                                                    <option>Christmas Island</option>
                                                    <option>Cocos (Keeling) Islands</option>
                                                    <option>Colombia</option>
                                                    <option>Comoros</option>
                                                    <option>Congo</option>
                                                    <option>Congo, the Democratic Republic of the</option>
                                                    <option>Cook Islands</option>
                                                    <option>Costa Rica</option>
                                                    <option>Côte d Ivoire</option>
                                                    <option>Croatia</option>
                                                    <option>Cuba</option>
                                                    <option>Curaçao</option>
                                                    <option>Cyprus</option>
                                                    <option>Czech Republic</option>
                                                    <option>Denmark</option>
                                                    <option>Djibouti</option>
                                                    <option>Dominica</option>
                                                    <option>Dominican Republic</option>
                                                    <option>Ecuador</option>
                                                    <option>Egypt</option>
                                                    <option>El Salvador</option>
                                                    <option>Equatorial Guinea</option>
                                                    <option>Eritrea</option>
                                                    <option>Estonia</option>
                                                    <option>Ethiopia</option>
                                                    <option>Falkland Islands (Malvinas)</option>
                                                    <option>Faroe Islands</option>
                                                    <option>Fiji</option>
                                                    <option>Finland</option>
                                                    <option>France</option>
                                                    <option>French Guiana</option>
                                                    <option>French Polynesia</option>
                                                    <option>French Southern Territories</option>
                                                    <option>Gabon</option>
                                                    <option>Gambia</option>
                                                    <option>Georgia</option>
                                                    <option>Germany</option>
                                                    <option>Ghana</option>
                                                    <option>Gibraltar</option>
                                                    <option>Greece</option>
                                                    <option>Greenland</option>
                                                    <option>Grenada</option>
                                                    <option>Guadeloupe</option>
                                                    <option>Guam</option>
                                                    <option>Guatemala</option>
                                                    <option>Guernsey</option>
                                                    <option>Guinea</option>
                                                    <option>Guinea-Bissau</option>
                                                    <option>Guyana</option>
                                                    <option>Haiti</option>
                                                    <option>Heard Island and McDonald Islands</option>
                                                    <option>Holy See (Vatican City State)</option>
                                                    <option>Honduras</option>
                                                    <option>Hong Kong</option>
                                                    <option>Hungary</option>
                                                    <option>Iceland</option>
                                                    <option>India</option>
                                                    <option>Indonesia</option>
                                                    <option>Iran, Islamic Republic of</option>
                                                    <option>Iraq</option>
                                                    <option>Ireland</option>
                                                    <option>Isle of Man</option>
                                                    <option>Israel</option>
                                                    <option>Italy</option>
                                                    <option>Jamaica</option>
                                                    <option>Japan</option>
                                                    <option>Jersey</option>
                                                    <option>Jordan</option>
                                                    <option>Kazakhstan</option>
                                                    <option>Kenya</option>
                                                    <option>Kiribati</option>
                                                    <option>Korea, Democratic Peoples Republic of</option>
                                                    <option>Korea, Republic of</option>
                                                    <option>Kuwait</option>
                                                    <option>Kyrgyzstan</option>
                                                    <option>Lao Peoples Democratic Republic</option>
                                                    <option>Latvia</option>
                                                    <option>Lebanon</option>
                                                    <option>Lesotho</option>
                                                    <option>Liberia</option>
                                                    <option>Libya</option>
                                                    <option>Liechtenstein</option>
                                                    <option>Lithuania</option>
                                                    <option>Luxembourg</option>
                                                    <option>Macao</option>
                                                    <option>Macedonia, the former Yugoslav Republic of</option>
                                                    <option>Madagascar</option>
                                                    <option>Malawi</option>
                                                    <option>Malaysia</option>
                                                    <option>Maldives</option>
                                                    <option>Mali</option>
                                                    <option>Malta</option>
                                                    <option>Marshall Islands</option>
                                                    <option>Martinique</option>
                                                    <option>Mauritania</option>
                                                    <option>Mauritius</option>
                                                    <option>Mayotte</option>
                                                    <option>Mexico</option>
                                                    <option>Micronesia, Federated States of</option>
                                                    <option>Moldova, Republic of</option>
                                                    <option>Monaco</option>
                                                    <option>Mongolia</option>
                                                    <option>Montenegro</option>
                                                    <option>Montserrat</option>
                                                    <option>Morocco</option>
                                                    <option>Mozambique</option>
                                                    <option>Myanmar</option>
                                                    <option>Namibia</option>
                                                    <option>Nauru</option>
                                                    <option>Nepal</option>
                                                    <option>Netherlands</option>
                                                    <option>New Caledonia</option>
                                                    <option>New Zealand</option>
                                                    <option>Nicaragua</option>
                                                    <option>Niger</option>
                                                    <option>Nigeria</option>
                                                    <option>Niue</option>
                                                    <option>Norfolk Island</option>
                                                    <option>Northern Mariana Islands</option>
                                                    <option>Norway</option>
                                                    <option>Oman</option>
                                                    <option>Pakistan</option>
                                                    <option>Palau</option>
                                                    <option>Palestinian Territory, Occupied</option>
                                                    <option>Panama</option>
                                                    <option>Papua New Guinea</option>
                                                    <option>Paraguay</option>
                                                    <option>Peru</option>
                                                    <option>Philippines</option>
                                                    <option>Pitcairn</option>
                                                    <option>Poland</option>
                                                    <option>Portugal</option>
                                                    <option>Puerto Rico</option>
                                                    <option>Qatar</option>
                                                    <option>Réunion</option>
                                                    <option>Romania</option>
                                                    <option>Russian Federation</option>
                                                    <option>Rwanda</option>
                                                    <option>Saint Barthélemy</option>
                                                    <option>Saint Helena, Ascension and Tristan da Cunha</option>
                                                    <option>Saint Kitts and Nevis</option>
                                                    <option>Saint Lucia</option>
                                                    <option>Saint Martin (French part)</option>
                                                    <option>Saint Pierre and Miquelon</option>
                                                    <option>Saint Vincent and the Grenadines</option>
                                                    <option>Samoa</option>
                                                    <option>San Marino</option>
                                                    <option>Sao Tome and Principe</option>
                                                    <option>Saudi Arabia</option>
                                                    <option>Senegal</option>
                                                    <option>Serbia</option>
                                                    <option>Seychelles</option>
                                                    <option>Sierra Leone</option>
                                                    <option>Singapore</option>
                                                    <option>Sint Maarten (Dutch part)</option>
                                                    <option>Slovakia</option>
                                                    <option>Slovenia</option>
                                                    <option>Solomon Islands</option>
                                                    <option>Somalia</option>
                                                    <option>South Africa</option>
                                                    <option>South Georgia and the South Sandwich Islands</option>
                                                    <option>South Sudan</option>
                                                    <option>Spain</option>
                                                    <option>Sri Lanka</option>
                                                    <option>Sudan</option>
                                                    <option>Suriname</option>
                                                    <option>Svalbard and Jan Mayen</option>
                                                    <option>Swaziland</option>
                                                    <option>Sweden</option>
                                                    <option>Switzerland</option>
                                                    <option>Syrian Arab Republic</option>
                                                    <option>Taiwan, Province of China</option>
                                                    <option>Tajikistan</option>
                                                    <option>Tanzania, United Republic of</option>
                                                    <option>Thailand</option>
                                                    <option>Timor-Leste</option>
                                                    <option>Togo</option>
                                                    <option>Tokelau</option>
                                                    <option>Tonga</option>
                                                    <option>Trinidad and Tobago</option>
                                                    <option>Tunisia</option>
                                                    <option>Turkey</option>
                                                    <option>Turkmenistan</option>
                                                    <option>Turks and Caicos Islands</option>
                                                    <option>Tuvalu</option>
                                                    <option>Uganda</option>
                                                    <option>Ukraine</option>
                                                    <option>United Arab Emirates</option>
                                                    <option>United Kingdom</option>
                                                    <option>United States</option>
                                                    <option>United States Minor Outlying Islands</option>
                                                    <option>Uruguay</option>
                                                    <option>Uzbekistan</option>
                                                    <option>Vanuatu</option>
                                                    <option>Venezuela, Bolivarian Republic of</option>
                                                    <option>Viet Nam</option>
                                                    <option>Virgin Islands, British</option>
                                                    <option>Virgin Islands, U.S.</option>
                                                    <option>Wallis and Futuna</option>
                                                    <option>Western Sahara</option>
                                                    <option>Yemen</option>
                                                    <option>Zambia</option>
                                                    <option>Zimbabwe</option>
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