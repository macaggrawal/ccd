/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author manish
 */
public class show extends HttpServlet {

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
            throws ServletException, IOException 
    {
                //response.setContentType("text/html;charset=UTF-8");
                try 
                {
                    String snum = request.getParameter("sno");
                    String name="mac";
//                    System.out.println("Inside ShowMissingServlet , snum is " + snum);
                    Class.forName("com.mysql.jdbc.Driver");
           
                    Connection con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");
                    PreparedStatement ps = con.prepareStatement("select * from wanted ");

                    ResultSet rs = ps.executeQuery();
                    while (rs.next())
                    {
                        String mimeType = "application/octet-stream";
                          // set content properties and header attributes for the response
                        response.setContentType(mimeType);
                        byte[] rawBytes = null;
                        int snumb1 = Integer.parseInt(snum);
                        int snumb2 = rs.getInt(1);
                        if(snumb1 == snumb2)
                        {
                          // writes the file to the client
                        OutputStream outStream = response.getOutputStream();
                        rawBytes = rs.getBytes(2);
                        outStream.write(rawBytes);
                        outStream.flush();
                        outStream.close();
                        }
                  }
            
                }
                catch(Exception e)
                {
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
