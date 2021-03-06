<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="it">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Modifica Candidato | IDM - We simplify your work</title>

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
			<div class="container">
				
				<!-- SEZIONE CON TITOLO E TASTO RIMUOVI -->
				<div class="row">
					<div class="col-sm-6">
						<h1>Modifica il candidato</h1>
					</div>
					<div class="col-sm-3">
					
					<!-- MODAL A COMPARSA -->
						<div class="hidden">
							Confermi di voler rimuovere il candidato?<br> ID: ${command.id}<br>
							Nome: ${command.nome}<br> Cognome: ${command.cognome}<br><br>
							
							<!-- PULSANTI NEL MODAL -->
							<div class="row">
								<div class="col-sm-6">
									<a href="/IdmPage/deleteemp/${command.id}/${token}"
										class="btn btn-primary btn-block ml-1">Rimuovi</a>
								</div>
								<div class="col-sm-6">
									<button type="button" class="btn btn-secondary btn-block ml-1"
										data-dismiss="modal" style="align: right">Annulla</button>
								</div>
							</div>
						</div>
						<button class="button button3" data-toggle="modal"
							data-target="#myModal" style="margin-top: 30px" data-backdrop="false">Elimina
							candidato</button>

					</div>
					<div class="col-sm-3">
					<a href="/IdmPage/annullaCan/${command.anzianit}/${token}"
							class="button button4" style="margin-top: 30px">Annulla</a>
					</div>
				</div>
				<form:form method="POST" action="/IdmPage/editsave/${token}">


					<!-- CAMPI CON INFORMAZIONI CANDIDATO -->
					<table>

						<form:hidden path="id" />
						<form:hidden path="livello" />
						<form:hidden path="percorso" />
						<form:hidden path="anzianit" />
						<form:hidden path="posizioneLav" />
						<form:hidden path="provincia" />
						<tr>
							<td>Nome :</td>
							<td><form:input path="nome" required="required" /></td>
						</tr>
						<tr>
							<td>Cognome :</td>
							<td><form:input path="cognome" required="required" /></td>
						</tr>
						<tr>
							<td>Telefono :</td>
							<td><form:input path="telefono" type="tel"
									required="required" pattern="[0-9]{10}|[0-9]{9}|[0-9]{8}" /></td>
						</tr>
						<tr>
							<td>Email :</td>
							<td><form:input path="email" type="email"
									required="required" /></td>
						</tr>
						<tr style="height: 20px;">
							<td>Competenze :</td>
							<td><form:textarea
									style="width: 80%; height: 100%; border: none" maxlength="180"
									path="competenze" /></td>
						</tr>

						<tr>
							<td>Luogo candidatura:</td>
							<td><form:select path="luogoCandidatura">
									<form:option value="Milano" label="Milano" />
									<form:option value="Torino" label="Torino" />
									<form:option value="Entrambi" label="Entrambi" />
								</form:select></td>
						</tr>

						<tr>
							<td>Nuovo stato candidatura:</td>
							<td><form:select path="stato">
									<form:option value="Nuova" label="Nuova" />
									<form:option value=" Selezione in corso"
										label="Selezione in corso" />
									<form:option value=" Disponibile" label="Disponibile" />
									<form:option value="  Scartato" label="Scartato" />
									<form:option value="Eliminato" label="Eliminato" />
								</form:select></td>
						</tr>

						<tr>
							<td>Storico note sul candidato :</td>
							<td><form:textarea path="note" maxlength="800"
									style="width: 80%; height: 150px; border: none" /></td>
						</tr>
						<tr>
							<td>Aggiungi una nuova nota sul candidato :</td>
							<td><form:textarea path="nuovaNota" maxlength="140"
									style="width: 80%; height: 100%; border: none" /></td>
						</tr>
					</table>

					<!-- BOTTONE AGGIORNA -->
					<div class="row" style="text-align: center">
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
							<input type="submit" value="Aggiorna" class="button button2" />
						</div>
						<div class="col-sm-4"></div>
					</div>
				</form:form>

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