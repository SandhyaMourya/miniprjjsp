<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>wrong  login page</title>
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
.style9 {
	font-size: 36px;
	color: #FF6600;
}
a{color:blue;}
.style11 {font-size: 12px}
.style12 {color: #FF3300;font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">

 <div class="post_content">
            <p align="justify" style="text-indent:20px;">
			
			
 <table width=405 height="267" border=0 align="center" cellpadding=0 cellspacing=0>
<tr>
<td width="405" height="189" align=center valign="middle"><div align="center"><span class="style4 style12">Sorry.</span><span class="style11 style4 style12"><BR>
        <BR>
        <font class=sb3>
          Your login failed.</font></span><span class="style11 style4"><font class=sb3></font><font class=sb3><BR>
            </font></span>
            <span class="style11"></span></span>            </span><TABLE cellSpacing=0 cellPadding=0 border=0 height="7">
    <TR><TD height=7 class="style9 style4 style11"></TD></TR>
    </TABLE>
            <span class="style9 style4 style11"><font class="sb3">This happens due to - Incorrect Username / Incorrect password<BR>
            </font> </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0 width="10">
    <TR>
      <TD width="10" height=9 class="style9 style4 style11"></TD></TR>
    </TABLE>
  <span class="style9 style4 style11"><font class="sb3">In case you have forgotten your password,<BR>
    </font> </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0>
    <TR><TD height=9 class="style9 style4 style11"></TD></TR>
    </TABLE>
  <!--<span class="style9 style4 style11"><font class="sb3">click&nbsp; here to re enter correct&nbsp; username or password on homepage.</font></span><span class="style9"><font class="sb3"><BR>
    </font></span><font class="sb3"><BR>   -->
      <%
String type=(String)application.getAttribute("type");
if(type.equalsIgnoreCase("user")){
%>
      <a href="userlogin.jsp">Click here to go back</a>	<br />	
        <a href="index.html"><span class="">Home Page</span></a>
      </BR>
      <%}
else if(type.equalsIgnoreCase("admin")){
%>
      <a href="adminlogin.jsp">Click here to go back</a><BR>
      <!--  <a href="index.html"><span>Home Page</span></a> -->
      <%}
%>
    </font></div></td>
</tr>
</table>			
			</p>
            <p class="spec"><a href="#" class="rm"></a></p>
          </div>


  <div class="header">
   <!--  --> <div class="header_resize">
      <div class="logo">

      </div>
      <!--<div class="searchform"></div> -->
      
      <!--<div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
        </ul>
	 </div>-->
      
      <!--   <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big><br />
         </span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>Mining Competitors from Large Unstructured Datasets</big><br />
        </span></a> </div>
        <div class="clr"></div>
      </div>-->
      <div class="clr"></div>
    </div> 
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
        <!--<h3 align="left" class="style9">  Login Failed..!! </h3>
             <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
         
          <div class="clr"></div>
        </div>
        
        </div>
      <!--  <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li></li>
          </ul>
        </div>
      </div>-->
      <div class="clr"></div>
    </div>
  </div>
  <div class="clr"></div>
  <div>
    <div class="fbg_resize">
      
    </div>
    
  <div class="fbg">
    <div class="fbg_resize">
      
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
