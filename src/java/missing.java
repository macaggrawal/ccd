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

public class missing extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
           String name=request.getParameter("name");
           String gender=request.getParameter("gender");
           String city=request.getParameter("city");
           String distic=request.getParameter("distic");
           String pincode=request.getParameter("pincode");
           String address=request.getParameter("homeaddress");
           String state=request.getParameter("state");
           String gurdian=request.getParameter("gurdian");
           String height=request.getParameter("height");
           String age=request.getParameter("age");
           String eyes=request.getParameter("eyescolor");
           String dress=request.getParameter("dress");
           String dateofmiss=request.getParameter("date");
           String gmobile=request.getParameter("mobile");
           
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
             
               
                inputStream = filePart.getInputStream();
            }
            
            Class.forName("com.mysql.jdbc.Driver");
         
           Connection con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");
            
                      
            PreparedStatement ps=con.prepareStatement("insert into missing(name,gender,city,distic,pincode,address,state,gurdian,height,age,eyes,dress,missdate,rtime,image,gmobile)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                   
            ps.setBinaryStream(15, inputStream);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setString(3, city);
            ps.setString(4, distic);
            ps.setString(5, pincode);
            ps.setString(6, address);
            ps.setString(7, state);
            ps.setString(8, gurdian);
            ps.setString(10, age);
            ps.setString(9, height);
            ps.setString(11, eyes);
            ps.setString(12, dress);
            ps.setString(13, dateofmiss);
            ps.setString(14, revtime);
             ps.setString(16, gmobile);
           
            int i=ps.executeUpdate();
                        
             if(i>0)
             {
                 out.print("<h1>successfully registered<h1>");
                response.sendRedirect("missing_form.jsp");
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
            Logger.getLogger(missing.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(missing.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(missing.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(missing.class.getName()).log(Level.SEVERE, null, ex);
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
