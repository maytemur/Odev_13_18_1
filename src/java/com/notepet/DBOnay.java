package com.notepet;
import java.io.*;
import java.net.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.notepet.OnayBean;
import java.sql.*;
import java.sql.Driver;

public class DBOnay extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            OnayBean f = (OnayBean) request.getAttribute("formBakim");
            boolean userExists = false;
            
            database_connect baglan=new database_connect();
            Connection con=baglan.getConnection();
            Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            ResultSet rs=stmt.executeQuery("select * from musteri");
            while(rs.next()){
                if(rs.getString("Surname").equals(f.getSurname())){
                    userExists=true;
                }
            }
            if (userExists) {
                f.setErrors("surname","Duplicate User:Try a different surname");
                getServletConfig().getServletContext().getRequestDispatcher("tekrardene.jsp").forward(request, response);
            } else {
// Bilgiler burada alinarak koyulabilecegi gibi success icindede yapilabilir.
                //retrieve the bean properties and store them
                // into the database.
                double no=Double.parseDouble(f.getMusteriId());
                String name=f.getFname();
                String surname=f.getSurname();
                String homephone=f.getHomePhone();
                String mobilephone=f.getMobilePhone();
                String adres=f.getAdres();
                String email=f.getEmail();
                String dogumtarihi=f.getDogumTarihi();
                
                DataManager m=new DataManager();
                
                m.ekle(no,name,surname,homephone,mobilephone,adres,email,dogumtarihi);
                getServletConfig().getServletContext().getRequestDispatcher("/basarili.jsp").
                        forward(request, response);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}


