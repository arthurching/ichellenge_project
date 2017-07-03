<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>電商網站</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
</style>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="index.jsp"> <img
				src="images\pic_ec_logo.png" alt="HTML tutorial"
				style="width: 100px; height: 35px; border: 0;">
			</a>

		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				
				<%
					//未登入
					if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
				%>
				<li><a href="ShoppingMall.jsp"><span
						class="glyphicon glyphicon-gift"> 購物中心</span></a></li>
						<li><a href="LoginPage.jsp"><span
						class="glyphicon glyphicon-upload"> 商品上架</span></a></li>
				<%
					} else {
						//已登入
				%>
				<li><a href="ShoppingMall.jsp"><span
						class="glyphicon glyphicon-gift"> 購物中心</span></a></li>
						<li><a href="product.jsp"><span
						class="glyphicon glyphicon-upload"> 商品上架</span></a></li>
				<%
					}
				%>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%
					//未登入
					if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
				%>
				<li><a href="LoginPage.jsp"><span
						class="glyphicon glyphicon-user"></span> 登入</a></li>
				<li><a href="SignUp.jsp"><span
						class="glyphicon glyphicon-edit"></span> 註冊</a></li>
				<li><a href="LoginPage.jsp"><span
						class="glyphicon glyphicon-shopping-cart"></span> 購物車</a></li>
				<%
					} else {
						//已登入
				%>
				<li><a>歡迎 <%=session.getAttribute("userName")%></a></li>
				<li><a href="LogoutPage.jsp"><span
						class="glyphicon glyphicon-log-out"> 登出</span></a></li>
				<li><a href="PersonalPage.jsp"><span
						class="glyphicon glyphicon-list-alt"></span> 個人資料</a></li>
				<li><a href="processShoppingCart.jsp"><span
						class="glyphicon glyphicon-shopping-cart"></span> 購物車</a></li>
				<%
					}
				%>

			</ul>
		</div>
	</div>
	</nav>
</body>
</html>