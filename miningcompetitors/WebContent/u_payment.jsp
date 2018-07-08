<%@ page import="java.sql.*,java.util.Random" %>
<%@page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html><title>add user account</title>
<body>
<center>&nbsp;</center>
	<br><br><br>
	<%
		String user=(String)application.getAttribute("user");
		String loc=(String)application.getAttribute("loc");
		String type=request.getParameter("type");
		String id=request.getParameter("id");
		String hname=request.getParameter("hname");
		int total=Integer.parseInt(request.getParameter("total"));
		int rent=Integer.parseInt(request.getParameter("rent"));
		int n=Integer.parseInt(request.getParameter("n"));
		String key=request.getParameter("key");
   		try {
		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt=strDate+" "+strTime;
	   		
			Random rr = new Random();
	   		
			
				Statement st2 = connection.createStatement();
				String query2 ="select amount,acc_no from accounts where username='"+user+"'";
				ResultSet rs=st2.executeQuery(query2);
				if(rs.next())
				{
				
					int amt=rs.getInt(1);
					String acc_no=rs.getString(2);
					
					if(amt>=total)
					{
						int newamt=amt-total;
						Statement st1 = connection.createStatement();
						String query1 ="update accounts set amount='"+newamt+"' where username='"+user+"'";
						int x=st1.executeUpdate (query1);
						
						Statement st3 = connection.createStatement();
						String query3 ="insert into hotelbookings(username,acc_no,hotel_id,hname,rooms_booked,rent,total,dt)values('"+user+"','"+acc_no+"','"+id+"','"+hname+"','"+n+"','"+rent+"','"+total+"','"+dt+"')";
						int y=st3.executeUpdate (query3);
						
						if(x>0&&y>0)
						{
							Statement st4 = connection.createStatement();
							String query4 ="update roomdetails set rooms_avialable=rooms_avialable-"+n+" where hotel_id='"+id+"'";
							st4.executeUpdate (query4);
							
							String msg="Booking Successfull";
							application.setAttribute("msg",msg);
							response.sendRedirect("u_bookhotel.jsp?type="+type+"&id="+id+"&hname="+hname+"&key="+key+"");
						}
					}					
					else
					{
						String msg="Sorry Insufficient Balance";
						application.setAttribute("msg",msg);
						response.sendRedirect("u_bookhotel.jsp?type="+type+"&id="+id+"&hname="+hname+"&key="+key+"");
					
					}
					
				}
				else
				{
					String msg="Sorry You Dont Have account <br> Please Create Account";
					application.setAttribute("msg",msg);
					response.sendRedirect("u_account.jsp");
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