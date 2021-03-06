<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<html lang="it">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Candidatura Academy | IDM - We simplify your work</title>

<!-- FILE STILI COMUNI -->
<jsp:include page="../../stili/common-style.jsp"></jsp:include>

<!-- FILE PULSANTI -->
<jsp:include page="../../stili/pulsanti.jsp"></jsp:include>

<!-- ALLINEAMENTO VERTICALE PER LE COMPETENZE AGGIUNTIVE -->
<style>
div.x {
  display: table;
  height: 80px;
  width: 100%;
  text-align: center;
}
span {
  display: table-cell;
  vertical-align: middle;
}
</style>

<!-- FILE CHECKBOXES -->
<jsp:include page="../../stili/checkbox.jsp"></jsp:include>

<!-- FILE RADIOBUTTON -->
<jsp:include page="../../stili/radiobut.jsp"></jsp:include>

</head>

<body
	class="home page-template page-template-homepage-template page-template-homepage-template-php page page-id-1339 wpb-js-composer js-comp-ver-5.5.4 vc_responsive animsition"
	data-spy="scroll" data-target="#header" data-offset="62">

	<!-- Page Main Wrapper -->

	<div class="body-inner ">

		<!-- Header Container -->
		<jsp:include page="../../navbar/navbar.jsp"></jsp:include>

		<!-- Sezione Centrale della Pagina -->
		<section class="main-wrapper pagecustom-1339">
			<div class="container" style="margin-top: 50px">

				<div style="text-align: center">
					<h1>Candidati!</h1>
					<h4>Completa il form con i tuoi dati per candidarti alla
						prossima Academy di IDM</h4>
				</div>

				<form:form method="POST" action="saveSenior" modelAttribute="sen">

					<!-- SEZIONE DATI PERSONALI -->
					<div id="div_cv" class="row text-left">
						<div class="col-md-12">
							<legend
								style="border-bottom: 1px solid #999; margin-top: 30px; margin-bottom: 20px">
								<b>Dati Personali</b>
							</legend>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-label">Nome *</label>
								<form:input path="nome" type="text"
									class="form-control form-control-sm" required="required"
									placeholder="Inserisci il tuo nome" />
								<form:errors path="nome" cssClass="error" />
							</div>
						</div>

						<div class="col-md-4">
							<div class="form-group">
								<label class="form-label">Cognome *</label>
								<form:input path="cognome" type="text"
									class="form-control form-control-sm" required="required"
									placeholder="Inserisci il tuo cognome" />
								<form:errors path="cognome" cssClass="error" />
							</div>
						</div>

						<div class="col-md-4"></div>

						<div class="col-md-4">
							<div class="form-group">
								<label class="form-label">Email *</label>
								<form:input path="email" type="email"
									class="form-control form-control-sm" required="required"
									placeholder="example@email.it" />
								<form:errors path="email" cssClass="error" />
							</div>
						</div>

						<div class="col-md-4">
							<div class="form-group">
								<label class="form-label">Telefono *</label>
								<form:input path="telefono" type="tel"
									class="form-control form-control-sm" required="required"
									placeholder="Inserisci il tuo numero di telefono"
									pattern="[0-9]{10}|[0-9]{9}|[0-9]{8}" />
								<form:errors path="telefono" cssClass="error" />
							</div>
						</div>
						
						<br>
						
						<!-- PROVINCIA DI RESIDENZA -->
						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-4" style="text-align: center">
								<label class="form-label">Provincia di Residenza *</label>
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-3" style="text-align: left">
								<form:select items="${Provincia}" path="provincia" />
							</div>
							<div class="col-md-2"></div>
						</div>
						
						<ul class="nav nav-pills flex-column">
						</ul>
						<hr class="d-sm-none">

					</div>

					<!-- LUOGO DI CANDIDATURA -->
					<div id="div_cv" class="row text-left" style="text-align: center">
						<div class="col-md-1"></div>
						<div class="col-md-4">
							<form:label path="luogoCandidatura">Luogo di candidatura preferito: *</form:label>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-4">
							<div class="radiobut">
								<form:radiobuttons items="${Sede}" path="luogoCandidatura" required="required"/>
							</div>
						</div>
						<div class="col-md-2"></div>
					</div>
					
					<br>
					
					<!-- POSIZIONE SCELTA -->
					<div id="div_cv" class="row text-left" style="text-align: left">
						<div class="col-md-1"></div>
						<div class="col-md-4">
							<form:label path="posizioneLav">Posizione per la quale ci si intende candidare: *</form:label>
						</div>
						<div class="col-md-7" style="text-align: center">
							<div class="radiobut">
								<form:radiobuttons items="${Posizioni}" path="posizioneLav" required="required"/>
							</div>
						</div>
					</div>

					<br><br>

					<!-- SEZIONE ISTRUZIONE-->
					<div id="div_cv" class="row text-left">
						<div class="col-md-12">
							<legend
								style="border-bottom: 1px solid #999; margin-bottom: 20px">
								<b>Istruzione</b>
							</legend>
						</div>

						<!-- LIVELLO DI ISTRUZIONE -->
							<div class="col-md-1"></div>
							<div class="col-md-3">
								<form:label path="livello">Livello di Istruzione:</form:label>
							</div>
							<div class="col-md-7" style="text-align: center">
								<div class="radiobut">
									<form:radiobutton path="livello" value="Scuola Superiore"
										label="Diploma di Scuola Superiore" />
									<form:radiobutton path="livello" value="Laurea Triennale"
										label="Laurea Triennale" />
									<form:radiobutton path="livello" value="Laurea Magistrale"
										label="Laurea Magistrale" />
								</div>
							</div>
							<div class="col-md-1"></div>

						<br><br>

						<!-- PERCORSO DI STUDI -->
							<div class="col-md-1"></div>
							<div class="col-md-4">
								<label class="form-label">Percorso di Studi:</label>
							</div>
							<div class="col-md-1"></div>
							<div class="col-md-6">
								<form:input path="percorso" type="text"
									class="form-control form-control-sm" required=""
									placeholder="es. Ingegneria Informatica" />
								<form:errors path="percorso" cssClass="error" />
							</div>
					</div>

					<br>
					<br>

					<!-- SEZIONE COMPETENZE-->
					<div id="div_cv" class="row text-left" style="text-align: center">
						<div class="col-md-12">
							<legend
								style="border-bottom: 1px solid #999; margin-bottom: 20px; text-align:left">
								<b>Competenze</b>
							</legend>
						</div>
						<!--COMPETENZE BASI-->
							<div class="col-md-1"></div>
							<div class="col-md-4">
								<form:label path="comp">Competenze Principali: </form:label>
							</div>
							<div class="col-md-1"></div>
							<div class="col-md-5">
								<div class="checkboxes">
									<form:checkboxes items="${competenze}" path="comp" />
								</div>
							</div>
							<div class="col-md-1"></div>

						<br> <br>

						<!-- ALTRE COMPETENZE -->
							<div class="col-md-1"></div>
							<div class="col-md-4">
								<div class="x">
									<span><form:label path="comp">Altre competenze (inserirle separate da virgola): </form:label></span>
								</div>
							</div>
							<div class="col-md-6">
								<form:textarea path="competenze" style="width: 80%; height: 80px; border: none"
									maxlength="140" placeholder="es: Swift, Ruby, Assembly, ..." />
							</div>
							<div class="col-md-1"></div>

					</div>

					<br>
					<br>

					<!-- BOTTONE CANDIDATI -->
					<div>
						<div style="text-align: center">
							<input type="submit" class="button button2"
								value="Invia la tua candidatura" />
						</div>
					</div>
				</form:form>

			</div>
		</section>

		<!-- Sezione Footer della Pagina -->
		<jsp:include page="../../footer/footer.jsp"></jsp:include>

	</div>
	
</body>

</html>
