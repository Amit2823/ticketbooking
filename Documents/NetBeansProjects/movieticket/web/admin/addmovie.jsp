
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String name1=request.getParameter("name");
         // Part filePart = request.getPart("image");
           // String image=request.getParameter("image");
              String cast=request.getParameter("cast");
                  String category=request.getParameter("category");
        
                try{  
                    // String image=filePart.getName();
Class.forName("oracle.jdbc.driver.OracleDriver");  
  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
  
PreparedStatement stmt=con.prepareStatement("insert into film  values(?,?,?,?,?)");  
stmt.setInt(1,0);//1 specifies the first parameter in the query  
stmt.setString(2,name1);  
stmt.setString(3,""); 
stmt.setString(4,cast);
stmt.setString(5,category);

int i=stmt.executeUpdate();  
%>
<script>
alert("Movie successfully added");

</script>
<%
session.setAttribute("name", name1);
%>
<%@ include file="uploadimage.jsp" %>

<%    
con.close();  
  
}catch(Exception e){ System.out.println(e);}  
  
            
       
       
       
       %>
    </body>
</html>
