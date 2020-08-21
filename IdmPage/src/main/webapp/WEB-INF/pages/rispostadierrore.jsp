<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Candidatura Effettuata | IDM - We simplify your work</title>

<!-- FILE STILI COMUNI -->
<jsp:include page="stili/common-style.jsp"></jsp:include>

<!-- FILE PULSANTI -->
<jsp:include page="stili/pulsanti.jsp"></jsp:include>

</head>

<body

	class="home page-template page-template-homepage-template page-template-homepage-template-php page page-id-1339 wpb-js-composer js-comp-ver-5.5.4 vc_responsive animsition"
	data-spy="scroll" data-target="#header" data-offset="62">

	<!-- Page Main Wrapper -->

	<div class="body-inner ">

		<!-- Header Container -->
		<jsp:include page="navbar/navbar.jsp"></jsp:include>

		<!-- Sezione Centrale della Pagina -->
		<section class="main-wrapper pagecustom-1339">
			<div class="container" style="margin-top: 30px">

				<br>

				<div style="text-align: center">
				<br><br>
					<h1>Congratulazioni ${nome}!</h1>
					<br>
					<h2>Purtroppo il curriculum caricato non rispetta il formato corretto.</h2>
					<h2>In ogni caso i tuoi dati sono stati registrati correttamente.</h2>
					<br><br><br>
					<h4>Verrai ricontattato il prima possibile da un nostro responsabile per confermare le tue qualifiche e la tua disponibilit&#224;.</h4>
					<br><br><br><br>
					<a href="https://www.idmconsulting.it/" class="button button2">Ritorna a IDM</a>
				</div>


			</div>
		</section>

		<!-- Sezione Footer della Pagina -->
		<jsp:include page="footer/footer.jsp"></jsp:include>
		
	</div>

</body>

</html>