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
    <title>login</title>
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
      <a class="active" href="/login" onclick="change(this)"> Login</a>
    <a  href="/register" onclick="change(this)">Register </a>
    <a    href="/" onclick="change(this)"> Home</a>
   
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
    <img class="reg card col-3" src="https://cdn.dribbble.com/users/2213143/screenshots/7971141/media/184cdea9758c029d9feef05432222403.gif"/>
    <div class="card login-form-card col-4  bg-transparent border-0">
        <div class="card-body">          
            <h3 class="form-header card-title mb-3">
                <i class="fa fa-user-circle"></i>
                Login
            </h3>
                       <!-- Display Message -->
            <c:if test="${requestScope.success != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.success}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->

            <!-- Display Message -->
            <c:if test="${requestScope.error != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.error}</b>
                </div>
            </c:if>
            <!-- End Of Display Message -->

            <!-- Display Message -->
            <c:if test="${logged_out != null}">
                <div class="alert alert-info text-center border border-info">
                    <b>${logged_out}</b>
                </div>
            </c:if>

            <form action="/login" method="POST" class="login-form">
                <div class="form-group col">
                    <input type="email" name="email" class="form-control" placeholder="Enter Email"/>
                </div>
                    <div class="form-group col">
                        <input type="password" name="password" class="form-control" placeholder="Enter Password"/>
                    </div>
                    <div class="form-group col">
                    <input type="hidden" name="_token" value="${token}"/>
                </div>
                <div class="form-group col">
                <button class="btn btn-md">Login</button>    
                </div>
            </form>
            <p class="card-text my-2">
                Don't have an account ?
                <a href="/register" role="button">Register</a>

            </p>
        </div>
        </div>
    </div>

</body>
</html>