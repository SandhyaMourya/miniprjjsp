<%@ page import="java.sql.*,java.util.Random" %>
<%@page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html><title>add user comments</title>
<body>
	&nbsp;
	<br><br><br>
	<%
		String user=(String)application.getAttribute("user");
		String loc=(String)application.getAttribute("loc");
		String type=request.getParameter("type");
		String key=request.getParameter("key");
        out.println("type=>"+type);
        out.println("key=>"+key);
   		try {
		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt=strDate+" "+strTime;
	   		
			
			Statement st3 = connection.createStatement();
			String query3 ="insert into search_history(username,keyword,type,location,dt)values('"+user+"','"+key+"','"+type+"','"+loc+"','"+dt+"')";
			int y=st3.executeUpdate (query3);
			if(y>0)	
			{					
				response.sendRedirect("u_searchresults.jsp?type="+type+"&key="+key+"");
			}
		
		
					
			connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   	
	%>
</body>
</html>