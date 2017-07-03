<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>processLogin</title>
</head>
<body>
	<%!private Connection conn;

	 public boolean verifyProfiles(String userName, String userPassword) {
		try {
			InitialContext context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/connectMySQLJdbc/OrderSystem");
			conn = ds.getConnection();

			String sqlstr = "select * from ecdb.user where userName=? and userPassword=?";
			PreparedStatement state = conn.prepareStatement(sqlstr);
			state.setString(1, userName);
			state.setString(2, userPassword);
			ResultSet rs = state.executeQuery();
			
			boolean status = rs.next();
			return status;

		} catch (NamingException | SQLException e) {
			return false;
		}
	}
	%>

	<%
		request.setCharacterEncoding("UTF-8");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");

		boolean verifyStatus = verifyProfiles(userName, userPassword);
		//out.write("verifyStatus:" + verifyStatus + "<br/>");

		if (verifyStatus == true) {
			session.setAttribute("userName", userName);	//session
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("LoginPage.jsp");
		}
	%>
</body>
</html>