<%@page contentType="text/html"%>
<%@page pageEncoding="gb2312"%>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*" %>
<html>
  <head>
    <title>�������ӳغ�����Դ�������ݿ�</title>
  </head>

  <body>
    <h1>�˿���Ϣ</h1>
   
    <%
      InitialContext context = new InitialContext();
      DataSource dataSource =
        (DataSource) context.lookup("java:comp/env/jdbc/MySqlDS");
      Connection conn = null;
      Statement stmt = null;
      ResultSet rset = null;
      try {
        conn = dataSource.getConnection();
        stmt = conn.createStatement();
        rset = stmt.executeQuery("select * from customer");
        if (rset.next()) {
    %>
          <table width="100%" border="1">
            <tr align="left">
              <th>�˿�ID</th><th>��ַ</th><th>�绰</th>
            </tr>
    <%
          do {
    %>
            <tr>
              <td><%= rset.getString("customerid") %></td>
              <td><%= rset.getString("address") %></td>
              <td><%= rset.getString("phone") %></td>
            </tr>
    <%
          } while (rset.next());
    %>
          </table>
    <%
          } else {
    %>
            No results from query
    <%
          }
        } catch (SQLException e) {
    %>
          <%= e.getMessage() %>
    <%
          e.printStackTrace();
        } finally {
          if (rset != null) { rset.close(); }
          if (stmt != null) { stmt.close(); }
          if (conn != null) { conn.close(); }
          if (context != null) { context.close(); }
        }
    %>
  </body>
</html>