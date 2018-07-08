<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script>
function typevalidation()
{
var val = document.getElementById("type").value;
if(val==0)
	{
	alert("Select type Hotel/Mall");
	return false;
	}
	else
	{
		return true;
	}
}
</script>
<title>search page</title>
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
<style type="text/css">
	.style9 {
		font-size: 30px;
		color: #FF6600;
	}
	.style11 {color: #006699;font-size:15px;}
	.style12 {
		font-size: 14px;
		color: #FF6633;
	}
	.button {
	    background-color: #4CAF50;
	    color: white;
	    padding: 14px 20px;
	    margin: 8px 0;
	    border: none;
	    cursor: pointer;
	    width: 30%;
	}
	
	.button:hover {
	    opacity: 0.8;
	}
	input[type=text], input[type=password] ,select[type-text]{
	    width: 50%;
	    padding: 12px 20px;
	    margin: 8px 0;
	    display: inline-block;
	    border: 1px solid #ccc;
	    box-sizing: border-box;
	}
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
       <div class="searchform"></div>
          <div class="menu_nav">
	 		 <%String user=(String)application.getAttribute("user"); %>
        		<ul>
          		<li><a href="usermain.jsp"><span>Home </span></a></li>
        		<!--   <li><a href="#"><span><%=user%></span></a></li> -->
          		<li><a href="userlogin.jsp"><span>Logout</span></a></li>
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
      	
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <h3 align="left" class="style9"> Search Malls / Hotels </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
	       <p align="justify">
 			<table>
				<form action="u_inserthistory.jsp" method="post">	
			<tr>
				<th width="150"><div align="left" class="style11">Select Search Type </div></th>
				<td width="345"><select id="type" name="type">
				<option value="0">---------Select Type--------</option>
				<option>Hotel</option>
				<option>Mall</option>
				</select></td>
			</tr>	
			<tr>
				<th><div align="left" class="style11">Search Keyword </div></th>
				<td><input type="text" name="key" placeholder="mall/hotel name" autocomplete="off" required/></td>
			</tr>	
			<tr>
				<th height="49"></th>
				<td><input class="button" type="submit" onclick=" return typevalidation();" value=" Search " />&nbsp;<a href="usermain.jsp">Back</a></td>
			</tr>	
			</form>
	  </table>
						
			
           </div>
          <p align="right" class="style12"> &nbsp;&nbsp;&nbsp;&nbsp;</p>
          </p>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="usermain.jsp">Home</a></strong></li>
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
