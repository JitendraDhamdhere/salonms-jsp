<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="includes/conn.jsp"%>
<%
String packageName = request.getParameter("package");
String price = "";

try {
	PreparedStatement ps = con.prepareStatement("SELECT package_price FROM packages WHERE package_name = ?");
	ps.setString(1, packageName);
	ResultSet rs = ps.executeQuery();
	if (rs.next()) {
		price = rs.getString("package_price");
	}
} catch (Exception e) {
	e.printStackTrace();
} finally {
	if (con != null)
		con.close();
}

out.print(price);
%>