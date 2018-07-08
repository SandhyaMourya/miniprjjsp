<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>add mall  details</title>
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
    padding: 10px 20px;
    margin: 6px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	}
.button {
    background-color: #4CAF50;
    color: white;
    padding: 12px 18px;
    margin: 6px 0;
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
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style13 {
	color: #009933;
	font-size: 14px;
}
.style15 {color:blue;
	font-weight: bold;
	font-size:15px;
	}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">

      </div>
      <div class="searchform"></div>
      <!-- <div class="clr"></div>  -->
      <div class="menu_nav">
	  <%String admin=(String)application.getAttribute("admin"); %>
        <ul>
          <li><a href="adminmain.jsp"><span>Home </span></a></li>
          <!--   <li><a href="#"><span><%=admin%></span></a></li> -->
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
          <li></li>
          <li></li>
        </ul>
      </div>
     <!--   <div class="clr"></div> -->
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
        <h3 align="left" class="style9">Mall Details </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
	<%@ include file="connect.jsp" %>
	<%@ page import="java.util.*" %>
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
		  
            <table>
          <form action="a_insertmalldetails.jsp" method="post" enctype="multipart/form-data">
           <tr>
		   		<th width="141" ><div align="left" class="style15">Mall Name *: </div></th>
		  		<td width="271"><input type="text" required name="mallname" autocomplete="off" /></td>
		   </tr>
		     <tr>
		   		<th width="141" ><div align="left" class="style15">Mall Description *: </div></th>
				<td><input type="text" required name="mdes"  autocomplete="off" /></td>
			</tr>
			  <tr>
		   		<th width="141" ><div align="left" class="style15">Mall Specilization *: </div></th>
				<td><input type="text" required name="spcl"  autocomplete="off" /></td>
		   </tr>
		    <tr>
		   		<th width="141" ><div align="left" class="style15">Area Name *: </div></th>
		   		<td width="271"><input required type="text" name="area"  autocomplete="off" /></td>
		   </tr>
		    <tr>
		   		<th width="141" ><div align="left" class="style15">Location  *: </div></th>
		   		<td width="271"><input required type="text" name="location"  autocomplete="off" /></td>
		   </tr>
		   <tr>
		   		<th width="141" ><div align="left" class="style15">Distance From  *: </div></th>
				<td><input type="text" required name="dfrom"  autocomplete="off" /></td>
		   </tr>
		    <tr>
		   		<th width="141" ><div align="left" class="style15">Distance(km)  *: </div></th>
				<td><input type="text" required name="distance"  autocomplete="off" /></td>
		   </tr>
		   <tr>
		   		<th width="141" ><div align="left" class="style15">Mall Image  *: </div></th>
				<td><input type="file" required name="img"  autocomplete="off" /></td>
		   </tr>
		    <tr>
				<th width="141" height="57"></div></th>
		   		<td width="271"><input type="submit" onclick="return distancevalid();" class="button" value=" Add " />&nbsp;&nbsp;&nbsp;<a href="adminmain.jsp">Back</a></td>
		   		
		   </tr>
		   </form>
      </table>
	
            	
            <p class="spec"><a href="#" class="rm"></a></p>
          </div>
            
          <div class="clr"></div>
        </div>
        
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
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
