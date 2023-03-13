<%@page import="com.notepet.*"%>

<html>
    <head><title>Guncelle Page</title></head>
    <body>
        <form action="Guncelle2.jsp">
            <%

                String musteriid=request.getParameter("musteriid");
                String name=request.getParameter("name");
                String surname=request.getParameter("surname");
                String homephone=request.getParameter("homephone");
                String mobilephone=request.getParameter("mobilephone");
                String adres=request.getParameter("adres");
                String email=request.getParameter("email");
                String dogumtarihi=request.getParameter("dogumtarihi");
            %>
            <table><tr><td>Musteri ID:</td><td>
            <input type="text" value="<%=musteriid%>" name="musteriid"><br></td></tr>
            <tr><td>Name:</td><td>
            <input type="text" value="<%=name%>"name="name"><br></td></tr>
            <tr><td>Surname:</td><td>
            <input type="text" value="<%=surname%>"name="surname"><br></td>
            <td>Kayit surname gore tutuldugundan bu alani degistiremezsiniz</td></tr>
            <tr><td>HomePhone:</td><td>
            <input type="text" value="<%=homephone%>"name="homephone"><br></td></tr>
            <tr><td>MobilePhone:</td><td>
            <input type="text" value="<%=mobilephone%>"name="mobilephone"><br></td></tr>
            <tr><td>Adres:</td><td>
            <input type="text" value="<%=adres%>"name="adres"><br></td></tr>
            <tr><td>Email:</td><td>
            <input type="text" value="<%=email%>"name="email"><br></td></tr>
            <tr><td>DogumTarihi:</td><td>
            <input type="text" value="<%=dogumtarihi%>"name="dogumtarihi"><br></td></tr>       
    
            <tr><td align="center">
            <input type="submit" value="OK"</td></tr>
    
        </form>
    </body>
</html>
