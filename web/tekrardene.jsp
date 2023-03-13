<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:useBean id="formBakim" class="com.notepet.OnayBean" scope="request"/>
<html>
<head>
<title>FORM TEKRARDENE</title></head><body><form action="islem.jsp" method=post><table>

    <tr><td>Musteri Id:</td><td><input type="text" name="musteriId" value='<%=formBakim.getMusteriId()%>'>
        Rakamsal bir deger<br>
    </td></tr>
    <tr><td><font color=red><%=formBakim.getErrorMsg("musteriId")%></font></td></tr>
   
    <tr><td>name:</td><td><input type="text" name="fname" value='<%=formBakim.getFname()%>'><td></td>
    <br></td></tr>
    <tr><td><font color=red><%=formBakim.getErrorMsg("fname")%></font></td></tr>
    
    <tr><td>surname:</td><td><input type="text" name="surname" value='<%=formBakim.getSurname()%>'><br></td></tr>
    <tr><td><font color=red><%=formBakim.getErrorMsg("surname")%></font></td></tr>
    
    <tr><td>Home Phone:</td><td><input type="text" name="homePhone" value='<%=formBakim.getHomePhone()%>'>
        Bosluksuz olarak 10 haneli telefon numarasi (ornegin 2125550123)
    </td></tr>
    <tr><td><font color=red><%=formBakim.getErrorMsg("homePhone")%></font></td></tr>
    
    <tr><td>Mobile Phone:</td><td><input type="text" name="mobilePhone" value='<%=formBakim.getMobilePhone()%>'>
        Bosluksuz olarak 10 haneli telefon numarasi (ornegin 2125550123)
    </td></tr>
    <tr><td><font color=red><%=formBakim.getErrorMsg("mobilePhone")%></font></td></tr>
    
    <tr><td>Adres:</td><td><input type="text" name="adres" value='<%=formBakim.getAdres()%>'><br></td></tr>
    <tr><td><font color=red><%=formBakim.getErrorMsg("adres")%></font></td></tr>
    
    <tr><td>E-mail:</td><td><input type="text" name="email" value='<%=formBakim.getEmail()%>'><br></td></tr>
    <tr><td><font color=red><%=formBakim.getErrorMsg("email")%></font></td></tr>
    
    <tr><td>Dogum Tarihi:</td><td><input type="text" name="dogumTarihi" value='<%=formBakim.getDogumTarihi()%>'>
    Dogum Tarihiniz (ornegin 01/01/1989)<br></td></tr>
    <tr><td><font color=red><%=formBakim.getErrorMsg("dogumTarihi")%></font></td></tr>
    
    <tr><td align="center"><input type="submit" value="OK" value=""></td></tr>
   
</form></body></html>