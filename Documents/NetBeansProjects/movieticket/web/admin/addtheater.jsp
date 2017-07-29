
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String name=request.getParameter("name");
          String address=request.getParameter("address");
              int screen=Integer.parseInt(request.getParameter("screen"));
              int capacity=Integer.parseInt(request.getParameter("capacity"));
               int rate=Integer.parseInt(request.getParameter("rate"));
                try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
  
PreparedStatement stmt=con.prepareStatement("insert into theater values(?,?,?,?,?,?)");  
stmt.setInt(1,0);//1 specifies the first parameter in the query  
stmt.setString(2,name);  
 stmt.setString(3,address);
stmt.setInt(4,screen);
stmt.setInt(5,capacity);
stmt.setInt(6,rate);
int i=stmt.executeUpdate();  
%>
<script>
alert("Theater successfully added");

</script>
<%@ include file="theator.jsp" %>  
<%
    
con.close();  
  
}catch(Exception e){ System.out.println(e);}  
  
            
       
       
       
       %>
    </body>
</html>
