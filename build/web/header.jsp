<%-- 
    Document   : header
    Created on : Nov 22, 2016, 7:59:55 PM
    Author     : iamsu
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <link rel="icon" type="image/png" href="/ecomerce/resources/images/cart.png">
        <title>HMS</title>
        <style>
           .header{
                width: 100%;
                top:0px;
                left: 0px;
                height: 80px;
                background-size: 100% 100px;
                font-size: 50px;
                text-align: center;
                font-family: Courier New;
                font-weight: 900;
                color: #808000;
            }
            .header small{
                font-size: 15px;
                float: right;
                padding-right: 20px;
            }
            .menu a{
                font-size: 15px;
                font-family: monospace;
                color: whitesmoke;
                text-decoration: none;
                display: block;
                float: right;
                background: #808000;
                padding: 5px 15px 5px 15px;
            }
             .sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 100px;
    left: 0;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 20px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.dot {
  cursor:pointer;
  height: 13px;
  width: 13px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}
div.scrollmenu {
    overflow: auto;
    white-space: nowrap;
    text-align: center;
}
div.scrollmenu a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px;
    text-decoration: none;
    padding: 15px 35px 15px 35px;
}

div.scrollmenu a:hover {
    background-color: #777;
}
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }

  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
   footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    }
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    }
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
 #search {
    float: right;
    margin-top: 9px;
    width: 250px;
}

.search {
    padding: 5px 0;
    width: 330px;
    height: 30px;
    position: relative;
    left: 10px;
    float: left;
    line-height: 22px;
}

    .search input {
        position: absolute;
        width: 0px;
        float: Left;
        margin-left: 310px;
        -webkit-transition: all 0.7s ease-in-out;
        -moz-transition: all 0.7s ease-in-out;
        -o-transition: all 0.7s ease-in-out;
        transition: all 0.7s ease-in-out;
        height: 30px;
        line-height: 18px;
        padding: 0 2px 0 2px;
        border-radius:1px;
    }

        .search:hover input, .search input:focus {
            width: 300px;
            margin-left: 0px;
        }
        
        .search:hover i{
            visibility: hidden;
        }

.btn {
    height: 30px;
    position: absolute;
    right: 0;
    top: 5px;
    border-radius:1px;
}
.dImage{
      width: 35px;
      height: 35px;
  }
        </style>
    </head>
    <body>
        <div class="header"> All Health !! 
            <small>
                <br/>
                <c:if test="${empty user}">
                    <a href='index.jsp?r=Doctor'>I'm a doctor</a><br/>
                    <a href='index.jsp?r=Patient'>I'm a patient</a>
                </c:if>
                <c:if test="${not empty user}">
                    <a href='#'>Hi ${user.firstName} ${user.lastName} !!</a><br/>
                </c:if>
            </small>
        </div>
    </body>
</html>
