<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Scelta Amministrazione | IDM - We simplify your work</title>

<!-- FILE STILE BASE -->
<jsp:include page="stili/common-style.jsp"></jsp:include>

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
			<div class="container"
				style="margin-top: 30px; margin-bottom: 20%; text-align: center">

				<br><br>

				<h1>Pagina di Amministrazione</h1>

				<div style="text-align: center">
					<br> <br><br>
					<div class="row">
						<div class="col-sm-4" style="text-align: right">
							<a href="/IdmPage/amministrazione/${token}" class="button button2">Gestione candidature Academy</a>
							<!--<a href="/IdmPage/amministrazione" class="button button2">Gestione candidature Academy</a>-->
						</div>
						<div class="col-sm-4" style="text-align: center">
							<a href="/IdmPage/amministraRecensioni/${token}" class="button button2">Gestione recensioni</a>
						</div>
						<div class="col-sm-4" style="text-align: left">
							<a href="/IdmPage/amministraSenior/${token}" class="button button2">Gestione candidature Senior</a>
						</div>
					</div>
				</div>

			</div>
		</section>
		
	</div>

</body>

</html>