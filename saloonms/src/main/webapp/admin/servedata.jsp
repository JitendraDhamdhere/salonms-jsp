<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="../includes/conn.jsp"%>




<%!String ename, efee, eimg, edet;%>

<%
ename = request.getParameter("txtname");

efee = request.getParameter("txtfee");
eimg = request.getParameter("txtimg");

edet = request.getParameter("txtdet");

try {
	PreparedStatement ps = con
	.prepareStatement("INSERT INTO `services`(`service_name`, `price`, `service_image`, `service_description`) VALUES(?,?,?,?)");
	ps.setString(1, ename);
	ps.setString(2, efee);
	ps.setString(3, eimg);
	ps.setString(4, edet);

	int x = ps.executeUpdate();
	if (x > 0) {
%>
<script>
	if (confirm("Services Details Added Successfully")) {
		location = "AdminDashboard.jsp";
	} else {
		location = "AdminDashboard.jsp";
	}
</script>
<%
} else {
%>
<script>
	if (confirm("Error In Adding Event Details ")) {
		location = "AdminDashboard.jsp";
	} else {
		location = "AdminDashboard.jsp";
	}
</script>
<%
}

} catch (Exception e) {
out.println(e);
}
%>