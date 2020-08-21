<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Conferma Candidatura | IDM - We simplify your work</title>

<!-- FILE STILI COMUNI -->
<jsp:include page="../../../stili/common-style.jsp"></jsp:include>

<!-- FILE PULSANTI -->
<jsp:include page="../../../stili/pulsanti.jsp"></jsp:include>

</head>

<body
	class="home page-template page-template-homepage-template page-template-homepage-template-php page page-id-1339 wpb-js-composer js-comp-ver-5.5.4 vc_responsive animsition"
	data-spy="scroll" data-target="#header" data-offset="62">

	<!-- Page Main Wrapper -->

	<div class="body-inner ">

		<!-- Header Container -->
		<jsp:include page="../../../navbar/navbar.jsp"></jsp:include>

		<!-- Sezione Centrale della Pagina -->
		<section class="main-wrapper pagecustom-1339">
			<div class="container" style="margin-top: 30px">
				<br> 

				<!-- RIEPILOGO DEI DATI -->
				<div style="text-align: left">
				
					<h1>Complimenti!</h1>
					<h3>Controlla i tuoi dati, se sono corretti carica il tuo curriculum in fondo alla pagina:</h3>
					<br>
					<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-6" style="text-align: center">
							<div class="row">
								<div class="col-sm-6" style="text-align: left">
									<h4>
										<b>Nome: </b>
									</h4>${can.nome}
									<br>
								</div>
								<div class="col-sm-6" style="text-align: left">
									<h4>
										<b>Cognome: </b>
									</h4>${can.cognome}
									<br>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6" style="text-align: left">
									<h4>
										<b>Email: </b>
									</h4>${can.email}
									<br>
								</div>
								<div class="col-sm-6" style="text-align: left">
									<h4>
										<b>Telefono: </b>
									</h4>${can.telefono}
									<br>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-sm-6" style="text-align: left">
									<h4>
										<b>Titolo di studio: </b>
									</h4>${can.livello}
									<br>
								</div>
								<div class="col-sm-6" style="text-align: left">
									<h4>
										<b>Percorso: </b>
									</h4>${can.percorso}
									<br>
								</div>
							</div>
							<br>
							<div style="text-align: left">
								<h4>
									<b>Competenze Inserite: </b>
								</h4>${can.competenze}
							</div>
							<br>
						</div>

						<div class="col-sm-4">
							<div style="text-align: center">
								<h4>
									<b>Sede Scelta: </b>
								</h4>
								<div>
								<br>
									<img
										src="img/${can.luogoCandidatura}.jpg"
										style="border-radius: 8px;" alt="">
								</div>
							</div>
						</div>
						<div class="col-sm-1"></div>
					</div>
				</div>
			</div>
			<!-- BOTTONE PER CONFERMARE -->
				<div style="text-align: center">
					<form action="FileUploadServlet" method="POST"
						enctype="multipart/form-data">
						<h4>Inserisci qui il tuo Curriculum</h4>
						<div class="row">
							<div class="col-sm-5"></div>
							<div class="col-sm-3">
								<input type="text" hidden="hidden" name="nome" value="${can.id}_${can.cognome}_${can.nome}"> 
								<input type="file" name="fileName" required="required" accept=".odf,.odt,.txt,.pdf,.doc,.docx">
							</div>
							<div class="col-sm-4"></div>
						</div>
						<br><br>
						<input type="submit" class="button button2" value="Completa la candidatura">
					</form>
				</div>
		</section>

		<!-- Sezione Footer della Pagina -->
		<jsp:include page="../../../footer/footer.jsp"></jsp:include>
		
	</div>

</body>

</html>