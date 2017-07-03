<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean 
      id="user"
      class="tw.ec.jspproject.javabean.CustomerUpdateBean"
      scope="page"/>
      
<jsp:setProperty property="userName" name="user" param="txtUserName"/>
<jsp:setProperty property="userPassword" name="user" param="txtUserPassword"/>
<jsp:setProperty property="userPhone" name="user" param="txtUserPhone"/>
<jsp:setProperty property="userEmail" name="user" param="txtUserEmail"/>

<%
Connection conn = user.getConnection();
if(conn!=null && !conn.isClosed())
{
	user.storeCustomerOrder();
	user.closeConn();
}
else{
	   out.write("DataBase Connection Fail.<br/>");
}   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="headerPage.jsp"%>
<div style="height: 730px">

		<form action="productf.jsp" method="post">
			<div class="col-md-4 col-md-offset-4">
				<div style="margin: 20px" class="panel panel-primary">
					<div class="panel-heading">
					</div>
					<div class="panel-body text-center">
						<h1>已成功更新會員資料</h1>
					</div>
				</div>
			</div>
		</form>
	</div>

<%@ include file="footerPage.jsp"%>

</body>
</html>