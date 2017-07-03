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
				<h3>Lamborghini</h3>
			</div>
			<div class="panel-body">
				<div class="panel-body">
					<div class="col-sm-8">
						<img src="images/imagecar/3.jpg" width="100%" height="100%">
					</div>
					<div style="font-size: 24px" class="form-inline text-right">
						<h3 style="margin: 20px" class="text-left">現在購車即可獲得限量內框一組</h3>
						<h4 style="margin: 20px" class="text-left">
							銳利的線條滿佈車身，並以多邊形幾何拼接起車身每一塊鈑件<br /> Aventador
							Coupè還搭載了全新6.5升V12自然進氣引擎<br /> 完成由靜止加速至時速100公里的衝刺，極速更上看時速350公里<br />
							放入兩張造型誇張的筒形賽車座椅與三輻式賽車方向盤
						</h4>


						<%
							//未登入
							if ((session.getAttribute("userName") == null) || (session.getAttribute("userName") == "")) {
						%>
						<form action="LoginPage.jsp" method="post">
						售價: 28,800,000$ <select name="count">
							<option value="1">one</option>
							<option value="2">two</option>
							<option value="3">three</option>
							<option value="4">four</option>
							<option value="5">five</option>
						</select> <input style="margin: 5px" class="form-control" name="items"
							value="Lamborghini" type="text" readonly>
						<button style="margin: 5px" class="btn btn-primary pull-right"
							type="submit">加入購物車</button>
						</form>
						<%
							} else {
								//已登入
						%>


						<form action="processShoppingCart.jsp" method="post">
							售價: 28,800,000$ <select name="count">
								<option value="1">one</option>
								<option value="2">two</option>
								<option value="3">three</option>
								<option value="4">four</option>
								<option value="5">five</option>
							</select> <input style="margin: 5px" class="form-control" name="items"
								value="Lamborghini" type="text" readonly>
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
					<h3 style="background-color: #BFD8ED" class="text-center">以1993年贏得「Trofeo
						de la Peña La Madroñera」稱號之西班牙鬥牛為名的Aventador Coupè</h3>
					<h4>Aventador Coupè的外型設計是由Centro Stile Lamborghini造型設計中心負責操刀，
						不少靈感概念均是來自限量超跑Reventón，銳利的線條滿佈車身，並以多邊形幾何拼接起車身每一塊鈑件，
						全車上下還加裝多組進、排氣孔道，肩負著空氣力學的完美要求；此外，Aventador
						Coupè也承襲了Lamborghini自Countach以降、
						於V12旗艦超跑上的傳統，搭載了誇張的鍘刀式車門設計，而首見於Murciélago的可變式進氣口，也同樣移植至Aventador
						Coupè之上， 能為引擎室帶來最佳的進氣與冷卻效果，車尾並裝有一支速度感應式電動尾翼。</h4>
					<h3 style="background-color: #BFD8ED" class="text-center">Aventador
						Coupè以全碳纖維打造了一個高剛性車艙</h3>
					<h4>車頂、車頂以及車底的主要籠型結構，都是以碳纖維材質一體打造，可讓車體僅有147.5公斤重，
						但卻能獲得每度35,000牛頓米的抗扭強度，為操控與性能打下紮實的根基。打開鍘刀式車門後、座艙設計方面，Aventador
						Coupè則是走前衛風格， 除了放入兩張造型誇張的筒形賽車座椅與三輻式賽車方向盤外，斜傾的中控台上還裝設有多媒體系統，
						能將衛星導航、影音系統、通訊系統完全整合；而儀錶板也採用全新的TFT-LCD液晶螢幕，以數位化的方式顯示多項駕駛資訊，
						營造出彷彿戰鬥機般的駕馭感官。</h4>
					<h3 style="background-color: #BFD8ED" class="text-center">Aventador
						Coupè還搭載了全新6.5升V12自然進氣引擎</h3>
					<h4>可在引擎轉數8,250轉時、壓榨出高達700匹的最大馬力，70.3公斤米之最大扭力則可自引擎轉數5,500轉時徹底湧現，
						搭配1,575公斤的乾燥車重與ISR (Independent Shifting Rods)
						單離合器自手排變速系統，還能夠在2.9秒完成內、
						完成由靜止加速至時速100公里的衝刺，極速更上看時速350公里；而且在此同時，Aventador Coupè的油耗與二氧化碳排放量，
						也較Murciélago降低達20%，環保效能同步精進。</h4>
				</div>
				<br /> <br />
			</div>
		</div>
	</div>

	<%@ include file="footerPage.jsp"%>



</body>
</html>