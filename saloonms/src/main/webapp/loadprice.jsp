<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="includes/conn.jsp"%>

<%
String city = request.getParameter("aid");
if (city != null && !city.isEmpty()) {
	PreparedStatement ps = null;
	ResultSet rs = null;

	try {
		ps = con.prepareStatement("SELECT price FROM `services` WHERE `id`=?");
		ps.setString(1, city);
		rs = ps.executeQuery();

		while (rs.next()) {
%>
<option value="<%=rs.getString("price")%>">
	<%=rs.getString("price")%>
</option>
<%
}
} catch (Exception e) {
e.printStackTrace(); // Log the error
} finally {
if (rs != null)
try {
	rs.close();
} catch (Exception e) {
	e.printStackTrace();
}
if (ps != null)
try {
	ps.close();
} catch (Exception e) {
	e.printStackTrace();
}
}
}
%>
