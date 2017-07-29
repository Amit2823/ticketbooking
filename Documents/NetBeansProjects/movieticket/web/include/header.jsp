
<div class="header-top">
		<div class="wrap">
              <%

if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
{
    
}
else
{
    out.print("<b style='color:white;padding: 16px 10px 4px 10px;float:left;'>Welcome "+session.getAttribute("name")+"</b>");
}
%>

						  <div class="nav-wrap">

					<ul class="group" id="example-one">
                                                   
			           <li class="current_page_item"><a href="index.jsp">Home</a></li>
			           <li><a href="about.jsp">About</a></li>
			  		   <li><a href="movies-events.jsp">Movies </a></li>
			  		   <li><a href="contact.jsp">Contact</a></li>
                                            <%

if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
{
    out.print("<li><a href='register.jsp'>Login</a></li>");
}
else
{
    out.print("<li><a href='logout.jsp'>Logout</a></li>");
}
%>
                                           
			        </ul>
			  </div>
 			<div class="clear"></div>
   		</div>
        </div>
<div class="block">
	<div class="wrap">
		<div class="h-logo">
			<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
		</div>
        <form action="#" id="reservation-form">
		       <fieldset>
		                <div class="field">
			                 <label>Search:</label>
			                  <select class="select2">
			                    <option>Movies or Actors</option>
			                  </select>
			            </div>
		                <div class="field1">
			                   <br/>
			                  <input type="submit" style="border: 1px solid #5D3825;background: #DB9603;color: #fff;outline: none;padding: 5px;float: left;"value="Search"/>
			                   
		                </div>
		       </fieldset>
            </form>
            <div class="clear"></div>
   </div>
</div>
