<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<html lang="it">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Form Colloquio | IDM - We simplify your work</title>

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
/****************Custom background**************************/
.body-inner {
	background-image:
		url('https://www.idmconsulting.it/wp-content/uploads/2015/07/Background-esagoni-piccoli.png');
	background-position: 0 0;
}
h1 {
	color: #20bcda;
	font-weight: normal;
}
</style>

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
			<div class="container" style="margin-top: 50px">

				<div style="text-align: center">
					<h1>Aggiungi un colloquio</h1>
				</div>
				<br>

				<form:form method="POST" action="/IdmPage/aggiungi/${cand.id}" modelAttribute="col">

					<!-- SEZIONE DATI PERSONALI -->
					<div id="div_cv" class="row text-left">
					<form:input path="candidato" hidden="hidden" type="number" value="${cand.id}"/>  
						<div class="col-md-3">
							<div class="form-group">
								<label class="form-label">Data *</label>
								<form:input path="data" type="text"/>
							</div>
						</div>
						<div class="col-md-2"></div>
						<div class="col-md-2">
						<label class="form-label">tipo colloquio *</label>
							<div class="select">
									<form:select items="${tipoColloquio}" path="tipo" />
							</div>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-2">
							<div class="form-group">
								<label class="form-label">valutazione *</label>
								<form:input path="valutazione" type="number" />
							</div>
						</div>
						<div class="col-md-2"></div>

					<br>
					<br>

						<!-- NOTE -->
						<div id="div_cv" class="row text-left" style="text-align: center" >
							<div class="col-md-2"></div>
							<div class="col-md-6">
								<div class="x">
									<span><form:label path="note"><h3><b>Note:</b></h3></form:label></span>
								</div>
								<form:textarea path="note" style="width: 80%; height: 200px; border: none"
									maxlength="1000" placeholder="Scrivi qui le note" />
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-3">
							<%-- <div class="form-group">
								<label class="form-label">valutazione *</label>
								<form:input path="valutazione" type="number" placeholder="8"/>
							</div> --%>
							</div>
						<div class="col-md-1"></div>
					</div>
					</div>

					<br>
					<br>

					<!-- BOTTONE SUBMIT -->
					<div>
						<div style="text-align: center">
							<input type="submit" class="button button2"
								value="Inserisci colloquio" />
						</div>
					</div>
				</form:form>

			</div>
		</section>
	</div>
</body>

</html>
