<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="user" class="tw.ec.jspproject.javabean.UserJavaBean"
	scope="page" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="processsEditPersonalProfile.jsp" method="post">
		<!-- header -->
		<%@ include file="headerPage.jsp"%>

		<div style="height: 730px" class="container">
			<h3 class="text-center">編輯個人資料</h3>
			<div class="row">
				<div class="col-md-4">
				<br/>
				<br/>
					<p>
						<span class="glyphicon glyphicon-user"></span> 帳號:
					</p>
					<p>
						<span class="glyphicon glyphicon-file"></span> 密碼:
					</p>
					<p>
						<span class="glyphicon glyphicon-phone"></span> 電話:
					</p>
					<p>
						<span class="glyphicon glyphicon-envelope"></span> Email:
					</p>
				</div>

				<%
					String sessionUserName = (String) session.getAttribute("userName");

					Connection conn = user.getConnection();
					String sqlstr = "select * from ecdb.user where userName= ?";
					PreparedStatement state = conn.prepareStatement(sqlstr);
					state.setString(1, sessionUserName);
					ResultSet rs = state.executeQuery();
					while (rs.next()) {
				%>
				<div class="col-md-8">
					<div class="row">
						<div class="col-sm-6 form-group">
							<br /> <input style="margin: 5px" class="form-control"
								name="txtUserName" type="text"
								value="<%=session.getAttribute("userName")%>" readonly>

							<input style="margin: 5px" class="form-control"
								name="txtUserPassword" placeholder="密碼" type="text"
								value="<%=rs.getString("userPassword")%>" required> <input
								style="margin: 5px" class="form-control" name="txtUserPhone"
								placeholder="電話" type="text"
								value="<%=rs.getString("userPhone")%>" required> <input
								style="margin: 5px" class="form-control" name="txtUserEmail"
								placeholder="Email" type="text"
								value="<%=rs.getString("userEmail")%>" required>
							<button class="btn btn-primary pull-right" type="submit">確定修改</button>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
		</div>

		<!-- footer -->
		<%@ include file="footerPage.jsp"%>
	</form>

</body>
</html>