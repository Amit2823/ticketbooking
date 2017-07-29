
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Movie Ticket Booking | Contact</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- Bootstrap stylesheet -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js'></script>
<script src='js/jquery.color-RGBa-patch.js'></script>
<script src='js/example.js'></script>
</head>
<body>
<div class="header">
	 <%@ include file ="include/header.jsp" %>
</div>
<div class="content">
	<div class="wrap">
            <div class="row">
                <div class="col-md-6">
                    <div class="login">
                        <div class="login_head">
                        <h2>Sign In</h2>
                        </div>
                        <form method="post" action="login.jsp">
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" name="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" name="pwd">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
                    </div>
                </div>
                <div class="col-md-6">
                    
                     <div class="login">
                         <div class="login_head">
                         <h2>Create a New Account</h2>
                         </div>
                        <form method="post" action="registerprocess.jsp">
                            <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" name="name">
  </div>
                                              <div class="form-group">
    <label for="contact">Contact:</label>
    <input type="contact" class="form-control" name="contact">
  </div>
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" name="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" name="pwd">
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
                    </div>
                </div>
            </div>
	</div>
</div>
 <%@ include file ="include/footer.jsp" %>
</body>
</html>
