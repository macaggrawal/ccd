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
import java.sql.SQLException;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author manish
 */
@MultipartConfig(maxFileSize = 10*1024*1024,maxRequestSize = 20*1024*1024,fileSizeThreshold = 5*1024*1024)

public class wantedServlet extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException
    {
        response.setContentType("text/html;charset=UTF-8");
        try
        {
            //System.out.println("Inside MissingServlet");
            
           String nam=request.getParameter("name");
           String sex=request.getParameter("gender");
           String home=request.getParameter("homeaddress");
           String cit=request.getParameter("city");
           String disti=request.getParameter("distic");
           String pin=request.getParameter("pincode");
           String stat=request.getParameter("state");
           String heiht=request.getParameter("height");
           String ages=request.getParameter("age");
           String eyescolor=request.getParameter("eyescolor");
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
           
           
            InputStream inputStream = null;
            Part filePart = request.getPart("image");
            if (filePart != null)
            {
                // prints out some information for debugging
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());
             
                // obtains input stream of the upload file
                inputStream = filePart.getInputStream();
            }
            
            Class.forName("com.mysql.jdbc.Driver");
         
           Connection con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");
            
                      
            PreparedStatement ps=con.prepareStatement("insert into wanted(image,name,gender,homeaddress,city,distic,pincode,state,height,age,eyes,time)values(?,?,?,?,?,?,?,?,?,?,?,?)");
                   
            ps.setBinaryStream(1, inputStream);
            ps.setString(2, nam);
            ps.setString(3, sex);
            ps.setString(4, home);
            ps.setString(5, cit);
            ps.setString(6, disti);
            ps.setString(7, pin);
            ps.setString(8, stat);
            ps.setString(9, heiht);
            ps.setString(10, ages);
            ps.setString(11, eyescolor);
            ps.setString(12, revtime);
            
           //ps.setBlob(12,inputStream);
            int i=ps.executeUpdate();
            //System.out.println("i in MissingServlet = " + i);
            
             if(i>0)
             {
                 out.print("<h1>successfully registered<h1>");
                response.sendRedirect("wanted_form.jsp");
             }
              
             
        }
        catch(Exception e){
             // response.sendRedirect("missingform.jsp?chk=invalid");
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(wantedServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(wantedServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(wantedServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(wantedServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
