<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>add hotels</title>
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
function distancevalid()
{
var dis=document.getElementById("distance").value;
dis = Number(dis);
if(isNaN(dis))
	{
	alert("Please Enter Number");
	return false;
	}
	
	}

</script>
<style type="text/css">
.content .mainbar .article {
    margin: 0 0 32px;
    padding: 10px 210px;
    border-bottom: 1px solid #ededed;
	}
<!--
input[type=text], input[type=password] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
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
.style9 {
	font-size: 30px;
	color: #FF6600;
	}
a {
	font-size: 14px;
	color: #FF6633;
	}
.style13 {
	color: #009933;
	font-size: 14px;
	}
.style16 {color: black; font-weight: bold; }

-->
</style>

</head>

<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
     <!--  <div class="clr"></div>   -->
      <div class="menu_nav">
	  <%String admin=(String)application.getAttribute("admin"); %>
        <ul>
          <li><a href="adminmain.jsp"><span>Home </span></a></li>
         <!--  <li><a href="#"><span><%=admin%></span></a></li> -->
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
          <li></li>
          <li></li>
        </ul>
      </div>
    <!--   <div class="clr"></div>  -->
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big><br />
         </span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big><br />
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
        <h3  class="style9">Add Hotel </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
       	 		<div class="post_content">
				  <%
				  String msg=(String)application.getAttribute("msg");
				  if(msg!=null)
				  {
				  	%>
					<h4><span class="style13"><%=msg%></span> </h4>
					<%
				  }
				  application.removeAttribute("msg");
				  %>
  		          <form action="a_addhoteldata.jsp" method="post">
            		<table width="500" height="223" align="left"  cellpadding="0" cellspacing="0" >
           				<tr>
		   					<th width="141" ><div align="left" class="style16">Hotel Name : </div></th>
		  					<td width="271"><input type="text" name="hname" required placeholder="hotel name" autocomplete="off"/></td>
					   </tr>
		  
					   <tr>
		   					<th width="141"><div align="left" class="style16">Area Name  : </div> </th>
		   					<td width="271"><input type="text" required name="harea" placeholder="Enter Area Name" autocomplete="off"/></td>
		   				</tr>
		   
		    			<tr>
		   					<th width="141" ><div align="left" class="style16">Location : </div></th>
		   					<td width="271"><input type="text" required name="hloc" placeholder="Enter Place Name" autocomplete="off" /></td>
		   				</tr>
		    			<tr>
		   					<th width="141"><div align="left" class="style16">Distance From  : </div></th>
							<td><input type="text" name="dfrom" required placeholder="change over place" autocomplete="off"/></td>
		   				</tr>
		    			<tr>
		   					<th width="141"><div align="left" class="style16">Distance(Km) : </div></th>
							<td><input type="text" name="distance" id="distance" required autocomplete="off"/></td>
		   				</tr>
		    			<tr>
		   					<th width="141" height="51"></th>
		   					<td width="271"><input type="submit" class="button"onclick="return distancevalid();" name="hname" value=" Add " />&nbsp;&nbsp;&nbsp;<a href="adminmain.jsp">Back</a></td>
		        		</tr>
					</table>
		   		</form>
      	 </div>
      <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="adminmain.jsp">Home</a></strong></li>
            <li><strong><a href="a_addfooditems.jsp">Add Food Items</a> </strong></li>
            <li><strong><a href="a_addroomdetails.jsp">Add Room details</a></strong></li>
            <li><strong><a href="adminlogin.jsp">Logout</a></strong></li>
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
