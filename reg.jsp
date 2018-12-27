<%@page import="java.io.*,java.sql.*" %>
<%
      String name=request.getParameter("cname");
      int rollno=Integer.parseInt(request.getParameter("rollno"));
      int telugu=Integer.parseInt(request.getParameter("telugu"));
int hindi=Integer.parseInt(request.getParameter("hindi"));
int english=Integer.parseInt(request.getParameter("english"));
int maths=Integer.parseInt(request.getParameter("maths"));
Class.forName("com.mysql.jdbc.Driver");
           Connection con=
           DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/krishna","root","1234");
           String sql="insert into reg values(?,?,?,?,?,?)"; 
           PreparedStatement st=con.prepareStatement(sql);
           st.setString(1,name);
           st.setInt(2,rollno);
           st.setInt(3,telugu);
           st.setInt(4,hindi);
st.setInt(5,english);
           st.setInt(6,maths);
           st.executeUpdate();
out.println("updated");
      

%>