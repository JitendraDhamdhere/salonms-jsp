<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="includes/conn.jsp"%>





<%!String aname, dt, time, area;%>

<%
/* String un = session.getAttribute("cust").toString();
 */
/* String un = "Customer";

aname = request.getParameter("txtser");
dt = request.getParameter("txtdate");
time = request.getParameter("txttime");
area = request.getParameter("txtarea");
 */
try {
	/* PreparedStatement ps = con.prepareStatement(
	"INSERT INTO `appoint`(`aname`,`uname`, `adate`, `atime`, `astatus`, `aloc`,`price`) VALUES(?,?,?,?,?,?,?)");
	ps.setString(1, "");
	ps.setString(2, "");
	ps.setString(3, LocalDate.now().toString());
	ps.setString(4, "");
	ps.setString(5, "Book");
	ps.setString(6, "");
	ps.setString(7, "");

	int x = ps.executeUpdate();
	if (x > 0) { */
%>
<script>
	if (confirm("Appointment  Successful!!")) {
		location = "pappoint.jsp";
	} else {
		location = "pappoint.jsp";
	}
</script>
<%
/* } else { */
%>
<script>
	if (confirm("Error in Registration ")) {
		location = "pappoint.jsp";
	} else {
		location = "pappoint.jsp";
	}
</script>
<%
/* } */
} catch (Exception e) {
out.println(e);
}
%>