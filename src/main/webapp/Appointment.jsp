<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/liveon-web/assets/css/Appointment.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
<main>
        <!-- This is appoinment page -->
        <div class="appoinment">
            <!-- <img src="../../assets/New_collection/BG-Collection/vecteezy_car-repair-service-min.jpg" alt=""> -->
        </div>
        <!-- Booking appoinment -->

        <div class="app-align" id="app-book">
            <form>
                   
                <!-- This is appoinment section -->
                <div class="appoinment-section">
                    <div class="date">
                        <!-- This is choose the appointment date -->
                        <div class="date-choose">
                            <label for="appointment-date" class="top-head">APPOINTMENT DATE</label><br>
                            <input id="date" type="date" required aria-label="date">
                        </div><br>
                        <!-- This is choose the appointment time -->
                        <div class="date-choose">
                            <label for="appointment-date" class="top-head">PREFFERED TIME FRAME</label><br>
                            <!-- <input id="time" type="time" required aria-label="time" required> -->

                            <input type="time" id="time" required placeholder="12:00">
                        </div><br>
                        <!-- This is choose the appointment vehicle type -->
                        <div class="type-choose">
                            <label for="appointment-date" class="top-head">VEHICLE</label><br>
                            <div class="vehi-cho">
                                <label for="vehicle-type" id="bike">
                                    <input type="radio" id="vehicle-type" name="vehicle-type" value="Bike">BIKE
                                </label>
                                <label for="vehicle-type1" id="car">
                                    <input type="radio" id="vehicle-type1" name="vehicle-type" value="Car">CAR
                                </label>
                            </div>
                        </div><br>
                        <!-- This is choose the appointment servicde -->
                        <div class="date-choosing">
                            <label for="appointment-date" class="top-head">SELECT SERVICES NEEDED</label><br>
                            <div id="service-select">
                                <div class="list-checkbox" id="check-Box">
                                    <label for="text" class="checkbox"> <input type="radio" id="check"
                                            value="Air Conditioning" class="item" name="check" aria-label="radio">
                                        waret Service</label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Breakes repair" name="check" aria-label="radio"> Breakes
                                        repair</label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Oil, Lube & Filters " name="check" aria-label="radio"> Oil, Lube &
                                        Filters </label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Service" name="check" aria-label="radio">Water Service</label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Service" name="check" aria-label="radio">Water Service</label>
                                </div>



                                <div class="list-checkbox" id="check-Box1">
                                    <label for="text" class="checkbox"> <input type="radio" id="check"
                                            value="Air Conditioning" class="item" name="check" aria-label="radio">
                                        Air Conditioning</label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Breakes repair" name="check" aria-label="radio"> Breakes
                                        repair</label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Engine Diagnostics" name="check" aria-label="radio"> Engine
                                        Diagnostics</label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Heating & Cooling" name="check" aria-label="radio"> Heating &
                                        Cooling </label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Oil, Lube & Filters " name="check" aria-label="radio"> Oil, Lube &
                                        Filters </label>
                                    <label for="text" class="checkbox"> <input type="radio" id="check" class="item"
                                            value="Service" name="check" aria-label="radio">Water Service</label>
                                  
                                </div>
                            </div>



                        </div>
                    </div>
                    <div class="addres">
                        <label for="" class="top-head">CONTACT DETAILS</label><br>
                        <input type="text" id="contactphone" placeholder="Your Phone" maxlength="10" required
                        pattern="^[6-9][0-9]{9}$" aria-label="Phone"><br>
                        <input type="text" id="home-num" placeholder="H.no/P.no"  required aria-label="hno"><br>
                        <input type="text" id="home-street" placeholder="Street"  required aria-label="street"><br>
                        <input type="text" id="home-city" placeholder="City" required aria-label="city"><br>
                        <input class="name" id="home-state" type="text"  name="user address"
                            placeholder="State" required="true">
                        <input class="name" id="address" type="text" pattern="^6\d{5}$" name="user address"
                            placeholder="Pincode" required="true">
                        <br>
                        <button type="submit">SUBMIT NOW</button>
                        <!-- <button>SUBMIT NOW</button> -->
                    </div>

                </div>

            </form>
        </div>

    </main>

    <div class="booking-app">
        <div class="book-page">
            <span>BOOKING AN APPOINTMENT</span>
            <hr>
            <p>We are one of the leading auto repair shops serving customers in Tucson.</p>
            <p>All mechanic services are performed by highly qualified mechanics.</p>
        </div>

    </div>
    <div class="cust-review">
        <h2> Add Your Review </h2>
        <form id="reviews">
            <div class="review-uplode">
                <div>
                    <input type="text" id="review-username" placeholder="Enter Your Name">
                </div>
                <div class="input-group">
                    <textarea aria-label="With textarea" rows="4" cols="50" id="rewiew_message" placeholder="Message"
                        required></textarea>
                </div>
                <!-- <div>
                    <input type="file" name="listing_faq-question" id="review-userimage" >
                </div> -->
                <div>
                    <button type="submit">submit your review</button>
                </div>
        </form>
    </div>

 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>