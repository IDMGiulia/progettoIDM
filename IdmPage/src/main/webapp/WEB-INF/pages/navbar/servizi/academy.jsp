<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="it">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Academy IDM | IDM - We simplify your work</title>

<!-- FILE STILI COMUNI -->
<jsp:include page="../../stili/common-style.jsp"></jsp:include>

<!-- FILE PULSANTI -->
<jsp:include page="../../stili/pulsanti.jsp"></jsp:include>

<!-- FILE CAROSELLO -->
<jsp:include page="../../stili/carosello.jsp"></jsp:include>

<!-- FILE SLIDESHOW -->
<jsp:include page="../../stili/slideshow.jsp"></jsp:include>

</head>

<body
	class="home page-template page-template-homepage-template page-template-homepage-template-php page page-id-1339 wpb-js-composer js-comp-ver-5.5.4 vc_responsive animsition"
	data-spy="scroll" data-target="#header" data-offset="62">

	<!-- Page Main Wrapper -->

	<div class="body-inner ">

		<!-- Header Container -->
		<jsp:include page="../navbar.jsp"></jsp:include>

		<!-- Sezione Centrale della Pagina -->
		<section class="main-wrapper pagecustom-1339">
			<div class="container">
				<h1 style="text-align: center">
					<img src="img/idea.jpg" alt="">
				</h1>

				<!-- TESTO PRESENTAZIONE IDM ACADEMY -->
				<div style="text-align: center">
					<h1>Academy IDM</h1>
					<h5 style="text-align: left">
						Ideata con l' obiettivo di introdurre metodologie qualificate
						e riconosciute dal mercato in un sistema di formazione e training
						adeguato alla flessibilit&#224; del mondo ICT.<br> Con i
						nostri corsi avrai modo di formarti per divenire un &quot;JUNIOR
						JAVA FULL STACK&quot; ovvero consulente in ambito Java.<br>
						Oltre alle conoscenze teoriche legate all' argomento Java,
						imparerai il comportamento da tenere presso la societ&#224;
						cliente, principalmente realt&#224; di System Integrator, la
						gestione ed organizzazione di progetti, le metodologie di sviluppo
						e organizzazione delle attivit&#224;, la valutazione dei tempi di
						una attivit&#224;, le figure coinvolte in un progetto IT e la
						gestione delle relazioni all' interno del gruppo di lavoro.<br>
						I nostri corsi, della durata di 40h / 60h teoriche vengono
						realizzati di presenza in aula, ed alternano momenti di formazione
						didattica frontale a momenti di formazione esperienziale.<br>
						In questo modo potrai mettere in pratica quanto appreso durante la
						lezione attraverso esercizi pratici e il confronto con il docente
						ed i tuoi colleghi.<br> Se sei una persona curiosa, dinamica
						e l' universo Java &#232; la tua passione, l'Academy di
						IDM Consulting &#232; quello che fa per te!
					</h5>
					<br>
				</div>

				<!-- PARTE CON LE 3 DIVERSIFICAZIONI DI STRUTTURA E DESCRIZIONE -->
				<div class="row">

					<!-- COLONNA PROGRAMMA DEI CORSI -->
					<div class="col-sm-4">
						<div style="text-align: center">

							<h2>
								<b>Argomenti dei Nostri Corsi Formativi</b>
							</h2>
							<div class="row">
								<div class="col-sm-2"></div>

								<div class="col-sm-8">
									<div style="text-align: left">
										<p>
											&#10004; Java Enterprise Edition<br> &#10004; Corso
											Sviluppo Microsoft<br> &#10004; Sviluppo Javascript e
											AngularJS<br> &#10004; J2EE back-end end Developer
										</p>
									</div>
								</div>

								<div class="col-sm-2"></div>
							</div>

							<p>
								Per ulteriori informazioni candidati<br> premendo il
								pulsante qui sotto.<br> Ti aspettiamo!
							</p>

						</div>
					</div>

					<!-- COLONNA EDIZIONI -->
					<div class="col-sm-4">
						<div style="text-align: center">

							<h2>
								<b>Edizioni</b>
							</h2>
							<h3>Prossima Edizione:</h3>
							<a href="candidaturaAc"> <font color="428BCA"> <b>&#10148;
										Novembre 2020</b>
							</font>
							</a>

							<h3>Edizioni Precedenti</h3>
							<p>
								Gennaio 2018 - Novembre 2018<br> Marzo 2019 - Settembre
								2019<br> Giugno 2020 - in corso
							</p>
						</div>
					</div>

					<!-- COLONNA SEDI FORMATIVE -->
					<div class="col-sm-4">
						<div style="text-align: center">

							<h2>
								<b>Sedi Formative</b>
							</h2>

							<!-- SLIDESHOW -->
							<div id="myCarousel" class="carousel slide slide carousel-fade"
								data-ride="carousel" data-interval="5000">
								<div class="carousel-inner">
									<div class="item active carousel-1">
										<div class="container">
											<img src="img/Torino.jpg"
												alt="Torino">
										</div>
									</div>
									<div class="item carousel-2">
										<div class="container">
											<img src="img/Milano.jpg"
												alt="Milano">
										</div>
									</div>
								</div>
							</div>
							<br>
							<p>Le sedi disponibili sono Torino e Milano</p>
						</div>
					</div>
					<ul class="nav nav-pills flex-column">
					</ul>
					<hr class="d-sm-none">

				</div>
				<br>

				<!-- SEZIONE RECENSIONI -->
				<div style="text-align: center">
					<h2>
						<b>Cosa ne pensano gli ex-alunni</b>
					</h2>

					<!-- SLIDESHOW RECENSIONI -->
					<div class="slideshow-container">

						<!-- PRIMA SLIDE  -->
						<c:forEach var="rec" items="${rec}">
						<div class="mySlides">
							<div class="row">
								<!-- RECENSIONE 1 -->
								<div class="col-sm-4"></div>
								<div class="col-sm-4">
									<div style="text-align: center">
										<h3>${rec.nome} ${rec.cognome}</h3>
										<p>${rec.recensione} </p>
									</div>
								</div>
								<div class="col-sm-4"></div>
							</div>
						</div>
							</c:forEach>

						<!-- PULSANTI LATERALI  -->
						<a class="prev" style="display: block; padding: 16px"
							onclick="plusSlides(-1)">&#8249;</a> <a class="next"
							style="display: block; padding: 16px" onclick="plusSlides(1)">&#8250;</a>

						<script>
					var slideIndex = 1;
					showSlides(slideIndex);
					
					function plusSlides(n) {
					  showSlides(slideIndex += n);
					}
					
					function currentSlide(n) {
					  showSlides(slideIndex = n);
					}
					
					function showSlides(n) {
					  var i;
					  var slides = document.getElementsByClassName("mySlides");
					  
					  var dots = document.getElementsByClassName("dot");
					  if (n > slides.length) {slideIndex = 1}    
					  if (n < 1) {slideIndex = slides.length}
					  for (i = 0; i < slides.length; i++) {
						  slides[i].style.display = "none";  
					  }
					  for (i = 0; i < dots.length; i++) {
					      dots[i].className = dots[i].className.replace(" active", "");
					  }
					  slides[slideIndex-1].style.display = "block";  
					  dots[slideIndex-1].className += " active";
					}
				</script>
					</div>
				</div>

				<!-- BOTTONE CANDIDATURA -->
				<div>
					<br>
					<div style="text-align: center">
						<a href="candidaturaAc" class="button button2">Candidati per il
							nuovo Corso</a>
					</div>
				</div>
			</div>
		</section>

		<!-- Sezione Footer della Pagina -->
		<jsp:include page="../../footer/footer.jsp"></jsp:include>

	</div>

</body>

</html>