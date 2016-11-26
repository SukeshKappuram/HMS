<%-- 
    Document   : logout
    Created on : Oct 15, 2016, 7:57:38 PM
    Author     : 11502-CL02
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("user", null);
            
        %>
        Thank You <%=request.getParameter("n")%>
        Your Logged out Successfully!!
        Re-Login <a href="index.html">here</a>
       
    </body>
</html>
