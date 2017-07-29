
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Admin Panel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/lines.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="js/d3.v3.js"></script>
<script src="js/rickshaw.js"></script>
</head>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <%@ include file ="include/header.jsp" %>
            <%@ include file ="include/sidebar.jsp" %>
            
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="graphs">
      <div class="xs">
  	    <h3>Schedule Movie</h3>
  	    <div class="well1 white">
        <form method="post" action="addshow.jsp" class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" novalidate="novalidate" ng-submit="submit()">
          <fieldset>
            <div class="form-group">
              <label class="control-label">Show Date</label>
              <input type="date" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name="showdate" min="2017-01-01" max="2099-09-13" required="">
            </div>
            
             <div class="form-group">
              <label class="control-label">Show Time Slot</label>
             <select name="showtime" class="form-control1 ng-invalid ng-invalid-required ng-touched">
                 <option value="1">9:00AM
                 <option value="2">12:00AM
                 <option value="3">3:00PM
                 <option value="4">6:00PM
                 <option value="5">9:00PM
                 </select>
            </div>
                <%   Class.forName("oracle.jdbc.driver.OracleDriver");  
                    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
                     PreparedStatement stmt=con.prepareStatement("select * from theater");  
                     ResultSet rs=stmt.executeQuery(); 
                     PreparedStatement stmt1=con.prepareStatement("select * from film");  
                     ResultSet rs1=stmt1.executeQuery(); 
  %>
            <div class="form-group">
              <label class="control-label">Theater Name</label>
             <select name="theaterid" class="form-control1 ng-invalid ng-invalid-required ng-touched">
                 <%while(rs.next())
                 {
                 out.print("<option value="+rs.getInt(1)+">"+rs.getString(2));    
                 }
                 %>
                 
            
                 </select>     </div>
              
           <div class="form-group">
              <label class="control-label">Movie Name </label>
            <select name="movieid" class="form-control1 ng-invalid ng-invalid-required ng-touched">
                  <%while(rs1.next())
                 {
                 out.print("<option value="+rs1.getInt(1)+">"+rs1.getString(2));    
                 }
                 %>
                 </select>     </div>
              
          
            
            <div class="form-group">
              <button type="submit" class="btn btn-primary">Submit</button>
              <button type="reset" class="btn btn-default">Reset</button>
            </div>
          </fieldset>
        </form>
      </div>
    </div>
    
		<%@ include file ="include/footer.jsp" %>
		</div>
       </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>