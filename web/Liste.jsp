<%@page import="com.notepet.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
<head><title>Listele&'Guncelle</title></head><body>
    <%try {
            database_connect ListDat=new database_connect();
            Connection ListeCon=ListDat.getConnection();
            Statement stmt=ListeCon.createStatement();
            ResultSet rs=stmt.executeQuery("select * from Musteri");
%>
<script>
function SileGit(){
document.myForm.action="Sil.jsp";
document.myForm.submit();
}
function GuncelleyeGit(){
document.myForm.action="Guncelle.jsp";
document.myForm.submit();
}
</script>
<table border="2"><form name=ListeForm method=post<tr><td>Musteri Id</td>
<td>Name</td><td>Surname</td>
    <td>Home Phone</td><td>Mobile Phone</td><td>Adres</td><td>Email</td>
    <td>Dogum Tarihi</td>

    <%
       while(rs.next()){
                String musteriid=rs.getString("MusteriId");
                String name=rs.getString("Name");
                String surname=rs.getString("Surname");
                String homephone=rs.getString("HomePhone");
                String mobilephone=rs.getString("MobilePhone");
                String adres=rs.getString("Adres");
                String email=rs.getString("Email");
                String dogumtarihi=rs.getString("DogumTarihi");
    %><tr><td><%=musteriid%></td><td><%=name%></td><td><%=surname%></td>   
                        <td><%=homephone%></td>    
                        <td><%=mobilephone%></td>
                        <td><%=adres%></td>    
                        <td><%=email%></td>    
                        <td><%=dogumtarihi%></td>
<td><a href="Sil.jsp?surname=<%=surname%>&homephone=<%=homephone%>">sil</a></td>
<td><a href="Guncelle.jsp?musteriid=<%=musteriid%>&name=<%=name%>&surname=<%=surname%>&homephone=<%=homephone%>&mobilephone=<%=mobilephone%>&adres=<%=adres%>&email=<%=email%>&dogumtarihi=<%=dogumtarihi%>">duzenle</a></td>
             
<%}%>
</table></tr></form>
<%              
        } catch(Exception e) {
            e.printStackTrace();
        }
%>   <a href=index.jsp>Index</a> 
    </body></html>