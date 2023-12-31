<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/help.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div class="little-footer">
        <div class="contact-item">
            <span>
                <i class="fa-solid fa-phone"></i>506-272 8115
            
            <span>
                <i class="fa-solid fa-envelope"></i> torkanservice@gmail.com
            </span>
            <span>
              <i class="fa-regular fa-clock"></i>24/7 Service
            </span>
        </div>
        <div class="logo-item">
            <nav class=".nav">
                <ul>
                   <li> <i class="fa-brands fa-facebook-f"></i></li>
                   <li><i class="fa-brands fa-instagram"></i></li> 
                   <li><i class="fa-brands fa-twitter"></i></li> 
                   <li><i class="fa-brands fa-pinterest"></i></li>
                   <li><i class="fa-solid fa-magnifying-glass"></i></li> 
                   <li><i class="fa-solid fa-cart-shopping"></i></li> 
                </ul>
            </nav>
        </div>
    </div><br>
    <header>
        <!-- I add a contactact details like insdagrm/ caal /emai/ -->
        <div class="first-nav"></div>
        <div class="header">
            <div class="logo">
                <img class="live-on" src="../../assets/Icons/live-on.png" alt="">
                <img class="live" src="../../assets/Icons/text-liveon-removebg-preview.png" alt="">
            </div>
            <div class="center">
                <ul>
                    <li><a href="../../Page/Home/home.html">HOME</a></li>
                    <li><a href="">ABOUT</a></li>
                    <li><a href="../../Page/Home/services.html">SERVICES</a></li>
                    <li><a href="">PARTNERS</a></li>
                    <!-- in this place i'm add a few feachers parteners, blog -->
                </ul>
            </div>
        </div>
        
        <!-- <div class="contact">
            <ul>
                <a href="signin.html"><button>Signin</button></a>
                <a href="../../Page/contact.html"><button>+9394959697</button></a>
            </ul>
        </div> -->
    </header>
    <main>
        <div class="contact-help">
            <div class="contact-us">
                <h1>Contact Us</h1>
                <P>Empowering millions of bike service professionals and making two-wheeler maintenance</P>
                <p>simple, cost effective and stress-free.</p>
            </div>
        </div>
        <!-- This is help-line section -->
        <div class="help-page">
            <!-- <div class="help-line"> -->
                <div class="customer">
                     <h2>Customer Helpline</h2> <hr>
                    <div class="custom">
                    <i class="fa-solid fa-phone"></i>
                      <p>+91-8272-05-2002</p>
                    </div>
                </div> <br> 
                <div class="customer">
                     <h2>partner Helpline</h2>
                     <hr>
                    <div class="custom">
                     <i class="fa-solid fa-phone"></i>
                       <p>+91-8272-05-2002</p>
                    </div>
                </div>
            <!-- </div><br> -->
            <!-- <div class="help-mail"> -->
                <div class="customer">
                      <h2>Customer Support Email</h2>
                      <hr>
                    <div class="custom">
                      <i class="fa-solid fa-envelope"></i>
                       <p>Support@torkanservice.com</p>
                    </div>
                </div><br>
                <div class="customer">
                     <h2>Partner Support Email</h2>
                     <hr>
                    <div class="custom">
                     <i class="fa-solid fa-envelope"></i>
                        <p>Partner@torkanservice.com</p>
                    </div>
                </div>
             
            <!-- </div> -->
        </div><br>
        <div class="appoinment-section">
            <div class="addres">
                <label for="">CONTACT DETAILS</label><br>
                <input type="text" placeholder="Your Name*" required aria-label="name" ><br>
                <input type="email" placeholder="Your Email*" required aria-label="emai"><br>
                <input type="number" placeholder="Your Phone" maxlength="10" required aria-label="Phone"><br>
                <input id="message" type="message" placeholder="Additional Questions or Comments" aria-label="message"><br>
                <button><a href="">SEND MESSAGE</a></button>
            </div>
        </div>
      
    </main>
    <button onclick="makeCall('8838331148')">Call</button>

    <!-- This is footer section -->
       <!-- Tist is footer section -->
       <footer>
        <div class="footer-item">
            <div class="main-item">
                <div class="logo">
                    <img class="live-on" src="../../assets/Icons/live-on.png" alt="">
                    <img class="live" src="../../assets/Icons/text-liveon-removebg-preview.png" alt="">
                </div>
                <div class="disicription">
                    <p>Live-On don't simply think about your vehicle, we care about you, therefore, provide doorstep
                        bike repair & services at your place. We provide FREE Pickup and Drop service from your
                        home,
                        office, or anywhere, Transparent Pricing, Roadside Breakdown services at the best price.</p>
                </div>
            </div>
            <div class="sub-item">
                <div class="about-item">
                    <p>About Us</p>
                    <ul>
                        <li>About Live-On</li>
                        <li>Become a partner</li>
                        <li>Offers</li>
                        <li>Cupons</li>
                        <li>Corporates</li>
                    </ul>
                </div>
                <div class="about-item">
                    <p>Our Services</p>
                    <ul>
                        <li>Yearly Live-On Packages</li>
                        <li>Door step Service</li>
                        <li>Accidental Repairs</li>
                        <li>Cupons</li>
                        <li>Breakedown Assistance</li>
                    </ul>
                </div>
                <div class="about-item">
                    <p>Services</p>
                    <ul>
                        <li>Yearly Live-On Packages</li>
                        <li>Door step Service</li>
                        <li>Accidental Repairs</li>
                        <li>Cuppans</li>
                        <li>Breakedown Assistance</li>
                    </ul>
                </div>
            </div>
            <div class="contact-item">
                <p>Contact</p>
                <div class="application">
                    <i class="fa-brands fa-facebook-f"></i>
                    <i class="fa-brands fa-instagram"></i>
                    <i class="fa-brands fa-twitter"></i>
                    <i class="fa-brands fa-youtube"></i>
                </div>
            </div>
        </div>
    </footer>
    <div class="copy-right">
        <p> &copy;Copyright 2023 Carservice Theme by my won design</p>
    </div>
    </footer>
    <script>
        function makeCall(number) {
          window.open(`tel:${number}`);
        }
        </script>
</body>
</html>