<%@ page import="java.util.*" %>
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
    <jsp:forward page="<%=bundle.getString(\"process.success\")%>"/>
<%
   }  else {
%>
    <jsp:forward page="<%=bundle.getString(\"process.retry\")%>"/>
<%
   }
%>