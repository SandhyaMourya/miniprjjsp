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
		String type1=request.getParameter("type1");
   		try {
		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt=strDate+" "+strTime;
	   		
			Random rr = new Random();
	   		
			if(type1.equalsIgnoreCase("addmoney"))
			{
			
				String accno=request.getParameter("accno");
				int amount=Integer.parseInt(request.getParameter("amount"));
				
				Statement st2 = connection.createStatement();
				String query2 ="select amount from accounts where acc_no='"+accno+"' and username='"+user+"'";
				ResultSet rs=st2.executeQuery(query2);
				if(rs.next())
				{
				
					int oldamt=rs.getInt(1);
					int newamt=oldamt+amount;
					
					Statement st1 = connection.createStatement();
					String query1 ="update accounts set amount='"+newamt+"' where acc_no='"+accno+"'";
					int x=st1.executeUpdate (query1);
					if(x>0)
					{
						String msg="Amount added to Your Account Successfully";
						application.setAttribute("msg",msg);
						response.sendRedirect("u_account.jsp");  
					}
				}
				else
				{
					String msg="Sorry Invalid Account Number";
					application.setAttribute("msg",msg);
					response.sendRedirect("u_account.jsp");
				}
			}
			else if(type1.equalsIgnoreCase("create"))
			{
				
				String email=request.getParameter("email");
				String mobile=request.getParameter("mobile");
				double amount=Double.parseDouble(request.getParameter("amount"));						
				String accno = 64+String.valueOf(rr.nextInt(10)) + String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10)) + String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10)) + String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10)) + String.valueOf(rr.nextInt(10))+String.valueOf(rr.nextInt(10));
			
				Statement st2 = connection.createStatement();
				String query2 ="insert into accounts (username,acc_no,email,mobile,amount,dt)values('"+user+"','"+accno+"','"+email+"','"+mobile+"','"+amount+"','"+dt+"')";
				int x=st2.executeUpdate(query2);
				if(x>0)
				{
					String msg=" Your account created Successfully";
					application.setAttribute("msg",msg);
					response.sendRedirect("u_account.jsp");  
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