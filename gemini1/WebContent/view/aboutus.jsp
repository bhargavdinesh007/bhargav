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
         
        <div  class="hotel-book-back" style=" margin-top: 269px; width: 104%; margin-left: -23px;">
            
            <div class="about-block" style="font-size: 15px; color:  #ffffff;">
                <h2 class="heading"> About Us  </h2>



             <br/>
             <br/>
bhupendra patidar <br/>
CEO and Managing Director <br/><br/>
Choosing the right company to handle your travel arrangements in India is vitally important.  
The Indian sub-continent is vast, and travel from one city to another is a bit more complex here, than it is in developed/western countries, so, you do need a Tour Operator on the ground, who has first hand and deep knowledge of the nuances of travelling within the sub-continent. India Tours Online is a specialist inbound tour company, which will take the time to understand what you would like to see and do on your India trip, and work with you towards creating a perfect itinerary and a perfect travel experience for you.

India Tours Online, an internet trading brand of Trans India Holidays, is a limited liability company with 22years of experience in arranging top quality India tours, Wildlife safaris and Beach holidays in the Indian sub-continent (our services currently extend to Nepal and Bhutan).<br/> <br/>India Tours Online is headed by Kapil Goswamy (CEO and Managing Director) and Rajesh Kaushik (General Manager), who between them, have almost 45 years of experience of arranging tours in the Indian subcontinent. Each one of our 20 + operations staff is dedicated to providing the highest quality Indian holidays, from designing the itineraries in consultation with you, right up to giving you expertadvice of things like health and safety, tipping, visa’s etc. Every Hotel/Resort /Camp that

bhupnera patidar

bhupnera patidar
General Manager
we use, has been personally visited and inspected by a senior member of our team. Our Representatives in each city (we currently have almost 30 of them spread across India, Nepal and Bhutan), have been carefully selected, and trained in a manner that they follow the same high service standards, that we do. The care does not stop even while you are travelling.. when you arrive in India,you are met by an English speaking representative, who goes over your itinerary with you, and also gives you 24 X 7 contact number that you can reach in the unlikely event of something going wrong.

Since 1990 we have arranged and handled several thousand India tours for our clients, many of whom have travelled more than once with us. <br/><br/>We pride ourselves in saying that “we are small enough to care, and large enough to deliver”. Our team of professionals will do everything possible to ensure that your holiday in the Indian sub-continent works like clockwork, despite the challenges of travelling in a continent, not known for its efficient infrastructure.

Get in touch with us, and allow us to create your Indian experience for you .Email us now, even if you are at the earliest planning stages and only have a vague idea of what you want to see and do in the Indian subcontinent .Allow us to take it forward from there, and see how easy planning and booking your India tour is...

To find out more about what past clients say about our services, Click here for Testimonials.
            </div>
        </div>
           
    </body>
    <%@ include file="footer.jsp" %>
    
</html>
