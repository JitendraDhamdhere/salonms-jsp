<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="../includes/conn.jsp"%>
<%@ page
	import="java.sql.*, java.io.*, javax.servlet.http.*, javax.servlet.*, java.nio.file.*"%>

<%
String packageName = request.getParameter("package_name");
String packagePrice = request.getParameter("package_price");
String packageDescription = request.getParameter("package_description");

Part filePart = request.getPart("package_image");
String fileName = filePart.getSubmittedFileName();

// Define upload path
String uploadPath = application.getRealPath("/") + "uploads" + File.separator + fileName;
File uploadDir = new File(application.getRealPath("/") + "uploads");

if (!uploadDir.exists()) {
	uploadDir.mkdir();
}

try (InputStream fileContent = filePart.getInputStream()) {
	Files.copy(fileContent, new File(uploadPath).toPath(), StandardCopyOption.REPLACE_EXISTING);
}

String imagePath = "uploads/" + fileName;

try {
	PreparedStatement ps = con.prepareStatement(
	"INSERT INTO packages (package_name, package_price, package_image, package_description) VALUES (?, ?, ?, ?)");

	ps.setString(1, packageName);
	ps.setString(2, packagePrice);
	ps.setString(3, imagePath);
	ps.setString(4, packageDescription);

	int result = ps.executeUpdate();

	if (result > 0) {
%>
<script>
	alert("Package Details Added Successfully");
	window.location.href = "AdminDashboard.jsp";
</script>
<%
} else {
%>
<script>
	alert("Error In Adding Package Details");
	window.location.href = "AdminDashboard.jsp";
</script>
<%
}
} catch (Exception e) {
out.println("<script>alert('Error: " + e.getMessage() + "');</script>");
}
%>
