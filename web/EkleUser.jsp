<%@page import="com.notepet.DataManager"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
<head><title>JSP Page</title></head>
<body>
<% 
    int no=Integer.parseInt(request.getParameter("no"));
    String name=request.getParameter("name");
    String surname=request.getParameter("surname");
    String homephone=request.getParameter("homephone");
    String mobilephone=request.getParameter("mobilephone");
    String adres=request.getParameter("adres");
    String email=request.getParameter("email");
    String dogumtarihi=request.getParameter("dogumtarihi");
    
    DataManager m=new DataManager();
    
    m.ekle(no,name,surname,homephone,mobilephone,adres,email,dogumtarihi);
    
%><h1>Eklenme islemi yapildi</h1>
<a href=index.jsp>Index</a>
</body>
</html>
