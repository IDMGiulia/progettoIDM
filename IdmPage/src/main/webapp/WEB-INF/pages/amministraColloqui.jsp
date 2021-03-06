<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="it">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Amministrazione Colloqui | IDM - We simplify your work</title>

<link rel="shortcut icon"
	href="https://www.idmconsulting.it/wp-content/uploads/2016/01/idm-favicon.png" />

<link rel='stylesheet' id='bootstrap-css'
	href='https://www.idmconsulting.it/wp-content/themes/dart/css/bootstrap.min.css?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='main-styles-css'
	href='https://www.idmconsulting.it/wp-content/themes/dart/style.css?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='dynamic-styles-css'
	href='https://www.idmconsulting.it/wp-content/themes/dart/css/dynamic-styles.php?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='Dart-raleway-css'
	href='https://fonts.googleapis.com/css?family=Raleway%3A400%2C100%2C300%2C500%2C600%2C700&#038;ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='page-transition-animsition-css'
	href='https://www.idmconsulting.it/wp-content/plugins/page-transition/css/animsition.min.css?ver=1.3'
	type='text/css' media='all' />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/plugins/page-transition/js/jquery.animsition.min.js?ver=1.3'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/themes/dart/js/bootstrap.js?ver=3.0.1'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/themes/dart/js/smoothscroll.js?ver=4.9.15'></script>
<script type="text/javascript">
		jQuery( document ).ready( function($) {
			$('.animsition').animsition({
				inClass : 'fade-in',
				outClass : 'fade-out',
				inDuration : 1500,
				outDuration : 800,
				loading : false,
				touchSupport: false,
				linkElement: '.animsition-link, a[href]:not([target="_blank"]):not([href^="https://www.idmconsulting.it/#"]):not([href^="#"]):not([href*="javascript"]):not([href*=".jpg"]):not([href*=".jpeg"]):not([href*=".gif"]):not([href*=".png"]):not([href*=".mov"]):not([href*=".swf"]):not([href*=".mp4"]):not([href*=".flv"]):not([href*=".avi"]):not([href*=".mp3"]):not([href^="mailto:"]):not([class="no-animation"])'
			});
		});
</script>
<style type="text/css"> /******************global color****************************/
	table th {
	background-color: #1d70b7;
}

h1 {
	color: #20bcda;
	font-weight: normal;
}
</style>

<!-- FILE SFONDO -->
<jsp:include page="stili/sfondo.jsp"></jsp:include>

<!-- FILE PULSANTI -->
<jsp:include page="stili/pulsanti.jsp"></jsp:include>

</head>

<body
	class="home page-template page-template-homepage-template page-template-homepage-template-php page page-id-1339 wpb-js-composer js-comp-ver-5.5.4 vc_responsive animsition"
	data-spy="scroll" data-target="#header" data-offset="62">

	<!-- Page Main Wrapper -->

	<div class="body-inner ">


		<!-- Sezione Centrale della Pagina -->
		<section class="main-wrapper pagecustom-1339">
			<div class="container" style="margin-left: 30px">
				<div class="row">
					<div class="col-sm-6" style="text-align: center">
						<h1>Elenco dei colloqui</h1>
					</div>
					<!-- PULSANTE BACK --> <!-- BISOGNA CORREGGERE, IL LINK ORA E' SOLO PER RIEMPIMENTO -->
					<br> <a href="/IdmPage/amministra/${cand.id}/${token}" 
              				class="button button2"><b>&#8617;</b> &ensp; Torna alla tabella</a>
				</div>
				<br>
				<table>
					<thead>
						<tr>
							<th>Id Colloquio</th>
							<th>Candidato</th>
							<th>Data</th>
							<th>tipo</th>
							<th>note</th>
							<th>valutazione</th>
							<th>Modifica</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="col" items="${colloqui}">
							<tr>
								<td>${col.id}</td>
								<td>${cand.nome} ${cand.cognome}</td>
								<td>${col.data}</td>
								<td>${col.tipo}</td>
								<td>${col.note}</td>
								<td>${col.valutazione}</td>
								<td><a href="/IdmPage/editcol/${col.id}/${token}">Modifica</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- PULSANTE AGGIUNGI COLLOQUIO -->
			        <div class="row">
			          <div class="col-sm-4"></div>
			          <div class="col-sm-4" style="text-align: center">
			            <a href="/IdmPage/aggiungiColloqui/${cand.id}/${token}"
			              class="button button2">Aggiungi un colloquio</a>
			            <div class="col-sm-4"></div>
			          </div>
			        </div>
			</div>
		</section>

	</div>

</body>

</html>