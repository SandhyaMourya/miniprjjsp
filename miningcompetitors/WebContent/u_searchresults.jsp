<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>search results page</title>
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
.para{
	font-size:18px;
	font-family:Times New Roman;
	color: black;
	}
.style9 {
	font-size: 30px;
	color: #FF6600;
}
.style12 {
	font-size: 14px;
	color: #FF6633;
}
.style15 {color: #FFFF00}
.style17 {color: #FF0000; font-weight: bold; }
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
      
      <div class="menu_nav">
	  <%String user=(String)application.getAttribute("user"); %>
        <ul>
          <li><a href="usermain.jsp"><span>Home </span></a></li>
         <!--  <li><a href="#"><span><%=user%></span></a></li>  -->
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
        <h3 align="left" class="style9"> Search Results </h3>
          <div class="clr"></div>
         <!-- <div class="img"><img src="images/img1.jpg" width="624" height="134" alt="" class="fl" /></div>-->
          <div class="post_content">
				  
<table width="644" height="168" align="left"  cellpadding="0" cellspacing="0"  >
<%@ include file="connect.jsp" %>
<%
String loc=(String)application.getAttribute("loc");
String type=request.getParameter("type");
String key=request.getParameter("key");
String s1,s2,s3,s4,s5,s6="",s7,s8,s9,s10;
int p=0,j=0,x=0;

	try	
	{
		if(type.equalsIgnoreCase("Hotel"))
		{
			int sum=0,sum1=1;
			Statement st6 = connection.createStatement();
			ResultSet rs6 = st6.executeQuery("select * from hotels where hotelname like '%"+key+"%' "); //|| (area like '%"+loc+"%' || dfrom like '"+loc+"')");
			while(rs6.next())
			{
				
			sum=sum+1;
			}
				  int count=0;	
			  int[] input = new int[sum];
	  
			String sql="select * from hotels where hotelname like '%"+key+"%' "; //|| (area like '%"+loc+"%' || dfrom like '"+loc+"')";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				p=rs.getInt(1);
				s6=rs.getString(2);
				 input[count]=rs.getInt(8);
    		 	count=count+1;
						
			}
	
    	 
       		int n = input.length;
		
    	
        	int k;
        	for (int m = n; m >= 0; m--) {
            for (int i = 0; i < n - 1; i++) {
                k = i + 1;
              
			    if (input[i] > input[k]) {
                   // swapNumbers(i, k, array);
                    
                    int temp;
                    temp = input[i];
                    input[i] = input[k];
                    input[k] = temp;
                    
                }
            }
		}
            //printNumbers(array);
      
        for (int i = 0; i < input.length; i++) {
		
	  	Statement st1 = connection.createStatement();
	  	String str1 = "select * from hotels where distance="+input[i]+"";
	  	ResultSet rs1 =st1.executeQuery(str1);
	  	if(rs1==null)
	  	{
		  	out.print("empty");
	  	}
		  if(rs1.next())
		  {
			
					j=rs1.getInt(1);
					s1=rs1.getString(2);//h name
					s2=rs1.getString(3);//location
					s3=rs1.getString(4);//area
					s4=rs1.getString(7);//distancefrom
					s5=rs1.getString(8);//distance
					//out.print(input[i]+"  "+s1+"<br>");
				if(x==0)
				{
					%>
					
					<tr>
					  <th width="103" height="34" align="center" valign="middle" bgcolor="#FF0000"><div align="left" class="style15">
					    <div align="center">Hotel Name  </div>
					  </div></th>
					  <th width="129" align="center" valign="middle" bgcolor="#FF0000"><div align="left" class="style15">
					    <div align="center">Area </div>
					  </div></th>
					  <th width="164" align="center" valign="middle" bgcolor="#FF0000"><div align="left" class="style15">
					    <div align="center">Location  </div>
					  </div></th>
					  <th width="107" align="center" valign="middle" bgcolor="#FF0000"><div align="left" class="style15">
					    <div align="center">Distance From </div>
					  </div></th>
					  <th width="139" align="center" valign="middle" bgcolor="#FF0000"><div align="left" class="style15">
					    <div align="center">More </div>
					  </div></th>
					</tr>
					<%}x=1;%>
					<tr>
					  <td height="80" align="center" valign="middle"><%=s1%></td>
						<td align="center" valign="middle"><%=s3%></td>
						<td align="center" valign="middle"><%=s2%></td>
						<td align="center" valign="middle"><%=s4%>( <%=s5%> Kms)</td>
						<td align="center" valign="middle"><a href="u_viewhoteldetails.jsp?id=<%=j%>&type=<%=type%>&hname=<%=s1%>&key=<%=key%>">View Details</a></td>
					</tr>
					
		    <%
				sum1++;
		
	 		}
	  	}
      				
		}
	
	
		 if(type.equalsIgnoreCase("Mall"))
		{
			
			int sum=0,sum1=1;
			Statement st6 = connection.createStatement();
			ResultSet rs6 = st6.executeQuery("select * from malls where mallname like '%"+key+"%' "); //and (area like '%"+loc+"%' || dfrom like '"+loc+"')");
			while(rs6.next())
			{
			sum=sum+1;
			}
				  int count=0;	
	  int[] input = new int[sum];
	  
			String sql="select * from malls where mallname like '%"+key+"%'"; // and (area like '%"+loc+"%' || dfrom like '"+loc+"')";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				p=rs.getInt(1);
				s6=rs.getString(2);
				 input[count]=rs.getInt(8);
    		 	count=count+1;
						
			}
	
    	 
       int n = input.length;
		
    	
        int k;
        for (int m = n; m >= 0; m--) {
            for (int i = 0; i < n - 1; i++) {
                k = i + 1;
              
			    if (input[i] > input[k]) {
                   // swapNumbers(i, k, array);
                    
                    int temp;
                    temp = input[i];
                    input[i] = input[k];
                    input[k] = temp;
                    
                }
            }
		}
            //printNumbers(array);
     
        for (int i = 0; i < input.length; i++) {
		
		
	  Statement st1 = connection.createStatement();
	  String str1 = "select * from malls where distance="+input[i]+"";
	  ResultSet rs1 =st1.executeQuery(str1);
	  if(rs1.next())
	  {
		
				j=rs1.getInt(1);
				s1=rs1.getString(2);//h name
				s2=rs1.getString(6);//location
				s3=rs1.getString(5);//area
				s4=rs1.getString(7);//distancefrom
				s5=rs1.getString(8);//distance
				if(x==0)
				{
					%>
					
					<tr>
					  <th width="103" height="24" align="center" valign="middle" bgcolor="#FFFF00"><div align="left" class="style17">
					    <div align="center">Mall Name  </div>
					  </div></th>
					  <th width="129" align="center" valign="middle" bgcolor="#FFFF00"><div align="left" class="style17">
					    <div align="center">Area </div>
					  </div></th>
					  <th width="164" align="center" valign="middle" bgcolor="#FFFF00"><div align="left" class="style17">
					    <div align="center">Location  </div>
					  </div></th>
					  <th width="107" align="center" valign="middle" bgcolor="#FFFF00"><div align="left" class="style17">
					    <div align="center">Distance From </div>
					  </div></th>
					  <th width="139" align="center" valign="middle" bgcolor="#FFFF00"><div align="left" class="style17">
					    <div align="center">More </div>
					  </div></th>
					</tr>
					<%}x=1;%>
					<tr>
					  <td height="28" align="center" valign="middle"><%=s1%></td>
						<td align="center" valign="middle"><%=s3%></td>
						<td align="center" valign="middle"><%=s2%></td>
						<td align="center" valign="middle"><%=s4%>( <%=s5%> Kms)</td>
						<td align="center" valign="middle"><a href="u_viewmalldetails.jsp?id=<%=j%>&type=<%=type%>&mname=<%=s1%>&key=<%=key%>">View Details</a></td>
					</tr>
					
					  <%
				sum1++;
		
	 } }
		}
		
		
		
	}
	catch(Exception e)
	{
		out.print(e);
	}	
		
		
		%>
	</table>
	 <p align="right" class="style12"><a href="u_search.jsp">Back</a></p>
            <p>&nbsp;</p>
           <!--  <p class="spec"><a href="#" class="rm"></a></p> -->
          </div>
          <p>&nbsp;</p>
         <!--  <div class="clr"></div> -->
          <p align="right" class="style12"></p>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
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
</div>
<div align=center></div>
</body>
</html>
