<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<html lang="it">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Login Amministrazione | IDM - We simplify your work</title>

<link rel="alternate" type="application/rss+xml" title="RSS2.0"
	href="https://www.idmconsulting.it/feed/" />
<link rel="pingback" href="https://www.idmconsulting.it/xmlrpc.php" />

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
		<jsp:include page="unique/navbar.jsp"></jsp:include>

		<!-- Sezione Centrale della Pagina -->
		<section class="main-wrapper pagecustom-1339">
			<div class="container" style="margin-top: 30px">

				<br>

				<div style="text-align: center">
				<br><br>
					<h1>Login per la parte amministrativa</h1>
					<br>
					<form:form method="POST" action="log" modelAttribute="log">
						<div class="col-md-1"></div>
						<div class="col-md-4" style="text-align: left">
							<div class="form-group">
								<label class="form-label">Username *</label>
								<form:input path="username" type="text"
									class="form-control form-control-sm" required="required"
									placeholder="Inserisci il tuo username" />
							</div>
						</div>
						<div class="col-md-2"></div>
						<div class="col-md-4" style="text-align: left">
							<div class="form-group">
								<label class="form-label">Password *</label>
								<form:input path="password" type="text"
									class="form-control form-control-sm" required="required"
									placeholder="Inserisci la password" />
							</div>
						</div>
						<div class="col-md-1"></div>
						<br>
					<!-- BOTTONE CANDIDATI -->
					<div>
						<div style="text-align: center">
							<input type="submit" class="button button2"
								value="Accedi" />
						</div>
					</div>
					</form:form>
				</div>


			</div>
		</section>

		<!-- Sezione Footer della Pagina -->
		<jsp:include page="unique/footer.jsp"></jsp:include>
		
	</div>

</body>

</html>