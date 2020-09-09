<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%if(session.getAttribute("l_id")==null)
	
	

response.sendRedirect("doctorlog.jsp");
	%>
<form action="LogoutServlet">
<div class="form-textbox">
                        <input type="submit" name="logout" id="logout" class="logout" value="Logout" />
                    </div>
     </form>
     

</body>
</html>