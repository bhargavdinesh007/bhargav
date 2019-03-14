<%-- 
    Document   : index
    Created on : Feb 27, 2015, 7:39:57 PM
    Author     : OOPs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="home.css">
         <title>JSP Page</title>
        
         <style>
            
        .but{
  
        width: 100px; height: 40px;
        color : red;

   border-top: 1px solid #96d1f8;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#728cdb), to(#65a9d7));
   background: -webkit-linear-gradient(top, #728cdb, #65a9d7);
   background: -moz-linear-gradient(top, #728cdb, #65a9d7);
   background: -ms-linear-gradient(top, #728cdb, #65a9d7);
   background: -o-linear-gradient(top, #728cdb, #65a9d7);
   padding: 5px 10px;
   -webkit-border-radius: 8px;
   -moz-border-radius: 8px;
   border-radius: 8px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 20px;
   font-family: Georgia, serif;
   text-decoration: none;
   vertical-align: middle;
  cursor: pointer;
}
        </style>

<link href="responsiveslides.css" rel="stylesheet" type="text/css"/>
<link href="themes.css" rel="stylesheet" type="text/css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="responsiveslides.min.js" type="text/javascript"></script>
  <script>
      
      $(function () {

      // Slideshow 1
      $("#slider1").responsiveSlides({
        auto: true,
        pager: false,
        nav: true,
        speed: 500,
        maxwidth: 1200,
        namespace: "centered-btns"
      });
   });
  </script>
  
  

  
    </head>
    <body>
       
    <%@ include file="header.jsp" %>
    
        
        <div  class="hotel-book-back" style=" margin-top: 369px; width: 104%; margin-left: -23px;">
            
            <div class="about-block" style="font-size: 15px; color:  #ffffff;">
                <h2 class="heading"> Destination information  </h2>
 


             <pre> 
<p style="font-size: 20px; font-family: verdana;">            
<b style="font-size: 30px; font-family: verdana;">Visa information :</b>
All travelers to India, except the nationals of Nepal, Bhutan and Bangladesh require a valid Visa to enter India.
Visa’s must be obtained in advance. A Visa on arrival facility is ONLY available to the Nationals of Philippines, 
Cambodia, Laos, Myanmar, Indonesia, Vietnam, Japan, Singapore, Finland, Luxembourg and New Zealand. 
The Government of India has announced plans to introduce a Visa on arrival facility for the Nationals of 180 
countries starting October'2014, but the formal guidelines for that are still awaited.

<b style="font-size: 30px; font-family: verdana;">Arrival instructions :</b>A
If you have booked your India tour with us, and an arrival transfer is included as part of your package, 
you will find our Airport Representative waiting for you just outside the Customs Hall of the Airport Terminal.
 He will be holding a Placard with your name on it. 
In the unlikely event that you are unable to find our Airport Representative, feel free to call our emergency 
contact number, in Delhi <b>+91 9810229439</b> in Mumbai <b>+91 9322595962.</b>

<b style="font-size: 30px; font-family: verdana;">Insurance :</b>
We recommend that all travelers to India prepurchase comprehensive travel insurance, that covers them against
 medical emergencies, accidents, loss of baggage, cancellation of holiday etc.

<b style="font-size: 30px; font-family: verdana;">Currency and Money changing :</b>
The currency in India is the Indian Rupee (INR) and currency notes for the Rupee are available in denominations
 of 5, 10, 20, 50, 100, 500 and 1000. Money changers can be found at all airports, as well as in most markets
 and areas frequented by tourists. All major hotels, shops and restaurants accept Credit cards, and all hotels 
also offer money changing facilities. The exchange rate for the Indian Rupee versus important currencies 
as on 01st May'2014 is as follows :

    1 USD = INR 58
    1 GBP = INR 100
    1 EURO = INR 80
    1 AUD = INR 54
    1 SGD = INR 46


<b style="font-size: 30px; font-family: verdana;">Weather :</b>
North India has very extreme Summers, and reasonably cold Winters. The Summer months in North India are from
 April to September, when day time temperatures, particularly during the months of May and June can be in the 
40’s C. The months of July and August are monsoon months in most of North India. The Winters in North India 
are from November through to February, when day time temperatures are pleasant, between 15 – 25 C, night time
 can be a lot cooler, with December and January seeing lows of up to 5 C. Southern India on the other hand is 
more tropical in nature, and it remains fairly warm almost throughout the year.


<b style="font-size: 30px; font-family: verdana;">Internet and Mobile telephony :</b>
Broadband internet services are now available virtually throughout India. India has amongst the largest and 
finest GSM Mobile Networks in the world, and all international mobile service providers provide roaming 
facilities almost throughout India. It is possible for tourists to buy prepaid SIM cards, that are quite 
inexpensive and are available at all airports and major tourist destinations.
</p>
</pre>           
 </div>
        </div>
    </body>
    <%@ include file="footer.jsp" %>
</html>
