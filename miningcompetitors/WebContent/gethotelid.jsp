<%@ page import="java.sql.*"%><%@ include file="connect.jsp" %>
<%String hname = request.getParameter("hname");
String sql="select * from hotels where (hotelname='"+hname+"')";
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
	String loc=rs.getString(3);
	String area=rs.getString(4);
    String arealoc = area+"||"+loc;out.print(arealoc);
}%>