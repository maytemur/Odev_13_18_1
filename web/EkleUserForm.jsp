<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
<head>
<title>FORM LOGIN</title></head><body><form action="islemwithservlet.jsp" method=post><table>
    <tr><td>Musteri Id:</td><td><input type="text" name="musteriId" value="">Rakamsal bir deger<br></td></tr>
   
    <tr><td>name:</td><td><input type="text" name="fname" value=""><td></td>
    <br></td></tr>    
    <tr><td>surname:</td><td><input type="text" name="surname" value=""><br></td></tr>    
    <tr><td>Home Phone:</td><td><input type="text" name="homePhone" value="">
        Bosluksuz olarak 10 haneli telefon numarasi (ornegin 2125550123)
    </td></tr>
    <tr><td>Mobile Phone:</td><td><input type="text" name="mobilePhone" value="">
        Bosluksuz olarak 10 haneli telefon numarasi (ornegin 2125550123)
    </td></tr>
    
    <tr><td>Adres:</td><td><input type="text" name="adres" value=""><br></td></tr>
    
    <tr><td>E-mail:</td><td><input type="text" name="email" value=""><br></td></tr>
    
    <tr><td>Dogum Tarihi:</td><td><input type="text" name="dogumTarihi" value="">
    Dogum Tarihiniz (ornegin 01/01/1989)
    <br></td></tr>
    
    <tr><td align="center"><input type="submit" value="OK" value=""></td></tr>
   
</form></body></html>