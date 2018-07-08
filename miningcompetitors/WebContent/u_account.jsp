<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>add/manage account</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="icon" href="Gallery/datamining.jpg"/>

<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />

<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script>
	function validate_mo()
	{
	var no=document.getElementById('mobile').value;
	
	
	var len=no.length;
	if(len!=10)
		alert("Please enter 10 digit mobile no");
	
	}
</script>
<style type="text/css">
<!--
.style7 {font-size: 14}

.style9 {
	font-size: 36px;
	color: #FF6600;
}
.style10 {
	color: #009933;
	font-size: 16px;
}
.style11 {color: #006699}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style13 {color: #006666}
.style14 {
	font-size: 16px;
	color: #FF6633;

}
.button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}

.button:hover {
    opacity: 0.8;
}
input[type=text], input[type=password] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
.style19 {font-weight: bold}
.style20 {font-weight: bold}
-->
.button {
	    background-color: #4CAF50;
	    color: white;
	    padding: 14px 20px;
	    margin: 8px 0;
	    border: none;
	    cursor: pointer;
	    width: 50%;
	}
	
	.button:hover {
	    opacity: 0.8;
	}
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">

      </div>
      <div class="searchform"></div>
     <!--  <div class="clr"></div>  -->
      <div class="menu_nav">
	  <%String user=(String)application.getAttribute("user"); %>
        <ul>
          <li><a href="usermain.jsp"><span>Home </span></a></li>
         <!--   <li><a href="#"><span><%=user%></span></a></li>-->
          <li><a href="userlogin.jsp"><span>Logout</span></a></li>
          <li></li>
          <li></li>
        </ul>
      </div>
     
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" />Mining Competitors from Large Unstructured Datasets</a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><br />
          Mining Competitors from Large Unstructured Datasets<br />
         </span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><br />
         Mining Competitors from Large Unstructured Datasets<br />
        </span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
       
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
				    <p align="justify">
		     <%@ include file="connect.jsp" %>
			<%
			try
			{
				String sql="select * from accounts where username='"+user+"'";
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(sql);
				if(rs.next()) 
				{
			%>	
			 <h3 align="left" class="style9">Add Money</h3>
			  <p align="justify">
			<table width="464" height="100">
		    <div class="article-info">
             <tr><td colspan="2"> <%
		   String msg=(String)application.getAttribute("msg");
		   if(msg!=null)
		   {
		   		%>
		  <center><h4><span class="style14"> <%=user%></span> <span class="style10 style20"> <%=msg%></span></h4></center>
		  <%
			application.removeAttribute("msg");
			
		   }%></td></tr>		 
		   
               <form action="u_addaccount.jsp?type1=<%="addmoney"%>" method="post"> 
               <tr>
                 <th><div align="left"><span class="style8">Enter 11 digit Account Number </span></div></th>
                 <td><input name="accno" type="text" autocomplete="off" required/></td>
               </tr>
               <tr>
                 <th><div align="left"><span class="style8">Enter Amount </span></div></th>
                 <td><input name="amount" type="text" autocomplete="off" required/></td>
               </tr>
               <tr>
			   <td width="188"><span class="style13"></span></td>
			   <td width="264"><label>
			     <input type="submit" name="Submit" class="button" value="Add Money"/>
			   </label> &nbsp;<a  href="usermain.jsp">Back</a></td></td>
			   </tr>
			   </form>
		    </div>
		  </table>

          </p>
		  <% 
		}
			else
			{
				%>	
			
			<h2 class="title style7">Create  Account </h2>
			  <p align="justify">
		  <table width="453" height="174">
		    <div class="article-info">
		 
		   
               <form action="u_addaccount.jsp?type1=<%="create"%>" method="post"> 
             
			   <tr>
                 <th><div align="left" class="style16"><span class="style19">Your Name </span></div></th>
                 <td><input name="name" type="text" value="<%=user%>" autocomplete="off" required></td>
               </tr>
               <tr>
                 <th><div align="left" class="style16"><span class="style19">Enter Email </span></div></th>
                 <td><input name="email" type="text" autocomplete="off" required></td>
               </tr>
               <tr>
                 <th><div align="left" class="style16"><span class="style19">Enter Mobile Number </span></div></th>
                 <td><input name="mobile" id="mobile" type="text" autocomplete="off" required></td>
               </tr>
               <tr>
                 <th><div align="left" class="style16"><span class="style19">Enter Amount </span></div></th>
                 <td><input name="amount" type="text" autocomplete="off" required></td>
               </tr>
               <tr>
			   <td width="169"><span class="style13"></span></td>
			   <td width="272">
			     <input type="submit" name="Submit" class="button"value="Create Account" onclick=" return validate_mo();"/>
			   
			   </tr>
			   </form>
		    </div>
	    </table>
	    

          </p>
		   <% 
		   
		   String msg=(String)application.getAttribute("msg");
		   if(msg!=null)
		   {
		   		%>
		  <h4><span class="style14"> <%=user%></span> <span  class="style11 style10"><%=msg%></span></h4>
		  <%
			application.removeAttribute("msg");
			
		   }
				
		}
		
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
	%>
	
        
          </div>
          
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="usermain.jsp">Home</a></strong></li>
            <li><strong><a href="u_viewaccount.jsp">View Account Details </a></strong></li>
            <li><strong><a href="userlogin.jsp">Logout</a></strong></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
