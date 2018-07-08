<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<html><title>users and owners  authorize</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		int mid = Integer.parseInt(request.getParameter("mid"));
		String utype=request.getParameter("utype");
		
   		try {
	   		Random rr = new Random();
	   		String str = "Authorized";
			
			if(utype.equalsIgnoreCase("user"))	
			{
				Statement st1 = connection.createStatement();
				String query1 ="update user set status='"+str+"' where id="+mid+" ";
				st1.executeUpdate (query1);
				response.sendRedirect("allusers.jsp");  
			}
			else if(utype.equalsIgnoreCase("owner"))	
			{
				Statement st1 = connection.createStatement();
				String query1 ="update owner set status='"+str+"' where id="+mid+" ";
				st1.executeUpdate (query1);
				response.sendRedirect("allowners.jsp");  
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