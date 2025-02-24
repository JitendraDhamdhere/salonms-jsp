<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ include file="includes/conn.jsp"%>

<%
    // Retrieve form parameters
    String aname = request.getParameter("txtser"); // Service or Package Name
    String uname = "Guest"; // You can replace this with session username if logged in
    String adate = request.getParameter("txtdate");
    String atime = request.getParameter("txttime");
    String aloc = request.getParameter("txtarea");
    String price = request.getParameter("txtprice");
    String astatus = "Pending"; // Default status for new appointment

    try {
        // Prepare SQL Insert statement
        String sql = "INSERT INTO appoint (aname, uname, adate, atime, aloc, price, astatus) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);

        ps.setString(1, aname);
        ps.setString(2, uname);
        ps.setString(3, adate);
        ps.setString(4, atime);
        ps.setString(5, aloc);
        ps.setString(6, price);
        ps.setString(7, astatus);

        int result = ps.executeUpdate();

        if (result > 0) {
%>
            <script>
                alert("Appointment booked successfully!");
                window.location.href = "frmAppoint.jsp"; // Redirect back to booking page
            </script>
<%
        } else {
%>
            <script>
                alert("Failed to book appointment. Try again.");
                window.history.back(); // Go back to previous page
            </script>
<%
        }
        ps.close();
    } catch (Exception e) {
        e.printStackTrace();
%>
        <script>
            alert("Error: <%= e.getMessage() %>");
            window.history.back();
        </script>
<%
    }
%>
