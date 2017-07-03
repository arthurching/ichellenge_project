<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="headerPage.jsp"%>
	<br />
	<div class="container text-center">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3>Ferrari 458</h3>
			</div>
			<div class="panel-body">
				<div class="panel-body">
					<div class="col-sm-8">
						<img src="images/imagecar/2.jpg" width="100%" height="100%">
					</div>
					<div style="font-size: 24px" class="form-inline text-right">
						<h3 style="margin: 20px" class="text-left">現在購車即可獲得限量內框一組</h3>
						<h4 style="margin: 20px" class="text-left">
							是法拉利繼360、F430之後的中置V8超跑之作<br /> 血液中被紅鬃烈馬熱情元素所激發的感動卻未因溼冷的天氣而有減損。<br />
							馬力動輒570匹以上的性能怪獸<br /> 專屬的空力套件還可為458 Speciale帶來0.53的下壓力值
						</h4>


						<%
							//未登入
							if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
						%>
						<form action="LoginPage.jsp" method="post">
							售價: 13,380,000$ <select name="count">
								<option value="1">one</option>
								<option value="2">two</option>
								<option value="3">three</option>
								<option value="4">four</option>
								<option value="5">five</option>
							</select> <input style="margin: 5px" class="form-control" name="items"
								value="Ferrari 458" type="text" readonly>
							<button style="margin: 5px" class="btn btn-primary pull-right"
								type="submit">加入購物車</button>
						</form>
						<%
							} else {
								//已登入
						%>

						<form action="processShoppingCart.jsp" method="post">
							售價: 13,380,000$ <select name="count">
								<option value="1">one</option>
								<option value="2">two</option>
								<option value="3">three</option>
								<option value="4">four</option>
								<option value="5">five</option>
							</select> <input style="margin: 5px" class="form-control" name="items"
								value="Ferrari 458" type="text" readonly>
							<button style="margin: 5px" class="btn btn-primary pull-right"
								type="submit">加入購物車</button>
						</form>
						<%
							}
						%>

					</div>
				</div>
				<br />
				<div style="margin: 10px" class="text-left">
					<h3 style="background-color: #BFD8ED" class="text-center">夢想之間的抉擇
						Ferrari 458全車系試駕體驗</h3>
					<h4>前些日子小編才跟大家分享過紅鬃烈馬品牌史上最強的中置V8超跑458 Speciale，
						那彷彿是從瀰漫煙硝味的賽道中直接駛進一般道路的純然競技化設定，即便是家族旗艦F12berlinetta也要對其敬畏三分，
						在這次總代理舉辦的全車系體驗活動中，除了458 Speciale之外，小編也一併試駕了車系中的主要戰力458 Italia與458
						Spider，
						如此充滿義大利專屬浪漫美學的試駕行程，儘管天空不作美而有一絲惆悵，然而血液中被紅鬃烈馬熱情元素所激發的感動卻未因溼冷的天氣而有減損。
						2009年問世的458 Italia，是法拉利繼360、F430之後的中置V8超跑之作，甚至在458後再冠上了義大利國名，
						很清楚地展現了原廠對於458 Italia的信心與重視程度，而2年後遵循車系改款規則、同樣在法蘭克福車展現身的458 Spider，
						則是為458車系再添一樁迷人的傳奇故事。</h4>
					<h3 style="background-color: #BFD8ED" class="text-center">外觀設計上</h3>
					<h4>458 Speciale明顯要與458
						Italia有所區隔，取材自Ferrari品牌限量旗艦LaFerrari的空氣力學概念， 除了為458
						Speciale勾勒出更為狂野不羈的車頭樣貌，專屬的空力套件還可為458 Speciale帶來0.53的下壓力值，
						在高速行駛或者賽道競技時能夠提供更為穩定的循跡效果。</h4>
					<h3 style="background-color: #BFD8ED" class="text-center">這次458全車系體驗活動</h3>
					<h4>重點還是放在這支Ferrari入門超跑車系不同設定準則下的調性差異， 與一般試駕行程不同的是，不論是458
						Italia、Spider還是道路競技版458 Speciale，
						無一不是車迷心中的夢幻勁駒，想要體驗其中的差異，如果不是在封閉賽道內確實有些難度，
						特別是這樣馬力動輒570匹以上的性能怪獸，稍有不慎可就不是三言兩語可以解決的事情。</h4>
				</div>
				<br /> <br />
			</div>
		</div>
	</div>

	<%@ include file="footerPage.jsp"%>

</body>
</html>