<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap-5.3.0-alpha1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/fontawesome-free-6.3.0-web/css/all.css">
    <link rel="stylesheet" href="css/de.css?">
    <link rel="stylesheet" href="css/default.css?">
    <link rel="icon" href="img/favicon.ico?">
    <title>register</title>
</head>
<body>
  <div class="fx">
<div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" id="cl" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="/">Home</a>
    <a href="/login">Login</a>
    <a href="/register">Register</a>
    
  </div>
  
    <span class="lin" style="font-size:30px " onclick="openNav()">&#9776; </span>
    <div class="logo">RUPAYA</div>
    <div style="position: fixed; padding-left:40%; display: flex;">
  <div class="nv">
    <div class="cm">
        Change Mode:
        <label class="switch">
            <input type="checkbox" onclick="myFunction()">
            <span class="slider round"></span>
          </label>
        </div>
      <a  href="/login" onclick="change(this)"> Login</a>
    <a  class="active"  href="/register" onclick="change(this)">Register </a>
    <a   href="/" onclick="change(this)"> Home</a>
   
  </div>
  </div>
</div>
  <script>
  function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
  }
  
  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
  }
  function change(elem){
  var list = document.querySelectorAll(".nv a");

  for (var i = 0; i < list.length; ++i) {
    list[i].classList.remove('active');
  }
  elem.classList.add('active');
}
  function myFunction() {
      var element = document.body;
      element.classList.toggle("dark-mode");
   }
  </script>
  <div  class= "d-flex align-items-center justify-content-center">
    <img class="reg card col-3" src="img/log.gif"/>
    <div class="card registeration-form-card col-6  bg-transparent border-0">
        <div class="card-body">          
            <h3 class="form-header card-title mb-3">
                <i class="fa fa-edit"></i>
                Register
            </h3>
            
            <c:if test="${requestScope.passwordMisMatch != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.passwordMisMatch}</b>
                </div>
            </c:if>
            
            <c:if test="${requestScope.success != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.success}</b>
                </div>
            </c:if>
            
            
            <form:form action="" class="reg-form" modelAttribute="registerUser">
                <div class="row">
                    <div class="form-group col">
                        <form:input type="text" path="first_name" class="form-control" placeholder="Enter First Name"/>
                    	<form:errors path="first_name" class="text-white bg-danger"/>
                    </div>
                    <div class="form-group col">
                    <form:input type="text" path="last_name" class="form-control" placeholder="Enter Last Name"/>
                    	<form:errors path="last_name" class="text-white bg-danger"/>
                    </div>
                </div>

                <div class="form-group col">
                    <form:input type="email" path="email" class="form-control" placeholder="Enter Email"/>
                                        	<form:errors path="email" class="text-white bg-danger"/>
                    
                </div>
                <div class="row">
                    <div class="form-group col">
                        <form:input type="password" path="password" class="form-control" placeholder="Enter Password"/>
                                            	<form:errors path="password" class="text-white bg-danger"/>
                        
                    </div>
                    <div class="form-group col">
                        <input type="password" name="confirm_password" class="form-control" placeholder="Confirm Password"/>
                                            	<small class="text-white bg-danger">${confirm_pass}</small>
                        
                    </div>
                </div>
                <div class="form-group col">
                <button class="btn btn-md">Register</button>    
                </div>
            </form:form>
            <p class="card-text my-2">
                Already have an account ?
                <a href="/login" role="button">Sign In</a>

            </p>
        </div>
    </div>
</div>
</body>
</html>