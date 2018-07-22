<%-- 
    Document   : adddelcand
    Created on : Jul 21, 2018, 10:28:55 AM
    Author     : Priyanka
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DEL Page</title>
    </head>
    <body>
        <h1>ONLINE VOTING SYSTEM</h1>
         
        <%
   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "pinky");
            Statement stmt = con.createStatement();
            ResultSet rs1 = stmt.executeQuery("select party_name from party");
           
        %>
        
      <form action ="delete" method="post">
            <select style="height: 35px; width: 310px;" name="party" >
             
                 <option value="#">Select a Party</option>
                    <% while(rs1.next()){ %>
                    <option> <%= rs1.getString(1) %> </option>
                 
                <% } %>
             </select>
            
            <br>
            <br>
            <input value="DELETE"   type="submit"  class="btn" style="padding-bottom: 20px; width: 150px; margin-left: 70px;"> 
      </form>
           
    </body>
</html>
