<%-- 
    Document   : posthotel
    Created on : Jun 1, 2017, 7:54:35 PM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post your hotel Detail</title>
        <link rel="stylesheet" type="text/css" href="home.css" />
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
        <%@include file="header.jsp" %>
    </head>
    <body>
        <form action="PostHotel" method="post">
        <pre>
        <div class="hotel-block"  style="background-color: #5882FA;padding: 2px 15px 30px;margin-top:250px; width: 101%; margin-left: -22px;">
            <div style="margin-top: 0px;margin-left: 260px;">
            <input type="text" name="hname" placeholder="Enter Hotel Name" style="width: 500px; height: 40px;"/>
            
            <input type="text" name="city" placeholder="Enter Hotel City" style="width: 500px; height: 40px;"/>
            
            <input type="text" name="address" placeholder="Enter Hotel Address" style="width: 500px; height: 40px;"/>
            
            <input type="text" name="car" placeholder="Car Type you Provide in hotel" style="width: 500px; height: 40px;"/>
            
            <input type="text" name="description" placeholder="Description about your hotel" style="width: 500px; height: 40px;"/>
            
            <input type="text" name="contact" placeholder="Enter Your Contact Number" style="width: 500px; height: 40px;"/>
            
                                 <input type="submit" value="submit" class="but"/>
                                 
           
          </pre>
            </form>
            </div>
        </div>
        
    </body>
    <%@include file="footer.jsp" %>
</html>
