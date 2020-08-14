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
						<form:input path="candidato" hidden="hidden" type="number"
							value="${cand.id}" />
						<div class="col-md-5" style="text-align: left">
							<div class="form-group">
								<label class="form-label">Data e Ora: *</label>
								<div id="data">

									<fieldset>
										<!-- vgn_ca -->
										<div class="row">
											<div class="col-sm-6">
												<input type="date" id="data" name="data"
													required="required">
											</div>
											<div class="col-sm-6">
												<select id="data" name="data">
													<option value="7:00">7:00</option>
													<option value="7:30">7:30</option>
													<option value="8:00">8:00</option>
													<option value="8:30">8:30</option>
													<option value="9:00">9:00</option>
													<option value="9:30">9:30</option>
													<option value="10:00">10:00</option>
													<option value="10:30">10:30</option>
													<option value="11:00">11:00</option>
													<option value="11:30">11:30</option>
													<option value="12:00">12:00</option>
													<option value="12:30">12:30</option>
													<option value="13:00">13:00</option>
													<option value="13:30">13:30</option>
													<option value="14:00">14:00</option>
													<option value="14:30">14:30</option>
													<option value="15:00">15:00</option>
													<option value="15:30">15:30</option>
													<option value="16:00">16:00</option>
													<option value="16:30">16:30</option>
													<option value="17:00">17:00</option>
													<option value="17:30">17:30</option>
													<option value="18:00">18:00</option>
													<option value="18:30">18:30</option>
													<option value="19:00">19:00</option>
													<option value="19:30">19:30</option>
													<option value="20:00">20:00</option>
													<option value="20:30">20:30</option>
												</select>
											</div>
										</div>
									</fieldset>

								</div>
							</div>
						</div>
						<div class="col-md-4" style="text-align: left">
							<label class="form-label">tipo colloquio *</label>
							<div class="select">
								<form:select items="${tipoColloquio}" path="tipo" />
							</div>
						</div>
						<div class="col-md-3" style="text-align: left">
							<div class="form-group">
								<label class="form-label">valutazione *</label><br>
								<form:input path="valutazione" type="number" />
							</div>
						</div>
					</div>
						<br> 

						<!-- NOTE -->
						<div class="row">

							<div class="col-md-4"></div>

							<div class="col-md-4" style="text-align: center">
								<span><form:label path="note">
										<h3>
											<b>Note:</b>
										</h3>
									</form:label> </span>
							</div>
							<div class="col-md-4"></div>
						</div>
						<div class="row">
							<div class="col-md-3"></div>
							<div class="col-md-6" style="text-align: center">
								<form:textarea path="note"
									style="width: 80%; height: 200px; border: none"
									maxlength="1000" placeholder="Scrivi qui le note..." />
							</div>
							<div class="col-md-3"></div>

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
