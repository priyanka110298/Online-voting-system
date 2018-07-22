<%-- 
    Document   : adminlogin
    Created on : Jul 21, 2018, 10:02:56 AM
    Author     : Priyanka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AdminLogin Page</title>
    </head>
    <body>
        <h1><center><B>ONLINE VOTING SYSTEM</B></center></h1>
        <%--<div id="login_form">--%>
            <form name="f1" method="post" action="AdminLogin">
        <table>
            <tr>
                <td>Admin ID:</td><td><input type="text" name="admin_name" value="" >
                </td>
                <td>Password:</td><td><input type="password" name="admin_pwd" value="" >
                </td>
            </tr>

            <tr>
                <td>
                    <input type="submit" name="login" value="Log In" style="font-size:18px; " />
                </td>
            </tr>
                        
        </table>
    </form> 
</div>
    </body>
</html>
