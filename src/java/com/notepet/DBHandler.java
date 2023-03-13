package com.notepet;
import java.io.*;
import java.net.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.notepet.FormBean;
import java.sql.*;
import java.sql.Driver;

public class DBHandler extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            FormBean f = (FormBean) request.getAttribute("formHandler");
            boolean userExists = false;
            
            advanceform_database_connect servletbaglan=new advanceform_database_connect();
            Connection servletcon=servletbaglan.getConnection();
            Statement advstmt=servletcon.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            ResultSet advrs=advstmt.executeQuery("select * from advanceform");
            while(advrs.next()){
                if(advrs.getString("username").equals(f.getUserName())){
                    userExists=true;
                }
            }
            if (userExists) {
                f.setErrors("userName","Duplicate User: Try a different username");
                getServletConfig().getServletContext().getRequestDispatcher("retry.jsp").forward(request, response);
            } else {
// Bilgiler burada alinarak koyulabilecegi gibi success icindede yapilabilir.
                //retrieve the bean properties and store them
                // into the database.
                String username=f.getUserName();
                String password=f.getPassword1();
                String firstname=f.getFirstName();
                String lastname=f.getLastName();
                String email=f.getEmail();
                String zip=f.getZip();
                String[] alMusic = f.getFaveMusic();
                boolean rock = false;
                boolean pop=false;
                boolean bluegrass=false;
                boolean blues=false;
                boolean caz=false;
                boolean country=false;
                if (!alMusic[0].equals("1")) {
                    for (int i=0; i<alMusic.length; i++){
                        if(alMusic[i].equals("Rock")){rock=true;};
                        if(alMusic[i].equals("Pop")){pop=true;};
                        if(alMusic[i].equals("Bluegrass")){bluegrass=true;};
                        if(alMusic[i].equals("Blues")){blues=true;};
                        if(alMusic[i].equals("Jazz")){caz=true;};
                        if(alMusic[i].equals("Country")){country=true;};
                    }
                }
                boolean notify=false;
                if(f.getNotify().equals("Yes")){
                notify=true;
                }
                advanceform_DataManager advm=new advanceform_DataManager() ;                                
                advm.ekle(username,password,firstname,lastname,email,zip,rock,pop,bluegrass,blues,caz,country,notify) ;
                getServletConfig().getServletContext().getRequestDispatcher("/success.jsp").
                        forward(request, response);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}


