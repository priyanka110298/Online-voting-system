<%-- 
    Document   : add
    Created on : Jul 21, 2018, 1:14:35 PM
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
        <title>ADD Page</title>
    </head>
    <body>
        <h1>ONLINE VOTING SYSTEM</h1>
        <form action ="add" method="post">
            
            <td> PARTY NAME:</td> <input name="party_name"  placeholder="Enter a candidate name" type="text"><br>
            
        <input value="ADD"   type="submit"  class="btn" style="padding-bottom: 20px; width: 150px; margin-left: 70px;"> 
        </form>
        
          <%
   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "pinky");
            Statement stmt = con.createStatement();
            ResultSet rs1 = stmt.executeQuery("select * from party");
          
        %>
        
        <pre>
            
                <% while(rs1.next()) { %>
                <td> <%= rs1.getString(1) %> </td> 
                 <% } %>
             
        </pre>
        
    </body>
</html>
