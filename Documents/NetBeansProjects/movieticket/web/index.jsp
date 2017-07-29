
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Movie Ticket Booking | Home </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script src="js/modernizr.js"></script>
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js'></script>
<script src='js/jquery.color-RGBa-patch.js'></script>
<script src='js/example.js'></script>
<!-- jQuery -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
 <!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
  <!-- DC Tabs CSS -->
<link type="text/css" rel="stylesheet" href="http://www.dreamtemplate.com/dreamcodes/tabs/css/tsc_tabs.css" />
 <!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/jquery.min.js"></script> <!-- (do not call twice) -->
 <!-- DC Tabs JS -->
<!--<script type="text/javascript" src="http://www.dreamtemplate.com/dreamcodes/tabs/js/tsc_tabs.js"></script>-->
<link rel="stylesheet" href="css/tsc_tabs.css" type="text/css" media="all" />
</head>
<body>
<div class="header">
    
	 <%@ include file ="include/header.jsp" %>
         
<div class="banner">
 <div class="wrap">
      <section class="slider">
        <div class="flexslider">
          <ul class="slides">
            <li>
  	    	    <img src="images/banner1.jpg" alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="images/banner.jpg"  alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="images/banner2.jpg"  alt=""/>
  	    	</li>
  	    	<li>
  	    	    <img src="images/banner3.jpg"  alt=""/>
  	    	</li>
          </ul>
        </div>
      </section>
   </div>
