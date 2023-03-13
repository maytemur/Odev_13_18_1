<%@ page import="java.util.*" %>
<%@page import="com.notepet.*"%>
<%! 
    ResourceBundle bundle =null;
    public void jspInit() {
       bundle = ResourceBundle.getBundle("com.notepet.forms");
      }
%>
<jsp:useBean id="formHandler" class="com.notepet.FormBean" scope="request">

<jsp:setProperty name="formHandler" property="*"/>
</jsp:useBean>
<% 
   if (formHandler.validate()) {
%>
    <jsp:forward page="/servlet/DBHandler"/><%--Web-Inf icinde web.xml dosyasinda servletle ok--%>
<%
   }  else {
%>
    <jsp:forward page="<%=bundle.getString(\"process.retry\")%>"/>
<%
   }
%>