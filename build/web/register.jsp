<%-- 
    Document   : register.jsp
    Created on : Jul 21, 2018, 2:18:00 AM
    Author     : Priyanka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTER Page</title>
    </head>
    <body>
        <h1> ONLINE VOTING SYSTEM </h1>
        <form action="Register" method="get">
           <%-- <td> NAME:</td> <input name="name"  placeholder="First Name" type="text"><br>--%>
                                
          <%-- <input name="surname"  placeholder="Last Name" type="text">--%>
            
          <td> USN: </td><input name="USN"  placeholder="Enter USN" type="text"><br>
            
          <td> Password: </td> <input name="pwd"  placeholder="Enter password" type="text"></br>
                     
         <%--   <input name="dob"  placeholder="Date Of Birth" type="text"></br>
            
            <input name="contact"  placeholder="Contact Number" type="text"></br> 
            
            <input name="email"  placeholder="Mail ID" type="email"> --%>
            
            
                        
                        
                    <input value="Register"   type="submit" class="btn" style="padding-bottom: 40px; width: 150px;"> 
            </form>
    </body>
</html>
