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

<title>Tabella Candidature | IDM - We simplify your work</title>

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
</style>

</head>

<body
	class="home page-template page-template-homepage-template page-template-homepage-template-php page page-id-1339 wpb-js-composer js-comp-ver-5.5.4 vc_responsive animsition"
	data-spy="scroll" data-target="#header" data-offset="62">

	<!-- Page Main Wrapper -->

	<div class="body-inner ">


		<!-- Sezione Centrale della Pagina -->
		<section class="main-wrapper pagecustom-1339">
			<div class="container" style="margin-left: 30px">

				<h1>Elenco dei controlli</h1>
				<a href="/IdmPage/aggiungiColloqui/${senior.id}">Aggiungi un colloquio</a> <br> <br>
				<br>
				<table>
					<tr>
						<th>Id Colloquio</th>
						<th>Candidato</th>
						<th>Data</th>
						<th>tipo</th>
						<th>numero</th>
						<th>note</th>
						<th>valutazione</th>
					</tr>
					<c:forEach var="col" items="${colloqui}">
						<tr>
							<td>${col.id}</td>
							<td>${senior.nome} ${senior.cognome}</td>
							<td>${col.data}</td>
							<td>${col.tipo}</td>
							<td>${col.numero}</td>
							<td>${col.note}</td>
							<td>${col.valutazione}</td>
						</tr>
					</c:forEach>
				</table>

			</div>
		</section>


	</div>

	<!--body inner-->

	<script type="text/javascript">
		jQuery( 'body' ).wrapInner( '<div class="animsition"></div>' ).removeClass( 'animsition' );
		</script>
	<script type="text/javascript">
				function revslider_showDoubleJqueryError(sliderID) {
					var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
					errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
					errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
					errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
					errorMessage = "<span style='font-size:16px;color:#BC0C06;'>" + errorMessage + "</span>";
						jQuery(sliderID).show().html(errorMessage);
				}
			
</script>
	<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"https:\/\/www.idmconsulting.it\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"}};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=5.1'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/responsive-accordion-and-collapse/js/bootstrap.js?ver=4.9.15'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/responsive-accordion-and-collapse/js/accordion.js?ver=4.9.15'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var wpcf7_redirect_forms = {"2541":{"page_id":"2558","external_url":"","use_external_url":"","open_in_new_tab":"","http_build_query":"","http_build_query_selectively":"","http_build_query_selectively_fields":"","delay_redirect":"0","after_sent_script":"","thankyou_page_url":"https:\/\/www.idmconsulting.it\/landing-page-webinar-download\/"},"1356":{"page_id":"","external_url":"","use_external_url":"","open_in_new_tab":"","http_build_query":"","http_build_query_selectively":"","http_build_query_selectively_fields":"","delay_redirect":"","after_sent_script":"","thankyou_page_url":""}};
/* ]]> */
</script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/wpcf7-redirect/js/wpcf7-redirect-script.js'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/jquery.countdown.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/jquery.easing.1.3.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/lib/bower/isotope/dist/isotope.pkgd.min.js?ver=5.5.4'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/lib/prettyphoto/js/jquery.prettyPhoto.min.js?ver=5.5.4'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/jquery.waypoints.min.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/jquery.easy-pie-chart.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/jflickrfeed.min.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/jquery.validate.min.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/jquery.stellar.min.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/jquery.mb.YTPlayer.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/themes/dart/js/custom.js?ver=3.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/youtube-embed-plus/scripts/fitvids.min.js?ver=12.2'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-includes/js/wp-embed.min.js?ver=4.9.15'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=5.5.4'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/lib/bower/twbs-pagination/jquery.twbsPagination.min.js?ver=5.5.4'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/lib/bower/imagesloaded/imagesloaded.pkgd.min.js?ver=4.9.15'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-includes/js/underscore.min.js?ver=1.8.3'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min.js?ver=5.5.4'></script>
	<script type='text/javascript'
		src='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/js/dist/vc_grid.min.js?ver=5.5.4'></script>

</body>

</html>