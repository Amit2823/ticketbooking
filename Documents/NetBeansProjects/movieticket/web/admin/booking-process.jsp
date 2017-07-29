<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    int custid=Integer.parseInt(request.getParameter("id"));
    int theaterid1=Integer.parseInt(request.getParameter("theaterid"));
   String selectseats=request.getParameter("selectseats"); 
   int noseat=Integer.parseInt(request.getParameter("noseat"));
   int total=Integer.parseInt(request.getParameter("total"));
   String showdate=request.getParameter("showdate"); 
   int showslot=Integer.parseInt(request.getParameter("slot"));
   int filmid=Integer.parseInt(request.getParameter("filmid"));
                      Class.forName("oracle.jdbc.driver.OracleDriver");  
                       Connection con3=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
                      PreparedStatement stmt3=con3.prepareStatement("insert into ticket values(?,?,?,?,?,?,?,?,?)");  
                 stmt3.setInt(1,0);
                 stmt3.setInt(2,custid);
                 stmt3.setInt(3,theaterid1);
                stmt3.setString(4,selectseats);
                 stmt3.setInt(5,noseat);
                 stmt3.setInt(6,total);
                 stmt3.setString(7,showdate);
                 stmt3.setInt(8,showslot);
                   stmt3.setInt(9,filmid);
            int rs3=stmt3.executeUpdate(); 
   %>  
   <script>       
   alert("your ticket successfully booked.");
</script>
<%

response.sendRedirect("cinema-list.jsp");
%>