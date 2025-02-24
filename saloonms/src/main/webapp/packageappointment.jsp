<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Package Appointment</title>
<%@ include file="includes/conn.jsp"%>
<%@ include file="includes/links.html"%>
<%@ include file="includes/navbar2.html"%>

<script src="js/jquery.js"></script>
<script src="js/form_val.js"></script>
</head>
<body>
    <div id="contact" class="contact my-">
        <div class="container">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-center">
                    <div class="title">
                        <h2>
                            Book Your<strong class="white"> Package Appointment</strong>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ">
                    <form action="pappointdata.jsp" method="get" id="frmPackage">
                        <div class="row ">
                            <% 
                            PreparedStatement ps = con.prepareStatement("SELECT package_name FROM packages");
                            ResultSet rs = ps.executeQuery();
                            %>
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                <select class="form-control" style="height: 50px" name="txtpackage"
                                    onblur="validateEmpty(this,document.getElementById('errpack'),'Select a Package')">
                                    <option>Select Package</option>
                                    <% while (rs.next()) { %>
                                    <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                                    <% } %>
                                </select>
                                <span class="text-danger wid" id="errpack"></span>
                            </div>
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                <input class="form-control" placeholder="Appointment Date" type="date" name="txtdate"
                                    onblur="validateEmpty(this,document.getElementById('errdate'),'Select Appointment Date')">
                                <span class="text-danger wid" id="errdate"></span>
                            </div>
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                <input class="form-control" placeholder="Appointment Time" type="text" name="txttime"
                                    onblur="validateEmpty(this,document.getElementById('errtime'),'Enter the Time')">
                                <span class="text-danger" id="errtime"></span>
                            </div>
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                <select class="form-control" style="height: 50px" name="txtarea"
                                    onblur="validateEmpty(this,document.getElementById('errloc'),'Select the Location')">
                                    <option value="">--Choose Our Area--</option>
                                    <option value="Pune">Pune</option>
                                    <option value="Nashik">Nashik</option>
                                    <option value="Mumbai">Mumbai</option>
                                </select>
                                <span class="text-danger wid" id="errloc"></span>
                            </div>
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                <button type="submit" class="send"
                                    style="background-color: gray; margin-left: 180px">Book</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="img-box">
                        <figure>
                            <img src="images/package.png" width="500" height="400" style="border: 0;">
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<%@ include file="includes/links2.html"%>
</html>
