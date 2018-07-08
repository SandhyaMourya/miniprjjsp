<%@ page import="java.sql.*,java.util.Random" %>
<%@page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html><title>add user comments</title>
<body>
<center>&nbsp;</center>
	<br><br><br>
	<%
		String user=(String)application.getAttribute("user");
		String type=request.getParameter("type");
		String id=request.getParameter("id");
		String cmt=request.getParameter("cmt");
		String key=request.getParameter("key");

   		try {
		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt=strDate+" "+strTime;
	   		
			if(type.equalsIgnoreCase("Hotel"))
			{
						String hname=request.getParameter("hname");
						Statement st3 = connection.createStatement();
						String query3 ="insert into hotel_comments(hotel_id,username,Comment,dt)values('"+id+"','"+user+"','"+cmt+"','"+dt+"')";
						int y=st3.executeUpdate (query3);
						
						if(y>0)
						{
							
							String sql="update hotels set rank=rank+1 where id='"+id+"'";
							Statement st=connection.createStatement();
							st.executeUpdate(sql);
							
							String msg="Comment Posted Successfull";
							application.setAttribute("msg",msg);
							response.sendRedirect("u_viewhoteldetails.jsp?type="+type+"&id="+id+"&hname="+hname+"&key="+key+"");
						}
			}			
			else if(type.equalsIgnoreCase("Mall"))
			{
						String mname=request.getParameter("mname");
						Statement st3 = connection.createStatement();
						String query3 ="insert into mall_comments(mall_id,username,Comment,dt)values('"+id+"','"+user+"','"+cmt+"','"+dt+"')";
						int y=st3.executeUpdate (query3);
						
						if(y>0)
						{
							String sql="update malls set rank=rank+1 where id='"+id+"'";
							Statement st=connection.createStatement();
							st.executeUpdate(sql);
							
							String msg="Comment Posted Successfull";
							application.setAttribute("msg",msg);
							response.sendRedirect("u_viewmalldetails.jsp?type="+type+"&id="+id+"&mname="+mname+"&key="+key+"");
						}
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