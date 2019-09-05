<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Info Verification</title>
</head>
<body>
	<%
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String addy = request.getParameter("addy");
		String phone = request.getParameter("phone");
		
		try{
			if(fName.matches("[A-Z][a-z]*") && lName.matches("[A-Z][a-zA-Z]*"))
				out.println("<h1>Valid Name!</h1>");
			if(addy.matches("\\d+\\s+([a-zA-Z]+|[a-zA-Z]+\\s[a-zA-Z]+)"))
				out.println("<h1>Valid Address!</h1>");
			if(phone.matches("\\d{10}"))
				out.println("<h1>Valid Phone Number!</h1>");
		} catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>