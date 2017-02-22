<%@ page import="java.sql.*" %>
<%
    int dlt =Integer.parseInt(request.getParameter("id"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","abcdefgh");

    Statement st = con.createStatement();

    st.executeUpdate("DELETE from table_ju where id="+dlt);
    out.println("deleted successfully");
 /*  if (i != 0) {
        response.sendRedirect("jdbcData.jsp");
   } else {
        out.print("Data not deleted successfully");
   } */
%>