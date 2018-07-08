<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>add food items</title>
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
function getdynamicidforhname()
{
	var hname = document.getElementById("hname").value;
	//alert("hmon====="+hname);

var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
   //document.getElementById("demo").innerHTML = this.responseText;
	  var str = this.responseText;
	  //var a=str.replace(/ /g,'~');
	  //window.location.replace("a_addroomdetails.jsp?id="+id);
    
  // alert(a.charCodeAt(1));
  //removing additional spaces 
    var strClean = "";
   for (i=0; i < str.length; i++) {
       if (str.charAt(i) != '\n' &&
           str.charAt(i) != '\r' &&
           str.charAt(i) != '\t') {
           strClean = strClean + str.charAt(i);
       }
   }
   //separating values
   var res = strClean.split("||");
   var area = res[0];
   var loc = res[1]; 
   document.getElementById("area").value = area;
   document.getElementById("loc").value = loc;
   //alert(area+"====>"+loc);
  }
};
xhttp.open("GET", "gethotelid.jsp?hname="+hname, true);
xhttp.send();
}
</script>



<style type="text/css">
<!--
input[type=text], input[type=password] ,select{
    width: 60%;
    padding: 10px 18px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	}
.button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 18px;
    margin: 11px -50px;
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
table, td, th {    
    text-align: left;
}

-->
</style>
</head>

<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
       <div class="searchform"></div>
    <!--   <div class="clr"></div>  -->
      <div class="menu_nav">
	  <%String admin=(String)application.getAttribute("admin"); %>
        <ul>
          <li><a href="adminmain.jsp"><span>Home </span></a></li>
         <!--  <li><a href="#"><span><%=admin%></span></a></li>  -->
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
        <h3 align="left" class="style9">Add Food Items </h3>
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
		  String s1,s2,s3;
		  Set hname=new HashSet();
		  Set area=new HashSet();
		  Set loc=new HashSet();
		  String sql="select * from hotels";
		  Statement st=connection.createStatement();
		  ResultSet rs=st.executeQuery(sql);
		  while(rs.next())
		  {
		  		hname.add(rs.getString(2));
				//area.add(rs.getString(4));
				//loc.add(rs.getString(3));
		  
		  }
	
		  %>
		  
            <table width="414" height="337" align="left"  cellpadding="0" cellspacing="0" >
          <form action="a_insertitems.jsp" method="post" enctype="multipart/form-data">
           <tr>
		   		<th><div align="left" >Hotel Name : </div></th>
		  		<td width="271"><select name="hname" id="hname"  autocmplete="off" required onchange="getdynamicidforhname();">
				<option>Hotel Name</option>
				<%for(Object o:hname)
				{%>
				<option><%=o%></option>
				<%}%>
				</select>
				</td>
		   </tr>
		   <tr>
		   		<th width="141" ><div align="left" class="">Area Name : </div></th>
		   		<td width="271"><input type="text" name="area" id="area"/>	</td>
		   </tr>
		    <tr>
		   		<th width="141" ><div align="left" class="">Location  : </div></th>
		   		<td width="271"><input type="text" name="loc" id="loc" /></td>
		   </tr>
		   
		   <tr>
		   		<th ><div align="left" >Food Type  : </div></th>
				<td><select name="ftype" autocmplete="off" required>
				<option>Tiffen/Breakfast</option>
				<option>Lunch</option>
				<option>Dinner</option>
				</select>				
				</td>
			</tr>
			<tr>
		   		<th><div align="left" >Item Name  : </div></th>
				<td><input type="text" name="iname" autocomplete="off" required/></td>
		   </tr>
		   <tr>
		   		<th><div align="left" >Item Description  : </div></th>
				<td><input type="text" name="ides" autocomplete="off" required /></td>
		   </tr>
		   <tr>
		   		<th><div align="left" >Item Price  : </div></th>
				<td><input type="text" name="iprice" autocomplete="off" required/></td>
		   </tr>
		   <tr>
		   		<th><div align="left" >Item Image  : </div></th>
				<td><input type="file" name="img" autocomplete="off" required/></td>
		   </tr>
		   <tr>
				<th></th>
		   		<td><input type="submit" class="button" value=" Add "  />
		   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="a_addhotel.jsp">Back</a></td>
		   </tr>
		   </form>
      </table>
	
          </div>
            <p align="right">&nbsp;</p>
          <p align="right" class="style12"></p>
        </div>
        
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="adminmain.jsp">Home</a></strong></li>
            <li><strong><a href="adminlogin.jsp">Logout</a></strong></li>
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
