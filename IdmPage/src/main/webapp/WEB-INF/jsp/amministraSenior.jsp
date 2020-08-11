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

<title>Candidature Senior | IDM - We simplify your work</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />

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

<!-- STILE BOTTONE -->
<style>
.button {
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button2 {
	background-color: #DCF0FF;
	color: black;
	border: 2px solid #428BCA;
	border-radius: 8px;
}

.button2:hover {
	background-color: #428BCA;
	color: white;
	border: 2px solid #DCF0FF;
	border-radius: 8px;
}
</style>

<script>
$(function() {

	  // when the modal is shown
	  $('#myModal').on('show.bs.modal', function(e) {
	    var $modal = $(this);

	    // find the trigger button
	    var $button = $(e.relatedTarget);

	    // find the hidden div next to trigger button
	    var $notifications = $button.siblings('div.hidden');

	    // transfer content to modal body
	    $modal.find('.modal-body').html($notifications.html());
	  })
	});
</script>

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
					<div class="col-sm-1"></div>
					<div class="col-sm-4">
						<h1>Lista di candidati</h1>
					</div>
					<div class="col-sm-2"></div>
					<div class="col-sm-4">
					<br>
						<a href="/IdmPage/seniorSelection" class="button button2">selezione dei
							candidati</a>
					</div>
					<div class="col-sm-1"></div>
				</div>
				<br> <br>
				<table>
					<thead>
						<tr>
							<th>Id</th>
							<th>nome</th>
							<th>Cognome</th>
							<th>Email</th>
							<th>Telefono</th>
							<th>Competenze</th>
							<th>sede</th>
							<th>stato candidatura</th>
							<th>Note</th>
							<th>Livello istruzione</th>
							<th>percorso</th>
							<th>posizione</th>
							<th>colloqui</th>
							<th>Cancella</th>
							<th>Modifica</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="can" items="${list}">
							<tr>
								<td>${can.id}</td>
								<td>${can.nome}</td>
								<td>${can.cognome}</td>
								<td>${can.email}</td>
								<td>${can.telefono}</td>
								<td>${can.competenze}</td>
								<td>${can.luogoCandidatura}</td>
								<td>${can.stato}</td>
								<td>${can.note}</td>
								<td>${can.livello}</td>
								<td>${can.percorso}</td>
								<td>${can.posizioneLav}</td>
								<td><a href="/IdmPage/colloqui/${can.id}">Colloqui</a></td>
								<td>
									<div class="hidden">
										Confermi di voler rimuovere il candidato?<br> ID:
										${can.id}<br> Nome: ${can.nome}<br> Cognome:
										${can.cognome}<br>
										<div class="row">
											<a href="/IdmPage/deleteemp/${can.id}"
												class="btn btn-secondary btn-block ml-1">Rimuovi</a>
											<button type="button"
												class="btn btn-secondary btn-block ml-1"
												data-dismiss="modal">Annulla</button>
										</div>
									</div>
									<button class="btn btn-primary" data-toggle="modal"
										data-target="#myModal">Elimina candidato</button> <!--<a href="/IdmPage/deleteemp/${can.id}">Cancella</a>-->
								</td>
								<td><a href="/IdmPage/editsen/${can.id}">Modifica</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="modal fade" id="myModal">
					<div class="modal-dialog" style="margin-left: initial">
						<div class="modal-content">
							
							<!-- Body -->
							<div class="modal-body"></div>
							
						</div>
					</div>
				</div>

			</div>
		</section>

	</div>

	</body>

</html>