</div>
</div>
<div class="content">
	<div class="wrap">
		<div class="content-top">
				<div class="listview_1_of_3 images_1_of_3">
					<h3>Upcoming Movies </h3>
				<div class="content-left">
                                    <div class="sideimg">
                                        <img src="images/side1.jpg" alt=""/>
                                    </div>
                                    
					
					
					<div class="clear"></div>
				</div>
				<div class="content-left">
					<div class="sideimg">
                                        <img src="images/side2.jpg" alt=""/>
                                    </div>
					<div class="clear"></div>
				</div>
				
				
			
		</div>				
		<div class="listview_1_of_3 images_1_of_3">
					<h3>Trailers</h3>
					<div class="middle-list">
						<div class="listimg1">
							 <img src="images/pic5.jpg" alt=""/>
							 <a href="#" class="link">diam nonummy nibh euismod tincidunt</a>
						</div>
						<div class="listimg2">
							<img src="images/pic6.jpg" alt=""/>
							<a href="#" class="link">diam nonummy nibh euismod tincidunt</a>
						</div>
						<div class="clear"></div>
					</div>
					<div class="middle-list">
						<div class="listimg1">
							<img src="images/pic7.jpg" alt=""/>
							<a href="#" class="link">diam nonummy nibh</a>
						</div>
						<div class="listimg2">
							<img src="images/pic8.jpg" alt=""/>
							<a href="#" class="link">diam nonummy nibh</a>
						</div>
						<div class="clear"></div>
					</div>	
					<div class="middle-list">
						<div class="listimg1">
							<img src="images/pic5.jpg" alt=""/>
							<a href="#" class="link">diam nonummy nibh euismod tincidunt</a>
						</div>
						<div class="listimg2">
							<img src="images/pic6.jpg" alt=""/>
							<a href="#" class="link">diam nonummy nibh euismod tincidunt</a>
						</div>
						<div class="clear"></div>
					</div>
					<a href="#" class="link2">See all</a>
					<div class="sub-bottom">
						<div class="nav">
							<section class="tsc_gradient-tabs" style="width:100%;">
							  <input id="grad-tab-1" type="radio" name="radio-set1" class="grad-tab-selector-1" checked="checked">
							 <label for="grad-tab-1" class="grad-tab-label-1" style="width:90%;" >Movies In Theater</label>
							 
							  <input id="grad-tab-4" type="radio" name="radio-set1" class="grad-tab-selector-4">
							   <div class="clear-shadow"></div>
							  <div class="gradtab-content" style="height:250px;">
							    <div class="gradtab-content-1">
                                                                <%
                                                                 Class.forName("oracle.jdbc.driver.OracleDriver");  
  
          Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
     PreparedStatement stmt1=con1.prepareStatement("select film.name,theater.name from schedule,theater,film  ");  
                    // PreparedStatement stmt1=con.prepareStatement("select name from schedule,theater where schedule.theaterid=theater.id");
                      // PreparedStatement stmt2=con.prepareStatement("select name from schedule,film where schedule.filmid=film.id");
                     ResultSet rs1=stmt1.executeQuery();  
                          while(rs1.next() ){  
                                                                %>
							    	<h2><%=rs1.getString(2)%>....................<%=rs1.getString(1)%></h2>
							    	<%}%>
							   </div>
							    
							    
							 </div>
					</section>		
				</div> 
			</div>
		</div>			
		<div class="listview_1_of_3 images_1_of_3">
					<h3>Films in Theaters</h3>
                                          <%   Class.forName("oracle.jdbc.driver.OracleDriver");  
                       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","cinema","12345");  
                       PreparedStatement stmt=con.prepareStatement("select * from film");  
                       ResultSet rs=stmt.executeQuery(); 
                       while(rs.next())
                       {
  %>
					<div class="content-left">
					<div class="listimg listimg_1_of_2">
                                            <img src="admin/images/movies/<%=rs.getString(3)%>" height='150' alt=""/>
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap1">
                                        <a href="#" class="link4"><%=rs.getString(2)%></a><br>
                                        <span class="link-top">Cast: <a href="#" class="color2"><%=rs.getString(4)%> </a> </span> <br>
                                        Category : <a href="#" class="color2"><%=rs.getString(5)%></a> 
                                        
                                    </div>
					</div>
					<div class="clear"></div>
				</div>
                                        <br/>
                                        <br/>
                                      
                                        <%   }
                                        con.close();
                                        %>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <img src="images/pic10.jpg" alt=""/>
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap1">
                                        <a href="#" class="link4">augue duis dolore te</a><br>
                                        <span class="color1">USA (2013)</span><br>
                                        Genre: <a href="#" class="color2">duis</a> / <a href="#" class="color2">soluta nobis eleifend option congue</a><br>
                                        <span class="link-top">Actors: <a href="#" class="color2">Conse ctetur,<br>dolore eu feugiat nulla facilisis at vero </a> </span> 
                                    </div>
					</div>
					<div class="clear"></div>
				</div>
					
					<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <img src="images/pic11.jpg" alt=""/>
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap1">
                                        <a href="#" class="link4">augue duis dolore te</a><br>
                                        <span class="color1">USA (2013)</span><br>
                                        Genre: <a href="#" class="color2">duis</a> / <a href="#" class="color2">soluta nobis eleifend option congue</a><br>
                                        <span class="link-top">Actors: <a href="#" class="color2">Conse ctetur,<br>dolore eu feugiat nulla facilisis at vero </a> </span> 
                                    </div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="content-left">
					<div class="listimg listimg_1_of_2">
						 <img src="images/pic12.jpg" alt=""/>
					</div>
					<div class="text list_1_of_2">
						  <div class="extra-wrap1">
                                        <a href="#" class="link4">augue duis dolore te</a><br>
                                        <span class="color1">USA (2013)</span><br>
                                        Genre: <a href="#" class="color2">duis</a> / <a href="#" class="color2">soluta nobis eleifend option congue</a><br>
                                        <span class="link-top">Actors: <a href="#" class="color2">Conse ctetur,<br>dolore eu feugiat nulla facilisis at vero </a> </span> 
                                    </div>
					</div>
					<div class="clear"></div>
				</div>
				<a href="#" class="link2">See all</a>
				</div>		
				<div class="clear"></div>		
			</div>
	</div>
</div>
          <%@ include file ="include/footer.jsp" %>

</body>
</html>
