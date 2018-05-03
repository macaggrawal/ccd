/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author manish
 */
public class suggestion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             String nam=request.getParameter("name");
           String mobil=request.getParameter("mobile");
           String email=request.getParameter("email");
           String city=request.getParameter("city");
           String address=request.getParameter("address");
           String subject=request.getParameter("subject");
           String detail=request.getParameter("suggestion");
           String state=request.getParameter("state");
            Calendar cal=Calendar.getInstance();
        int date=cal.get(Calendar.DATE);
        int month=cal.get(Calendar.MONTH)+1;
        int year=cal.get(Calendar.YEAR);
        int hour=cal.get(Calendar.HOUR);
        int min=cal.get(Calendar.MINUTE);
        int sec=cal.get(Calendar.SECOND);
        String rev=date+"/"+month+"/"+year;
        String time=hour+" : "+min+ " : "+sec;
        String revtime=rev + " // " +time;
        
                      
           Class.forName("com.mysql.jdbc.Driver");
           Connection con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");
           PreparedStatement ps=con.prepareStatement("insert into suggestion(name,mobile,email,city,address,state,ssubject,detail,time)values(?,?,?,?,?,?,?,?,?)");
                   
            ps.setString(1, nam);
            ps.setString(2, mobil);
            ps.setString(3, email);
            ps.setString(4, city);
            ps.setString(5, address);
            ps.setString(6, state);
            ps.setString(7, subject);
            ps.setString(8, detail);
            ps.setString(9, revtime);
                      
            int i=ps.executeUpdate();
            
            
             if(i>0)
             {
                out.print("<h1>successfully registered<h1>");
                //response.sendRedirect("");
             }
              
             
        }
        catch(Exception e){
             System.out.println("Exception in insertMissing "+e);
            e.printStackTrace();
            
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
