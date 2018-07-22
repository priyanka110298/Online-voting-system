/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Priyanka
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String USN = request.getParameter("USN");
            String pwd = request.getParameter("pwd");
           
          
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voting", "root", "pinky");
            
            try {
                Statement stmt = con.createStatement();
               
              ResultSet rs= stmt.executeQuery("select * from voting_done1 where voter = '"+USN+"'");
               
               if(rs.next() && !(pwd.equals("")))
               {
                 out.println("<script>alert('Already voted.Cannot Vote again') ");
                 out.println("location ='index.jsp';");
                 out.println("</script>");
               
               }
               else
               {
                   ResultSet rs1= stmt.executeQuery("select * from login where USN = '"+USN+"'and pwd= '"+pwd+"'");
                  
                    if(rs1.next())
                    {
                        response.sendRedirect("vote.jsp");
                        stmt.executeUpdate("insert into usn values("+USN+")");
                        
                    }
                    else
                    {
                        out.println("<script>alert('Enter correct login detalis or Register if not reagistered') ");
                        out.println("location ='index.jsp';");
                        out.println("</script>");
                    }
               }
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName());
            }
        }catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName());
        } 
        catch (SQLException ex) {
                Logger.getLogger(Login.class.getName());
            }
            
        
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
