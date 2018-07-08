<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
<script>
<script>
	$(document).ready(function(){
	        $('.hidetable').hide();
	        $('.button').mouseover(function(){
            $('.hidetable').show();
	        });
	});
</script>
<style type="text/css">
<!--
.hidetable,.hidetable  {    
    border: 1px solid #ddd;
    text-align: left;
}

.hidetable {
    border-collapse: collapse;
    width: 70%;
}

th, td {
    padding: 1px;
}

input[type=text], input[type=password] {
    width: 60%;
    padding: 10px 20px;
    margin: 15px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
.button {
    background-color: #4CAF50;
    color: white;
    padding:7px 6px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}

.button:hover {
    opacity: 0.8;
}
.style9 {
	font-size: 25px;
	color: #FF6600;
}
.style11 {color: #006699;
		font-size:15px;}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style13 {
	font-size: 16px;
	color: #006666;
}
.style14 {color: #FF6600}
.style16 {font-size: 14px; color: #3366CC; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">

      </div>
      
      
      <div class="menu_nav">
	  <%String user=(String)application.getAttribute("user"); %>
        <ul>
          <li><a href="usermain.jsp"><span>Home </span></a></li>
        <!--   <li><a href="#"><span><%=user%></span></a></li>  -->
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
      <!--  <div class="article"> --> 
        <h3 align="left" class="style9">View Top Keywords </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
				    <p align="justify">
 		<table width="497" height="37" align="left"  cellpadding="0" cellspacing="0"  >
		<form action="u_topkeywords.jsp" method="post">	
			
			<tr>
				<th><div align="left" class="style11">Enter Top 'K' Value </div></th>
				<td><input type="text" name="k" placeholder="Enter K value" autocomplete="off"  required/></td>
			</tr>
			<tr>
				<td></td></td><td><input type="submit" class="button" value=" View " />
				&nbsp;<a href="usermain.jsp">Back</a></p></td>
			</tr>	
			
			</form>
	  </table>
 	<table class="hidetable">
	  <%@ include file="connect.jsp" %>
	  <%
	  	String k=request.getParameter("k");
		if(k!=null)
		{
		try
		{
			int m=0;
			int n=Integer.parseInt(k);
			String sql="select keyword,count(keyword) from search_history group by keyword order by count(keyword) desc limit 0,"+k+"";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				String s1=rs.getString(1);
				int count=rs.getInt(2);
				
				if(m==0)
				{
					%>
						<tr>
							<th height="46" colspan="2"><span class="style13">Top<span class="style14"> <%=n%></span> Searched Keywords  </span></th>
						</tr>
						<tr>
							<th width="74" height="42"><div align="left" class="style16">Keyowrd</div></th>
							<th width="206"><span class="style16">Number of Times Searched</span></th>
						</tr>
					<%
				}	m=1;
			%>
				<tr>
					<td><%=s1%></td>
					<td><div align="center"><%=count%></div></td>
				</tr>
			<%
				
			}
			
		
		}
		
		catch(Exception e)
		{
			out.print(e);
		}
		}
	  %>
		</table>				
			</p>
          </div>
        
          <p align="right" class="style12"> </p>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout</a></li>
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
<!-- </div> -->
<div align=center></div>
</body>
</html>
