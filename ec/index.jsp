<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="product"
	class="tw.ec.jspproject.javabean.FindstoreJavaBean" scope="session" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>電商網站</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="move.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px;
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

footer {
	background-color: #f2f2f2;
	padding: 50px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.navbar-nav {
	text-align: center;
}

navbar-nav .li {
	display: inline-block;
	float: none;
}

/*------------輪播器-------------*/
.jumbotron {
	margin-bottom: 0;
}

.slider_container div {
	position: absolute;
	top: 0;
	left: 0;
	opacity: 0;
	filter: alpha(opacity = 0);
}
/*----------end-輪播器-------------*/
</style>
</head>
<body>
	<!-- header -->
	<%@ include file="headerPage.jsp"%>

	<!-- main -->
	<div class="container text-center">
		<div class="row content">
			<!-- left -->
			<div style="background-color: #F0FFFF" class="col-sm-2 sidenav">
				<div>
					<img src="images/imagecar/1.jpg" width="100%" height="100%" />
					<p>Mclaren P1</p>
				</div>
				<div>
					<img src="images/imagecar/2.jpg" width="100%" height="100%" />
					<p>Ferrari 458</p>
				</div>
				<div>
					<img src="images/imagecar/3.jpg" width="100%" height="100%" />
					<p>Lamborghini</p>
				</div>
			</div>

			<!-- middle -->
			<div class="col-sm-8 text-left">
				<br />
				<!-- 輪播器 -->
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<div class="slider_container">
						<%
							Connection conn = product.getConnection();
							String sqlstr = "Select * From ecdb.product ";
							Statement state = conn.createStatement();
							ResultSet rs = state.executeQuery(sqlstr);

							while (rs.next()) {
						%>
						<div>
							<img src="images/imagecar/<%=rs.getString("p_Pic")%>"
								width="100%" height="100%" alt="pure css3 slider" />
							<!--<span><%=rs.getString("p_Name")%></span>-->
						</div>

						<%
							}
						%>
					</div>
				</div>
			</div>

			<!-- right -->
			<div style="background-color: #F0FFFF" class="col-sm-2 sidenav">
				<div>
					<img src="images/imagecar/4.jpg" width="100%" height="100%" />
					<p>Pagani</p>
				</div>
				<div>
					<img src="images/imagecar/5.jpg" width="100%" height="100%" />
					<p>Bugatti</p>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<!-- footer -->
	<%@ include file="footerPage.jsp"%>
</body>
</html>