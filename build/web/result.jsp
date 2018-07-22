<%-- 
    Document   : result
    Created on : Jul 21, 2018, 10:28:36 AM
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
        <title>RESULT Page</title>
    </head>
    
        <h1>ONLINE VOTING SYSTEM</h1>
         <%
   
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "pinky");
            Statement stmt = con.createStatement();
            ResultSet rs1 = stmt.executeQuery("select party,count(party) as count from voting_done1 group by party");
          
        %>
        <body>
        <pre>
            
                <% while(rs1.next()) { %>
                <td> <%= rs1.getString(1) %>  <%= rs1.getString(2) %> </td> 
                 <% } %>
             
            

        </pre>
    </body>
</html>
