<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/liveon-web/assets/css/liveon.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
<title>Live-On index page</title>
</head>
<body>
<nav>
        <div class="logo">
            <a href="./Pages/Home/home.html">
                <img class="live-on" src="/liveon-web/assets/images/live-on.png" alt="">
                <img class="live" src="/liveon-web/assets/images/text-liveon-removebg-preview.png" alt="">
            </a>
        </div>
        <!-- <input type="checkbox" id="check" />
        <label for="check" class="checkbtn">
            <i class="fa-solid fa-bars"></i></label> -->
        <div class="center">
            <ul>
                <li>
                    <a href="#top-home">HOME</a>
                </li>
                <li>
                    <a href="#aboutpage">ABOUT</a>
                </li>
                <li>
                    <a href="#service">SERVICES<a>

                </li>
                <li>
                    <a href="#partners">CUSTOMERS</a>
                </li>
                <!-- in this place i'm add a few feachers parteners, blog -->
            </ul>
        </div>
        <div class="contact">
            <ul>
                <li>
                    <a href="/liveon-web/login.jsp"><button> login </button></a>
                </li>
                <!-- <li>
                    <a href="./Page/create_accound/user-signup.html"><button> Signup </button></a>
                </li> -->

            </ul>
        </div>
    </nav>
<main>
        <div class="top-section" id="top-home">
            <div class="left-item">
                <h1>24/7 on spot<br> break-down support</h1><br>
                <p>Live-On is the perfect BIKE/CAR servicing & repairing app in India that offers end customers BIKE/CAR service or repair at their doorstep at competitive prices.</p>
                <div class="help">
                    <a href="./Page/Home/emergncy.html"><button class="big-btn">GET SERVICE</button></a>
                    <a href="cll.html"><button class="big-btn1">9876543210</button></a>
                </div>
                
            </div>
            <div class="right-item">
                <img src="/liveon-web/assets/images/map-and-navigation123.png" alt="">
            </div>
        </div>
        <!-- This Achivement Section -->
        <div class="achivement">
            <div id="aboutpage">
                <h1>Grow your Business with Live-On</h1>
                <!-- This is customers animetion -->

                <div class="project-counter-wrp">
                    <ul>
                        <li>
                            <p class="number" id="number1">+500</p>
                            <span></span>
                            <p>Partners on Board</p>
                        </li>
                        <li>
                            <p class="number" id="number2">+10</p>
                            <span></span>
                            <p>Cities</p>
                        </li>
                        <li>
                            <p class="number" id="number3">+1300</p>
                            <span></span>
                            <p>vehicle Serviced</p>
                        </li>
                        <li>
                            <p class="number" id="number4">+27280</p>
                            <span></span>
                            <p>Roadside Support</p>
                        </li>
                    </ul>
                </div>
            </div>
            <a href="./Page/create_accound/signin.html"></a>
            <!-- This is Second section -->
            <div class="second-section" id="service">
                <h1>Why Chose Us?</h1>
                <div class="item-gallary">
                    <div class="item">
                        <img class="pic" src="/liveon-web/assets/images/Wavy_Bus-27_Single-06.jpg" alt="">
                        <h4>24/7 support</h4>
                        <p>Now, you will get your bike serviced/repaired in commenced time</p>
                    </div>
                    <div class="item1">
                        <img class="pic" src="/liveon-web/assets/images/Wavy_Trv-01_Single-10.jpg" alt="">
                        <h4>Real-time tracking</h4>
                        <p>You can book your bike service from home, office or anywhere on move</p>
                    </div>
                    <div class="item2">
                        <img class="pic" src="/liveon-web/assets/images/Wavy_Cst-01_Single-02.jpg" alt="">
                        <h4>Door step service</h4>
                        <p>While bike is being serviced/repaired, Sit back and relax at your place</p>
                    </div>
                </div>
            </div>


            <!-- This is Adversnment -->
            <!-- <div class="ad">
            <img src="https://tpc.googlesyndication.com/simgad/9464432608718276770" width="970" height="90" alt="" class="img_ad">
             </div> -->


            <!-- This is third section -->
            <div class="thired-section" id="partners">
                <h1>Happy Clients</h1>
                <div class="customer">
                    <h3>"Trusted Vlad and our team with our branding and website - we did not disappoint."</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin egestas augue a pharetra iaculis.
                        Vivamus eu tellus risus. Sed nec feugiat lectus</p>
                    <h5>- VHISHALI</h5>
                </div>
                <div class="love-us">
                    <img src="/liveon-web/assets/images/new-bee.png" alt="">
                </div>
            </div>
        </div>
    </main>
    <div id="sub-main">
        <!-- This is brands (car/bike) -->
        <div class="brand-condainer">
            <div class="brand-alining">
                <div id="boxs" class="box1">

                    <img src="/liveon-web/assets/images/TOYOTA.png" alt="">
                    <img src="/liveon-web/assets/images/SKODA.png" alt="">

                </div>
                <div id="boxs" class="box2">
                    <img src="/liveon-web/assets/images/MITSUBISHI.png" alt="">
                    <img src="/liveon-web/assets/images/RENAULT.png" alt="">

                </div>
                <div id="boxs" class="box3">
                    <img src="/liveon-web/assets/images/nissan.png" alt="">
                    <img src="/liveon-web/assets/images/VOLKSWAGEN.png" alt="">

                </div>
                <div id="boxs" class="box4">
                    <img src="/liveon-web/assets/images/MAHINDRA.png" alt="">
                    <img src="/liveon-web/assets/images/kia.png" alt="">
                    <img src="/liveon-web/assets/images/MGP.png" alt="">
                    <img src="/liveon-web/assets/images/Tata.png" alt="">
                </div>
            </div>
            <div class="brand">
                <div class="brand-section">
                    <h1>Discover the greatest brands</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin egestas augue a pharetra
                        iaculis. Vivamus eu tellus risus. Sed nec feugiat lectus. Nunc dui urna, elementum vitae
                        gravida id, cursus eget ligula</p>
                    <button class="btn1">Explore the app</button>
                </div>
            </div>
        </div>
        <!-- This is card section -->
        <div id="card">
            <div class="car-item">
                <div class="side-card">
                    <p class="head">Join Live-On Become a Partner</p>
                    <p class="body">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                </div>
                <div class="e-card">
                    <div class="e-item">
                        <label>
                            <input class="name" id="user-email" type="email" name="user email"
                                placeholder="Enter your email" value="" required="true"
                                title="First name connot contain spaces">
                        </label>
                        <button type="submit" class="b-name">Submit</button>
                    </div>
                    <div class="policy">
                        <p>By Sharing your details,you agree to our <span>Privacy Policy</span></p>
                    </div>
                </div>
            </div>
        </div>
        	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>