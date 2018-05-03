/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author manish
 */
@WebServlet(name = "MailServlet", urlPatterns = {"/MailServlet"})
public class mailservlet extends HttpServlet {

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
response.setContentType("text/html;charset=UTF-8");
PrintWriter out = response.getWriter();
try{
String mail= request.getParameter("email");
String user= request.getParameter("user");
//String host = "smtp.gmail.com";
String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
//System.out.println("1");
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql:///ccd","root","");

PreparedStatement ps= con.prepareStatement("select * from register where email=?");
ps.setString(7,user);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
System.out.print(",,,,,,,,,,,,,,,,,,,,,,,,,,");
String Userid=rs.getString(5);
String Password =rs.getString(14);
out.print("Password = " + Password);
//System.out.print(psd+Email);
// String date=rs.getString(6);
String to_add = mail;
System.out.println("7");
String subject ="password Recovery"; 
String messageText ="Dear User your username is "+Userid+" and Your password is:-"+Password; 
//String password="9855077162";
//String from ="onlinefir051993@gmail.com";
String from = "consumercomplaintdesk0095@gmail.com";
boolean sessionDebug = true;
Properties props = System.getProperties();
props.put("mail.host", "smtp.gmail.com");
//props.put("mail.transport.protocol.", "smtps");
props.put("mail.smtps.auth", "true");
//props.put("mail.smtps.starttls.enable","true");
props.put("mail.smtps.port", "587");
props.put("mail.smtps.socketFactory.fallback", "false");
props.put("mail.smtps.socketFactory.class", SSL_FACTORY);

Authenticator authenticator = new Authenticator () {
public PasswordAuthentication getPasswordAuthentication(){
return new PasswordAuthentication("consumercomplaintdesk0095@gmail.com","9671930095");
}
};
System.out.println("Password authenticated!!");
Session mailSession = Session.getInstance(props, authenticator);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = { new InternetAddress(to_add) };
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtps");
//System.setProperty("javax.net.ssl.trustStorePassword", "admin");
//transport.connect(host,587, from, "'l0tusn0tes'");
transport.connect();
out.println("Connected to smtp!!");
try 
{

transport.sendMessage(msg, msg.getAllRecipients());
out.println("Message sent!!!");
out.println("sent");
//response.sendRedirect("adminlogin.jsp");
//WasEmailSent = true; // assume it was sent
}
catch (Exception err) 
{
//WasEmailSent = false; // assume it's a fail
out.println("Error" + err.getMessage());
}
transport.close();
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
