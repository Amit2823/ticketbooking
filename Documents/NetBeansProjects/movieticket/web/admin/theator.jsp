
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
  	    <h3>Add Theater</h3>
  	    <div class="well1 white">
        <form class="form-floating ng-pristine ng-invalid ng-invalid-required ng-valid-email ng-valid-url ng-valid-pattern" method="post" action="addtheater.jsp" ng-submit="submit()">
          <fieldset>
            <div class="form-group">
              <label class="control-label">Theater Name</label>
              <input type="text"  class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name="name" required="">
            </div>
            
            
            <div class="form-group">
              <label class="control-label">Address</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name="address" required="">
            </div>
            
              
             <div class="form-group">
              <label class="control-label">Screen</label>
              <input type="number" min="1" max="1" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name="screen" required="">
            </div>
              
               <div class="form-group">
              <label class="control-label">Capacity</label>
              <input type="number" min="1" max="100"  class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name="capacity" required="">
            </div>
              
               <div class="form-group">
              <label class="control-label">Rate</label>
              <input type="text" class="form-control1 ng-invalid ng-invalid-required ng-touched" ng-model="model.name" name="rate" required="">
            </div>
           
            
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