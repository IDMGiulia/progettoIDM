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

<title>Candidature Academy | IDM - We simplify your work</title>

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

.modal-body {
   background-image: url('https://www.idmconsulting.it/wp-content/uploads/2015/07/Background-esagoni-piccoli.png');
}
</style>

<!-- FILE PULSANTI -->
<jsp:include page="stili/pulsanti.jsp"></jsp:include>

<!-- SCRIPT MODAL -->
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
					<div class="col-sm-6" style="text-align: center">
						<h1>Lista di candidati ${anz}</h1>
					</div>
					<div class="col-sm-3" style="text-align: center; margin-top: 10px">
						<br> <a href="/IdmPage/selezione/${anz}" class="button button2">Filtra candidati</a>
					</div>
					<div class="col-sm-3" style="text-align: center; margin-top: 10px">
						<br> <a href="/IdmPage/cambia/${anz}" class="button button2"><b>&#8634;</b> &ensp; Cambia Tabella</a>
					</div>
				</div>
				<br>
				<table>
					<thead>
						<tr>
							<th>Nome</th>
							<th>Cognome</th>
							<th>Email</th>
							<th>Telefono</th>
							<th>Sede Scelta</th>
							<th>Stato Candidatura</th>
							<th>Domicilio</th>
							<th>Colloqui</th>
							<th>Altre Informazioni</th>
							<th>Modifica</th>
							<th>CV</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="can" items="${list}">
							<tr>
								<td>${can.nome}</td>
								<td>${can.cognome}</td>
								<td>${can.email}</td>
								<td>${can.telefono}</td>
								<td>${can.luogoCandidatura}</td>
								<td>${can.stato}</td>
								<td>${can.provincia}</td>
								<td><a href="/IdmPage/colloquio/${can.id}" class="button button2small">Colloquio</a></td>
								<td><div class="hidden" style="text-align:center">
										<h3>Informazioni sul Candidato</h3><br><br>
										<b>ID: </b>&ensp;${can.id}<br>
										<b>Nome: </b>&ensp;${can.nome}<br>
										<b>Cognome: </b>&ensp;${can.cognome}<br>
										<b>Email: </b>&ensp;${can.email}<br>
										<b>Telefono: </b>&ensp;${can.telefono}<br>
										<b>Sede Scelta: </b>&ensp;${can.luogoCandidatura}<br>
										<b>Posizione di Candidatura: </b>&ensp;${can.posizioneLav}<br>
										<b>Stato della candidatura: </b>&ensp;${can.stato}<br>
										<b>Competenze: </b>&ensp;${can.competenze}<br>
										<b>Provincia di Residenza: </b>&ensp;${can.provincia}<br>
										<b>Livello di Istruzione: </b>&ensp;${can.livello}<br>
										<b>Percorso di Studi: </b>&ensp;${can.percorso}<br>
										<b>Note sul Candidato: </b>&ensp;${can.note}<br><br><br>

										<!-- PULSANTE NEL MODAL -->
										<button type="button" class="btn btn-secondary btn-block ml-1"
											data-dismiss="modal" style="align: right; background-color: #d8d8c0 !important">Chiudi</button>
									</div>
									<button class="button button2x" data-toggle="modal"
										data-target="#myModal" data-backdrop="false">Informazioni Complete</button></td>
										
								<td><a href="/IdmPage/editemp/${can.id}" class="button button2small">Modifica</a></td>

								<td>
								<a href="<%=request.getContextPath()%>/img/cv/${can.cv}" download>
								<button class="button buttonDL"><b>&#8681;</b></button>
								</a>
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