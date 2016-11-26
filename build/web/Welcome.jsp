<%-- 
    Document   : Welcome
    Created on : Nov 24, 2016, 12:50:51 AM
    Author     : iamsu
--%>

<%@page import="com.hms.model.Appointment"%>
<%@page import="com.hms.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.hms.dao.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .user .row{
              color: white;
              background-color: #808000;
              padding: 2% 30px 2% 30px;
            }
            .user .row .col-xs-4{
                text-align: center;
            }
            .user .row .col-xs-4 a{
                color: whitesmoke;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
            
        
        <div class="user">
            <div class="row">
                <div class="col-xs-4"><a href="">Specialist</a></div>
                <div class="col-xs-4"><a href="">Clinics</a></div>
                <div class="col-xs-4"><a href="viewAppointments.jsp">Appointments</a></div>
            </div>
        </div>
        
        <div class="search" style="float: right;margin-right: 5%;">
                <!--<i>Looking for a specialist?</i>-->
                <input type="text" class="form-control input-sm" maxlength="64" placeholder="Search" />
                <button type="submit" class="btn btn-primary btn-sm">Search</button>
  
                <br/><br/>
            
            <img class="dImage" src="http://katarzyna-parkot.pl/img/tooth.png" alt="Dental"/>
            <img class="dImage" src="http://www.graybill.org/wp-content/uploads/2016/03/cardiology-icon.png" alt="cardiologist"/>
            <img class="dImage" src="https://practo-fabric.s3.amazonaws.com/chatterjee-skin-care-center-delhi-1446450760-563716483e7cc.jpg" alt="Dermatologist"/>
            <img class="dImage" src="https://cdn2.iconfinder.com/data/icons/medical-specialties-1/256/Neurology-512.png" alt="Neurologist"/>
            <img class="dImage" src="http://unconfirmedbreakingnews.com/wp-content/uploads/2014/03/8059487-757877-head-brain-vector-icon.jpg" alt="Psychiatrist"/>
            <img class="dImage" src="http://rathiorthoclinic.com/images/knee-icon2.png" alt="Orthopedic Surgeon"/>
            <img class="dImage" src="http://www.ogdenclinic.com/Static/ENT/desktop/img/throatIcon_2x.png" alt="ENT Specialist"/>
            <img class="dImage" src="http://www.mcw.edu/Medical-School-FileLibrary/DEPT-Graduate-School/icons/large/Grad_Physiology_Icon.png" alt="Physiologist"/>
        </div>
        <!--
        <%--<jsp:useBean id="ad" scope="session" class="com.hms.dao.AppointmentDAOImpl">
        <div class="appointments">
            Hello1
                        <c:forEach var="x" items="${ad.getAppointments(user)}">
                            Hello
                            <c:out value="${x}"/>
                        </c:forEach>
                    
        </div>
        </jsp:useBean>--%>-->
        <br/><br/>
        <%
            User user = (User)session.getAttribute("user");
            AppointmentDAO ad=new AppointmentDAOImpl();
        %>
        <table class = "table table-striped">
            <caption>Appointments</caption>
            <thead>
                <tr>
                    <th>Doctor</th>
                    <th>Appointment Time</th>
                    <th>Problem</th>
                </tr>
            </thead>
            <tbody>
        <%
            for(Appointment a:ad.getAppointments(user)){
                %>
                    <tr>
                        <td><%=a.getDoctor().getFirstName()%></td>
                        <td><%=a.getAppointmentdate()%></td>
                        <td><%=a.getProblem()%></td>
                    </tr>
                <%
            }
        %>
            </tbody>
        </table>
        <%@include file="footer.html" %>
    </body>
</html>
