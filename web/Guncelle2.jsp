<%@page import="com.notepet.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html><head><title>Duzenle Page</title></head><body><%
    String musteriid=request.getParameter("musteriid");
    String name=request.getParameter("name");    
    String surname=request.getParameter("surname");
    String homephone=request.getParameter("homephone");
    String mobilephone=request.getParameter("mobilephone");
    String adres=request.getParameter("adres");
    String email=request.getParameter("email");
    String dogumtarihi=request.getParameter("dogumtarihi");
        
            database_connect guncel=new database_connect();
            Connection guncelcon=guncel.getConnection();
            
            String sql="update musteri set musteriid=?,name=?,homephone=?,mobilephone=?,adres=?,email=?,dogumtarihi=? where surname=?";
            PreparedStatement updateyap=guncelcon.prepareStatement(sql);
            
            int id=Integer.parseInt(musteriid);
            updateyap.setInt(1,id);
            updateyap.setString(2,name);
            updateyap.setString(3,homephone);
            updateyap.setString(4,mobilephone);
            updateyap.setString(5,adres);
            updateyap.setString(6,email);
            updateyap.setString(7,dogumtarihi);            
            updateyap.setString(8,surname);

            int sonuc=updateyap.executeUpdate();
            
            response.sendRedirect("index.jsp");            
%>  
</form>
</body>
</html>