<%-- 
    Document   : edit
    Created on : Jan 4, 2017, 4:43:18 PM
    Author     : Kassie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
   String id=request.getParameter("id");
   String name="",age="",sex="",preadd="",peradd="";

   Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/test", "root", "abcdefgh");

            Statement statement = connection.createStatement() ;
            ResultSet resultset =
                statement.executeQuery("select Name,Age,Sex,Present_Address,Permanent_Address from table_ju WHERE ID='"+id+"'") ;
            while (resultset.next())
      {
            name=resultset.getString(1);
            age=resultset.getString(2);
            sex=resultset.getString(3);
            preadd=resultset.getString(4);
            peradd=resultset.getString(5);
       }    %>
        <h1>Enter the updated details</h1>
        <form action="edit1.jsp" method="post">
        
<li>Name :<input type="text" name="nme1" value="<%=name%>" /></li>
<li>Age :<input type="text" name="ege1" value="<%=age%>"/></li>
<li>Sex :<input type="text" name="sx1" value="<%=sex%>"/></li>
<li>Present Address :<input type="text" name="preadd1" value="<%=preadd%>"/></li>
<li>Permanent Address :<input type="text" name="peradd1" value="<%=peradd%>"/></li>
<input type="hidden" name="id1" value="<%=id%>" />
        <input type="submit" /></form>
        
    </body>
</html>
