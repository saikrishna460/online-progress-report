<%@page import="java.io.*,java.sql.*" %>
<%
      
      int roll=Integer.parseInt(request.getParameter("pass"));
      


           Class.forName("com.mysql.jdbc.Driver");
           Connection con=
           DriverManager.getConnection 
           ("jdbc:mysql://localhost:3306/krishna","root","1234");
         
	 Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select * from employee");
{     
 %>   
<table align="center" border="10px" bordercolor="cyan">
<tr colspan=2 align="center" ><td>

<font face="Gabriola" size=18>
<%out.println(rs.getString(1));%>
</font>


<font face="Times New Roman" size=8 color="red">
<u><%out.println(rs.getInt(2));%></u>
</font>
</td>
</tr>

<font face="Rockwell Nova" size="16"><tr>
<th>SUBJECTS</th>
<th>MARKS</TH>
</tr></font>
<font face="Gabriola" size="16">
<tr><td>TELUGU</td>
<td>
<%out.println(rs.getInt(3));%>
</td>
</tr>
<tr><td>HINDI</td><td>
<%out.println(rs.getInt(4));%>
</td></tr>
<tr><td>ENGLISH</td>
<td>
<%out.println(rs.getInt(5));%>
</td></tr>
<tr><td>MATHS</td><td>
<%out.println(rs.getInt(6));%>
</td></tr>
<%
 }    
        

           
%>