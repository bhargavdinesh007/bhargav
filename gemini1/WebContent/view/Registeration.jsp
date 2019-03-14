<%-- 
    Document   : Registeration
    Created on : Feb 28, 2015, 9:03:55 PM
    Author     : OOPs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         
 <link rel="stylesheet" href="style.css">
 <link rel="stylesheet" type="text/css" href="home.css">
    </head>
    <body>
        <script>
       function validate()
            {
                if(document.getElementById("ename").value=="")
                {
                    alert("blank");
        return false;        
        }
                return true;
            }
        </script>
        
        <div class="header-block-reg" >
            <div class="left-block">
                    <div class="logotext">WELCOME TO indiatours.com </div>
                    
                    <span class="tagline">your search END here</span>
                </div>
        </div>
        <div   class="header-block-reg1" style="padding-bottom: 30px; padding-top: 30px;">
<div class="testbox">
  <h1>Registration</h1>

  <form action="registeration" method="post" onsubmit="return validate();">
     
      <%-- <div class="accounttype">
      <input type="radio" value="None" id="radioOne" name="c1" checked/>
      <label for="radioOne" class="radio" chec>Indian</label>
      <input type="radio" value="None" id="radioTwo" name="c2" />
      <label for="radioTwo" class="radio">Other</label>
    </div>--%>
      <div class="gender">
  <label id="icon" for="name"><i class="icon-envelope "></i></label>
  <input type="text" name="ename" id="ename" placeholder="Email" required/>
  <label id="icon" for="name"><i class="icon-user"></i></label>
  <input type="text" name="nname" id="nname" placeholder="Name" required/>
  <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="password" name="pname" id="pname" placeholder="Password" required/>
   
   
  <%--  <input type="text" name="usid" id="name" placeholder="uid" required/> --%>
   <input class="button" type="submit" value="Sign UP"  name="b1"> </input>
   <p>By clicking Register, you agree on our <a href="http://localhost:8084/indiatours/termandcondition.jsp">terms and condition</a>.</p>
   <a href="http://localhost:8084/indiatours/home.jsp" class="button" >Home</a>
   <input class="button" type=button onClick="location.href='Login.jsp'" value="Login"  name="b" > </input>
  
   
  </form>
  </div>    
</div>    
        </div>
      
      <div class="header-block-reg">
          <p class="logotext">Link1......................
              </p>
      </div>
  
      
     
    </body>
     

</html>
