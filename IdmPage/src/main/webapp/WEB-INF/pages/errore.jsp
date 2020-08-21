<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<!-- FILE CHECKBOXES -->
<jsp:include page="stili/checkbox.jsp"></jsp:include>

<!-- FILE RADIOBUTTON -->
<jsp:include page="stili/radiobut.jsp"></jsp:include>

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
						<h1>Modifica i tuoi dati</h1>
					</div>
				</div>
				<form:form method="POST" action="/IdmPage/aggiorna">


					<!-- CAMPI CON INFORMAZIONI CANDIDATO -->
					<table>

						<form:hidden path="id" />
						<form:hidden path="stato" />
						<form:hidden path="note" />
						<form:hidden path="anzianit" />
						<form:hidden path="posizioneLav" />
						<form:hidden path="provincia" />
						<tr>
							<td>Nome :</td>
							<td><form:input path="nome" value="${command.nome}" disabled="true" /></td>
						</tr>
						<tr>
							<td>Cognome :</td>
							<td><form:input path="cognome" disabled="true" /></td>
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
						<tr>
							<td>Provincia di residenza :</td>
							<td><form:select items="${Provincia}" path="provincia" /></td>
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
							<td>Livello di Istruzione:</td>
							<td><div class="radiobut">
									<form:radiobutton path="livello" value="Scuola Media Superiore"
										label="Diploma di Scuola Superiore" />
									<form:radiobutton path="livello" value="Laurea Triennale"
										label="Laurea Triennale" />
									<form:radiobutton path="livello" value="Laurea Magistrale"
										label="Laurea Magistrale" />
								</div>
							</td>
						</tr>
						<tr>
							<td>Percorso di studi:</td>
							<td><form:textarea
									style="width: 80%; height: 100%; border: none" maxlength="180"
									path="percorso" /></td>
						</tr>
								<tr style="height: 20px;">
							<td>Competenze principali:</td>
							<td class="checkboxes"><form:checkboxes items="${webFrameworkList}" path="comp" /></td>
						</tr>
						
						<tr style="height: 20px;">
							<td>Altre competenze :</td>
							<td><form:textarea style="width: 80%; height: 100%; border: none" maxlength="180"
									path="competenze" /></td>
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
			</div>
		</section>
	</div>

</body>

</html>