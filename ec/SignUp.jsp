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
</head>
<body>
	<!-- header -->
	<%@ include file="headerPage.jsp"%>

	<!-- middle -->
	<div style="height: 730px" class="container">
		<h3 class="text-center">會員註冊</h3>

		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-sm-8">

				<div class="row">
					<br />
					<div class="col-sm-6 form-group">
						<form action="processSignUp.jsp" method="post">
							<input style="margin: 5px" class="form-control" id="userName"
								name="txtUserName" placeholder="帳號" type="text" required>

							<input style="margin: 5px" class="form-control" id="userPassword"
								name="txtUserPassword" placeholder="密碼" type="text" required>

							<input style="margin: 5px" class="form-control" id="userPassword"
								name="txtUserPhone" placeholder="電話" type="text" required>

							<input style="margin: 5px" class="form-control" id="userPassword"
								name="txtUserEmail" placeholder="Email" type="text" required>

							<input style="margin: 5px" class="btn btn-primary pull-right"
								type="submit" value="註冊" /> <input style="margin: 5px"
								class="btn btn-primary pull-right" type="reset" value="重置" />
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- footer -->
	<%@ include file="footerPage.jsp"%>
</body>
</html>