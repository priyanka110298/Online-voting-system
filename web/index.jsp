<%-- 
    Document   : index
    Created on : Jul 21, 2018, 1:34:26 AM
    Author     : Priyanka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDEX Page</title>
    </head>
    <body>
        <h1><center><B>ONLINE VOTING SYSTEM</B></center></h1>
        <div id="login_form">
    <form name="f1" method="post" action="Login" id="f1">
        <table>
            <tr>
                <td class="f1_label">USN :</td><td><input type="text" name="USN" value="" />
                </td>
                <td class="f1_label">Password :</td><td><input type="password" name="pwd" value="" />
                </td>
            </tr>

            <tr>
                <td>
                    <input type="submit" name="login" value="Log In" style="font-size:18px; " />
                </td>
            </tr>
                        
        </table>
    </form> 
            <a href="http://localhost:8080/OVS/register.jsp">New User Register</a></br>
            <a href="http://localhost:8080/OVS/adminlogin.jsp">Admin Check Result</a>
        
</div>
    </body>
</html>
