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
<style type="text/css">
<!--
.content .sidebar .gadget {
    margin: -185px -1px 27px;
}
.style9 {
	font-size: 28px;
	color: #FF6600;
}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style15 {
	font-size: 14px;
	color: #009999;
	font-weight: bold;
}
.style16 {font-size: 18px}
-->
input[type=number]{
	    width: 85%;
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
	    width: 75%;
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
     
        <div class="article">
        <h3 align="left" class="style9"> Top 'K' Competitors Results Chart </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
         <table width="497" height="37" align="left"  cellpadding="0" cellspacing="0"  >
		<form action="a_topkeywords_results.jsp" method="post">	
			
				
			<tr>
				<th><div align="left" class="style11">Search Top 'K' Value </div></th>
				<td><input type="number" name="k"  placeholder="Enter K value" autocomplete="off"/></td>
				<td><input type="submit" value=" View " class="button"/></td>
			</tr>	
			
		   </form>
	  </table>
	  
            	
	     <p>
	       <%
	  	String k=request.getParameter("k");
		if(k!=null)
		{
		
      %>
       </p>
       
	     <p>&nbsp;</p>
	 	<p>&nbsp;</p>
	     <iframe src="results2.jsp?k=<%=k%>" width="600" height="500"></iframe>
		<%}%>
            	
            <p class="spec"  style="padding-left:565px;"><a href="adminmain.jsp">Back</a></p>
         
            <p align="right">&nbsp;</p>
          <p align="right" class="style12"> </p>
          <div class="clr"></div>
         </div>
         <div class="">
        <div class="gadget">
          <h2 class="star"><span></span> </h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp"></a></li>
            <li><a href="adminlogin.jsp"></a></li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
       
    </div>
    <p></p>
       <p></p>
       <p></p>
       <p></p>
       <p></p>
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
