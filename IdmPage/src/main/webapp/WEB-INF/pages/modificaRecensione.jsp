<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="it">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Modifica Candidati | IDM - We simplify your work</title>

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
<style type="text/css">
h1 {
	color: #20bcda;
	font-weight: normal;
}
</style>

<!-- FILE SFONDO -->
<jsp:include page="stili/sfondo.jsp"></jsp:include>

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
			<div class="container" style="margin-top: 30px">

				<div class="row" style="text-align: center">
					<div class="col-sm-6">
						<h1>Modifica la recensione</h1>
					</div>
					<div class="col-sm-3">
						<!-- MODAL A COMPARSA -->
						<div class="hidden">
							Confermi di voler rimuovere la recensione?<br>
							<br>

							<!-- PULSANTI NEL MODAL -->
							<div class="row">
								<div class="col-sm-6">
									<a href="/IdmPage/deleteRec/${command.recId}/${token}"
										class="btn btn-primary btn-block ml-1">Cancella</a>
								</div>
								<div class="col-sm-6">
									<button type="button" class="btn btn-secondary btn-block ml-1"
										data-dismiss="modal" style="align: right">Annulla</button>
								</div>
							</div>
						</div>
						<button class="button button3" data-toggle="modal"
							data-target="#myModal" style="margin-top: 30px"
							data-backdrop="false">Rimuovi recensione</button>
					</div>
					<div class="col-sm-3">
						<a href="/IdmPage/amministraRecensioni/${token}"
							class="button button4" style="margin-top: 30px">Annulla</a>
					</div>

				</div>
				<form:form method="POST" action="/IdmPage/editsalva/${token}">
				
					<table>

						<form:hidden path="recId" />
						<tr>
							<td>Nome :</td>
							<td><form:input path="nome" required="required"/></td>
						</tr>
						<tr>
							<td>Cognome :</td>
							<td><form:input path="cognome" required="required"/></td>
						</tr>
						<tr style="height:20px;">
							<td>Recensione :</td>
							<td><form:textarea style="width: 80%; height: 100%; border: none" maxlength="1800" path="recensione" /></td>
						</tr>
						<tr>
							<td>Approva la recesione:</td>
							<td><form:select path="approvata">
									<form:option value="false" label="Non approvata" />
									<form:option value="true" label="Approvata" />
								</form:select></td>
						</tr>
					</table>
				
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-4" style="text-align:center">
						<input type="submit" value="Aggiorna" class="button button2"
							style="margin-top: 30px" />
					</div>
					<div class="col-sm-4"></div>
				</div>
				</form:form>
				<!-- MODAL -->
				<div class="modal fade" id="myModal">
					<div class="modal-dialog">
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