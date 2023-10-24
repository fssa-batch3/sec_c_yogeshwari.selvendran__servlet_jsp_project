<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="/liveon-web/assets/css/home.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
<title>Live-On| Home-Page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
<main>
        <div class="home-top">
            <div class="home-gallery">
                <img src="/liveon-web/assets/images/homebackgroundImage-min.jpg" alt="">
                <!-- <img src="../../assets/New_collection/BG-Collection/vecteezy_car-broke-down-at-road-driver-stand-at-open-hood_14438865.jpg" alt="background image"> -->
                <div class="home-over">
                    <div class="home-contend">
                        <h1>MAINTENANCE & REPAIR SERVICE</h1>
                        <p>Promoters is one of the leading units specializing in providing car and bike care equipment and tools
                            worldwide.</p>
                        <span> Need to buy car or bike care tools or accessories, this will be a useful choice. </span><br>        
                    </div>
                    <a href="../../Page/Appoinment/appoinment.html"><button class="big-btn">Book Now</button></a>
                </div>
               
            </div>
            <!-- This is our Services -->
            <div class="over_flow">
                <h2>OUR SERVICES</h2>
                <div class="service-section">
                    <div class="service-page">
                        <p id="headding">Services</p>
                        <p>Our general service for two-wheeler includes engine oil change, brakes check & cleaning, washing, polishing and much more at an affordable price.
                        </p>
                    </div>
                    <div class="genral-item">
                        <div class="first-item">

                            <!-- This card style -->
                            <div class="card">
                                <div class="content">
                                  <p class="heading">Genaral Service
                                  </p>
                                  
                                <p class="para">
                                    Get professional periodic bike service, bikeNeed to buy car care
                                    tools,
                                    accessories, this will be a useful choice
                                  </p>
                                  <!-- <button class="btn">Read more</button> -->
                                </div>
                              </div>
                              <div class="card">
                                <div class="content">
                                  <p class="heading">Engine Repair
                                  </p><p class="para">
                                    There are different types of motorcycle engine repair, which generally consists of services like parts replacement, upgrades, and detail finishing
                                  </p>
                                  <!-- <button class="btn">Read more</button> -->
                                </div>
                              </div>
                              <div class="card">
                                <div class="content">
                                  <p class="heading">RSA Service
                                  </p><p class="para">
                                    Roadside Assistance (RSA) is a coverage that offers much-needed relief to the vehicle owner whose vehicle breaks down or has a mechanical failure. 
                                  </p>
                                  <!-- <button class="btn">Read more</button> -->
                                </div>
                              </div>

                              <div class="card">
                                <div class="content">
                                  <p class="heading">periodic Service
                                  </p><p class="para">
                                    checking the health of components and bringing them back to top condition through replacement or repair.
                                  </p>
                                  <!-- <button class="btn">Read more</button> -->
                                </div>
                              </div>
                              <div class="card">
                                <div class="content">
                                  <p class="heading">Spare Parts
                                  </p><p class="para">
                                    It is, in fact, much easier than what most people believe. We also could consider the helmet as a key safety issue
                                  </p>
                                  <!-- <button class="btn">Read more</button> -->
                                </div>
                              </div>



                            
                        </div>
                    </div>

                </div>

            </div>
            <!-- How our Website works -->

            <div class="process">
                <h1>Book Live On - Too Fast Too Quick</h1>
                <p>No time to go to a bike workshop or Scooter Service Center? No worries! With one tap in the
                    app, we
                    bring the two-wheeler workshop to you.</p>
                <div class="progress">
                    <div class="timing">
                        <div class="pic-item">
                            <img src="/liveon-web/assets/images/sands-of-time.png" alt="book time">
                        </div>
                        <div class="dec-part">
                            <h4>Less Time Consuming</h4>
                            <p>Now, you will get your bike serviced/repaired in commenced time</p>
                        </div>
                    </div>
                    <div class="timing">
                        <div class="pic-item">
                            <img src="/liveon-web/assets/images/envelope.png" alt="book time">
                        </div>
                        <div class="dec-part">
                            <h4>Easy Service Appointments</h4>
                            <p>You can book your bike service from home, office, or anywhere on the move</p>
                        </div>
                    </div>
                    <div class="timing">
                        <div class="pic-item">
                            <img src="/liveon-web/assets/images/hand-holding-cellphone-to-take-a-selfie.png" alt="book time">
                        </div>
                        <div class="dec-part">
                            <h4>Wait & Relax</h4>
                            <p>While the bike is being serviced/repaired, Sit back and relax at your place</p>
                        </div>
                    </div>

                </div>
            </div>
            <!-- product-detail section -->
            <!-- <div class="product-page">
                <h3>Popular Products</h3>
                <div class="products-condainer">

                </div>
                <a class="page" href="../../Page/Accesssories/accessories.html"><button>MORE</button></a>
            </div> -->
        </div>

        <!-- This is a customer review -->
        <div class="cus-review">
            <section class="container">
                 <h2>our reviews</h2>
                <div class="review-container">
                  
                </div>

            </section>
        </div>
    </main>

</body>
</html>