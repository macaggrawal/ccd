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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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

public class register extends HttpServlet {

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
            
            String f_name=request.getParameter("first_name");
            String m_name=request.getParameter("middle_name");
            String l_name=request.getParameter("last_name");
            String name=f_name+" "+m_name+" "+l_name;
           
            String fathername=request.getParameter("father_name");
            
//            String day=request.getParameter("day");
//            String month=request.getParameter("month");
//            String year=request.getParameter("year");
            String dob=request.getParameter("dob");//day+"/"+month+"/"+year; //date of birth
            
            String gender=request.getParameter("gender");
            String adhar=request.getParameter("adhar_number");
            
            
            String mobile=request.getParameter("mobile");
            String email=request.getParameter("email");
            String address=request.getParameter("address");
            String city=request.getParameter("city");
            String state=request.getParameter("state");
            String distic=request.getParameter("distic");
            String pincode=request.getParameter("pincode");
            
           String password=request.getParameter("password");
           
           
           
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
            
                      
            PreparedStatement ps=con.prepareStatement("insert into register(name,fathername,dob,gender,adhar,mobile,email,house,city,distic,pincode,state,image,password)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                   
            
            ps.setString(1, name);
            ps.setString(2, fathername);
            ps.setString(3,dob);
            ps.setString(4, gender);
            ps.setString(5, adhar);
            ps.setString(6, mobile);
            ps.setString(7, email);
            ps.setString(8, address);
            ps.setString(9, city);
            ps.setString(10, distic);
            ps.setString(11, pincode);
            ps.setString(12, state);
            ps.setBinaryStream(13, inputStream);
            ps.setString(14, password);
           //ps.setBlob(12,inputStream);
           out.printf("1");
            int i=ps.executeUpdate();
            //System.out.println("i in MissingServlet = " + i);
            out.printf("1");
             if(i>0)
             {
               request.setAttribute("name", email);               
               request.setAttribute("adhar", adhar);           
               request.setAttribute("pass", password);
               
               RequestDispatcher rd = request.getRequestDispatcher("register1.jsp");
               rd.forward(request, response);
              
                response.sendRedirect("register1.jsp");
             }
              
             
        }
        catch(Exception e){
             // response.sendRedirect("missingform.jsp?chk=invalid");
            out.println(e);
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
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
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
