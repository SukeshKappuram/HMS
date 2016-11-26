<%-- 
    Document   : addAppointment
    Created on : Nov 24, 2016, 1:00:49 AM
    Author     : iamsu
--%>

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
        
        <div class="container">
  <h2>Appointment</h2>
  <form>
    <div class="form-group">
      <label for="pur">Doctor</label>
      <input type="text" class="form-control" id="pur" placeholder="Doctor">
    </div>
    <div class="form-group">
      <label for="tm">Time</label>
      <input type="time" class="form-control" id="tm" placeholder="Enter password">
    </div>
    <div class="form-group">
      <label for="res">Reason</label>
      <textarea class="form-control" id="res" placeholder="Reason" cols="30" rows="3"></textarea>
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Visited Previously</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
        <%@include file="footer.html" %>
    </body>
</html>
