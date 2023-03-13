<%@page import="com.notepet.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<html>
<head><title>Sil Page</title></head>
<body>
<%  String surname=request.getParameter("surname");
    String homephone=request.getParameter("homephone");    
    try{
            database_connect ListDat=new database_connect();
            Connection ListeCon=ListDat.getConnection();
            
            String sql="delete from musteri where surname=? and homephone=?";
            PreparedStatement sil=ListeCon.prepareStatement(sql);
            sil.setString(1,surname);
            sil.setString(2,homephone);

            int sonuc=sil.executeUpdate();
            
            response.sendRedirect("Liste.jsp");
    }catch(Exception e){
       e.printStackTrace();
   }    
 %>

</body>
</html>