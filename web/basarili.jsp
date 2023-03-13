<%--1 e user exist ekle
 ayni sekilde odev 2 yi tamamla....--%>
<%@page import="com.notepet.DataManager"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<jsp:useBean id="formBakim" class="com.notepet.OnayBean" scope="request"/>
<html>
    <body>
     
        <li>Musteri Id:<jsp:getProperty name="formBakim" property="musteriId"/><br>
        First Name   :<jsp:getProperty name="formBakim" property="fname"/><br>
        Surname      :<jsp:getProperty name="formBakim" property="surname"/><br>
        HomePhone    :<jsp:getProperty name="formBakim" property="homePhone"/><br>
        MobilePhone  :<jsp:getProperty name="formBakim" property="mobilePhone"/><br>
        Adres        :<jsp:getProperty name="formBakim" property="adres"/><br>
        Email        :<jsp:getProperty name="formBakim" property="email"/><br>
        Dogum Tarihi :<jsp:getProperty name="formBakim" property="dogumTarihi"/><br><li>

        <h1>Eklenme islemi yapildi</h1>
        <a href=index.jsp>Index</a>
    </body>
</html>

 