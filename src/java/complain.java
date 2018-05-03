/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Calendar;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author manish
 */
public class complain extends HttpServlet {

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
            
            String topic=request.getParameter("topic");           
            String other=request.getParameter("other");            
            String detail=request.getParameter("description");            
            String name=request.getParameter("name");
            String mobile=request.getParameter("mobile");            
            String email=request.getParameter("email");
            String address=request.getParameter("address");
            String policstation=request.getParameter("policestation");
            String idproof=request.getParameter("idproof");
            String idnumber=request.getParameter("idnumber");
            String aname=request.getParameter("name");
            String aaddress=request.getParameter("address1");            
           
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
            PreparedStatement ps=con.prepareStatement("insert into complaints(ctopic,cother,detail,appliname,mobile,email,address,nearpolicestation,idproof,idnumber,againstname,againstaddress,time)values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
                   
            
            ps.setString(1,topic);
            ps.setString(2,other);
            ps.setString(3,detail);
            ps.setString(4,name);
            ps.setString(5,mobile);
            ps.setString(6,email);
            ps.setString(7,address);
            ps.setString(8, policstation);
            ps.setString(9, idproof);
            ps.setString(10, idnumber);
            ps.setString(11, aname);
            ps.setString(12, aaddress);
            ps.setString(13, revtime);
           
         
           out.printf("1");
            int i=ps.executeUpdate();
            
            
             if(i>0)
             {
               request.setAttribute("name", "Successfull Submit");               
               
               RequestDispatcher rd = request.getRequestDispatcher("online_complain.jsp");
               rd.forward(request, response);
           
                response.sendRedirect("online_complain.jsp");
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
