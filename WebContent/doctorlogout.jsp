<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
   <%@page import ="javax.swing.JOptionPane" %> 
  <%@page import= "java.io.IOException"%>
<%@page import= "java.io.PrintWriter"%>
  <%@page import= "javax.servlet.ServletException"%>
  <%@page import= "javax.servlet.http.HttpServlet"%>
  <%@page import ="javax.servlet.http.HttpServletRequest"%>
  
  <%@page import= "javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>





<% 
public class doctorlogout extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        request.getSession().invalidate();
        //out.println("<h4>successfully logged out</h4>");
        request.getRequestDispatcher("index.html").include(request,response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}














%>
<body>

</body>
</html>