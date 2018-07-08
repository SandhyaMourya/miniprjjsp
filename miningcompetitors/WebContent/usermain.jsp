
<%@ page import="java.util.regex.Matcher,java.util.regex.Pattern" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>user main page</title>
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
			font-size: 36px;
			color: #FF6600;
				}
		.style10 {
			color: #FF0000;
			font-weight: bold;
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
        <!--   <li><a href="#"><span><%=user%></span></a></li> -->
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
        <%  StringBuffer stringbf = new StringBuffer();
        Matcher m = Pattern.compile(
                "([a-z])([a-z]*)", Pattern.CASE_INSENSITIVE).matcher(user);
             
             while (m.find()) {
                m.appendReplacement(
                   stringbf, m.group(1).toUpperCase() + m.group(2).toLowerCase());
             }
             user = m.appendTail(stringbf).toString(); %>
        <h3 align="left" class="style9"> Welcome to <%= user %></h3>
           <div class="img">
          <div align="justify" class="style10">In any competitive business, success is based on the ability to make an item more appealing to customers than the competition. A number of questions arise in the context of this task: how do we formalize and quantify the competitiveness between two items? Who are the main competitors of a given item? What are the features of an item that most affect its competitiveness? Despite the impact and relevance of this problem to many domains, only a limited amount of work has been devoted toward an effective solution. In this paper, we present a formal definition of the competitiveness between two items, based on the market segments that they can both cover. Our evaluation of competitiveness utilizes customer reviews, an abundant source of information that is available in a wide range of domains. We present efficient methods for evaluating competitiveness in large review datasets and address the natural problem of finding the top-k competitors of a given item. Finally, we evaluate the quality of our results and the scalability of our approach using multiple datasets from different domains.</div>
          </div>
          <div class="clr"></div>
        </div>
        
        </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="usermain.jsp">Home</a></strong></li>
            <li><strong><a href="myprofile.jsp">View Profile</a></strong></li>
            <li><strong><a href="u_account.jsp">Create/ Manage Account</a></strong></li>
            <li><strong><a href="u_search.jsp">Search Hotels / Mall </a></strong></li>
            <li><strong><a href="u_topkeywords.jsp">View Top 'K' Keywords</a> </strong></li>
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
