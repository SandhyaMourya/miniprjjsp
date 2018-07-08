<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>

<%
	
 	String hname=request.getParameter("hname");
	String hloc=request.getParameter("hloc");
	String harea=request.getParameter("harea");
	String dfrom=request.getParameter("dfrom");
	int distance=Integer.parseInt(request.getParameter("distance"));
	
	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

	Date now = new Date();
	
	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String dt=strDate+ " "+strTime;

	try 
	{
     	if(hname.toLowerCase().contains("hotel"))
		{
			
		}
		else
		{
			hname="Hotel "+hname;
		}
		String sql1="select * from hotels where (hotelname='"+hname+"' and location='"+hloc+"' and area='"+harea+"')";
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(sql1);
		if(rs1.next())
		{
			String msg=("Hotel Already Exists");
			application.setAttribute("msg",msg);
			response.sendRedirect("a_addhotel.jsp");
		}
		else
		{
			int rank=0;
			String sql="insert into hotels (hotelname,location,area,dt,rank,dfrom,distance)values('"+hname+"','"+hloc+"','"+harea+"','"+dt+"',"+rank+",'"+dfrom+"',"+distance+")";
			Statement st=connection.createStatement();
			int x=st.executeUpdate(sql);
			if(x>0)
			{
				
				response.sendRedirect("a_addroomdetails.jsp");
			}
		}

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>