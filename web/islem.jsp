<%@ page import="java.util.*" %>
<%! 
    ResourceBundle bundle =null;
    public void jspInit() {
       bundle = ResourceBundle.getBundle("com.notepet.onaylama");
      }
%>
<jsp:useBean id="formBakim" class="com.notepet.OnayBean" scope="request">
<jsp:setProperty name="formBakim" property="*"/>
</jsp:useBean>
<% 
   if (formBakim.onay()) {
%>
    <jsp:forward page="<%=bundle.getString(\"islem.basarili\")%>"/>
<%
   }  else {
%>
    <jsp:forward page="<%=bundle.getString(\"islem.tekrardene\")%>"/>
<%
   }
%>