<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap-5.3.0-alpha1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
    <!-- Add IntroJs styles -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/intro.js/2.7.0/introjs.min.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/de.css">
    <link rel="icon" href="img/favicon.ico">
    <title>Home</title>
</head>
<body>    
  <div class="fx">
<div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" id="cl" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="#abt">About</a>
    <a href="#srv">Services</a>
    <a href="/login">Login</a>
    <a href="/register">Register</a>
    <a href="#cntct">Contact</a>
    
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
    <a  href="/register" onclick="change(this)">Register </a>
    <a  href="#cntct" onclick="change(this)">Contact </a>
    <a  href="#srv" onclick="change(this)">Services</a>
    <a   class="active" href="/" onclick="change(this)"> Home</a>
   
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
  </script>
    <div class="con">
    <div id="chh" class="d-flex align-items-center">
    <div id="sample-text-card" class="card bg-transparent border-0">
        <div class="card-body hrd">
            <h1 style="font-size: 300%;">RUPAYA</h1>
            <br>
            <h5 class="card-title">
                eWallet - Payment Gateway! 
            </h5>
         <p class="card-text">
            With eWallet, 
            <br>
            each user can add money by linking a bank account and managing money on their phone or computer with our eWallet dashboard.
            <br><br>
         </p>
         <div class="hb button-wrapper col-7 d-flex align-items-center">
            <div data-step="2" data-intro="Press to Register as a new User">
            <a href="/register" class="btn btn-md register" role="button">Register</a>
            </div>
            <div data-step="3" data-intro="Press to login , if already registered">
            <a href="/login" class="btn btn-md login" role="button">Login</a> 
            </div>
               <div data-step="1" data-intro="Greetings! , lets take a tour of RUPAYA site">
                    <p><a class="btn btn-md btn-primary b1" role="button" href="javascript:void(0);" onclick="javascript:introJs().setOption('showProgress', true).start();">Start Tour �</a></p>
                </div>
         </div>
        </div>
    </div>
     <div class="im">
        <img src="img/mng-removebg-preview.png" >
        </div>
        <div class="im1">
            </div>
            </div>
        <br>

        <div class="container" data-step="4" data-intro="Here's all feature of this site">
            <div class="row">
                <div class="col-md-4">
                    <h2>Working Hours</h2>
                    <p>
                        The application serves as server, hence it will run 24*7 , thereby making the Rupayas services available for 24*7 . so that the transaction can be taken place any time </p>
                    <p><a class="btn btn-secondary" href="#" role="button">View details �</a></p>
                </div>
                <div class="col-md-4">
                    <h2>Secure Systems</h2>
                    <p>
                        Each merchant is looking for a totally safe, protected gateway that will allow gaining the clients trust. That is why security matters that much. Merchants.</p>
                    <p><a class="btn btn-secondary" href="#" role="button">View details �</a></p>
                </div>
                <div class="col-md-4">
                    <h2>Digital Wallet</h2>
                    <p>
                        supporting peer -to- peer cash transactions between individuals</p>
                    <p><a class="btn btn-secondary" href="#" role="button">View details �</a></p>
                </div>
            </div>
            <hr>
        </div>
        <div class="container">
            <div>
              <div class="section-head col-sm-12" id="srv" >
                <p>SOME REASONS</p>
                <h4>Why Choose Us?</h4>
        
              </div>
              <div class="d-flex align-items-center row" data-step="5" data-intro="Here's all the Service provided are mentioned">
              <div class="col-lg-4 col-sm-6">
                <div class="item"> <span class="icon feature_box_col_one"><i class="fa fa-globe"></i></span>
                  <h6>User authentication and authorization</h6>
                  <p>It can implement user registration & login to ensure that only authorized users can access the payment gateway application.</p>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="item"> <span class="icon feature_box_col_two"><i class="fa fa-anchor"></i></span>
                  <h6>Transaction management</h6>
                  <p> It manages and track all transactions, including successful and failed payments, refunds, and chargebacks.</p>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="item"> <span class="icon feature_box_col_three"><i class="fa fa-hourglass-half"></i></span>
                  <h6>24 x 7 working</h6>
                  <p>It works for 24 x 7 using secure server, available for anytime use. </p>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="item"> <span class="icon feature_box_col_four"><i class="fa fa-database"></i></span>
                  <h6>Security and compliance</h6>
                  <p>You should implement security measures such as encryption , tokenization, and two-factor authentication to protect user data.</p>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="item"> <span class="icon feature_box_col_five"><i class="fa fa-upload"></i></span>
                  <h6>Secure Record</h6>
                  <p>It record safely all user specific transactions and payment records</p>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6">
                <div class="item"> <span class="icon feature_box_col_six"><i class="fa fa-camera"></i></span>
                  <h6>Access Control </h6>
                  <p> Implement access control mechanisms to ensure that only authorized users can access and modify the database.</p>
                </div>
              </div>
              </div>
            </div>
          </div>
        
          <!-- About Us starting point -->
        
          <div class="container" id="abt" data-step="6" data-intro="About RUPAYA">
            <div class="row">
              <div class="col-12">
                <div class="section-heading heading-center">
                  <h1>About RUPAYA</h1>
                </div>
                <div class="content">
                  <div class="ims"><img width="440" height="410"
                      src="img/bnk.gif"></div>
                      <div class="at">
                  <h2>Payment Gateway Application</h2>
        
        
        
                  <p class="about-text">The objective is to build a secure payment webApp . Balancing between your business
                    goals, needs, technical opportunities, and safety is not an easy thing when crafting a
                    payment gateway.</p>
        
                  <p class="about-text">payment gateway is a tech that grabs and transmits payment info from the buying side
                    to those who accept this payment and then reports about the acceptance or refusal.
                    Simply said, it is an online service for payments that acts as a channel to make and get
                    payments. This term serves as an interface between a traders site and its purchaser.
                    
                    Payment gateway integration services may ease how traders integrate the important
                    software. So, those are middlemen when it comes to online fund transactions. It is
                    guaranteed that the customers financial and private information is secure. Such info,
                    in particular, involves credit/debit card numbers, CVV, and expiry date each time a
                    user places an order for a good or service from a payment gateway-activated merchant.
                    the payment gateway app acts as a bridge between the customers and the merchants
                    to facilitate financial transactions.</p>
                </div>
                </div>
              </div>
            </div>
          </div>
          <!-- footer -->
<footer class="foot_sec" id="cntct" data-step="7" data-intro="Contact Informations" >
  <div class="foot_top">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="foot_left">
            <img src="img/rup.png" alt="">
            <p>It is an online service for payments that acts as a channel to make and get
              payments. This term serves as an interface between a traders site and its purchaser.</p>
          </div>
        </div>
        <div class="col-md-6">
          <div class="foot_rt">
            <h3>CONTACTS</h3>
            <p>
              <span>E-mail address: </span>
               rupaya.service@gmail.com
            </p>
            <p>
              <span>Phone: </span>
              <a href="tel:#">934629838</a>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="foot_btm">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <p><a href="#"> RUPAYA</a> � 2023.</p>
        </div>
      </div>
    </div>
  </div>
</footer>
    <script>
        function myFunction() {
           var element = document.body;
           element.classList.toggle("dark-mode");
        }
        </script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/intro.js/2.7.0/intro.min.js"></script>
</body>
</html>