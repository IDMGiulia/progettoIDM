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

<link rel="shortcut icon"
	href="https://www.idmconsulting.it/wp-content/uploads/2016/01/idm-favicon.png" />
<meta name="description"
	content="IDM Consulting ottimizza la gestione dei processi aziendali riducendone i costi. Propone soluzioni strategiche di archivio garantendo sicurezza, affidabilità e innovazione." />
<link rel="canonical" href="https://www.idmconsulting.it/" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:description"
	content="IDM Consulting ottimizza la gestione dei processi aziendali riducendone i costi. Propone soluzioni strategiche di archivio garantendo sicurezza, affidabilità e innovazione." />
<meta name="twitter:title" content="IDM - We simplify your work" />
<meta name="twitter:image"
	content="https://www.idmconsulting.it/wp-content/uploads/2015/10/Case-history.png" />
<script type='application/ld+json'>{"@context":"https:\/\/schema.org","@type":"WebSite","@id":"#website","url":"https:\/\/www.idmconsulting.it\/","name":"","potentialAction":{"@type":"SearchAction","target":"https:\/\/www.idmconsulting.it\/?s={search_term_string}","query-input":"required name=search_term_string"}}</script>

<style type="text/css">
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='contact-form-7-css'
	href='https://www.idmconsulting.it/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.1'
	type='text/css' media='all' />
<link rel='stylesheet' id='wpsm_ac-font-awesome-front-css'
	href='https://www.idmconsulting.it/wp-content/plugins/responsive-accordion-and-collapse/css/font-awesome/css/font-awesome.min.css?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='wpsm_ac_bootstrap-front-css'
	href='https://www.idmconsulting.it/wp-content/plugins/responsive-accordion-and-collapse/css/bootstrap-front.css?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='rs-plugin-settings-css'
	href='https://www.idmconsulting.it/wp-content/plugins/revslider/public/assets/css/settings.css?ver=5.4.8'
	type='text/css' media='all' />
<style id='rs-plugin-settings-inline-css' type='text/css'>
.tp-caption a {
	color: #ff7302;
	text-shadow: none;
	-webkit-transition: all 0.2s ease-out;
	-moz-transition: all 0.2s ease-out;
	-o-transition: all 0.2s ease-out;
	-ms-transition: all 0.2s ease-out
}

.tp-caption a:hover {
	color: #ffa902
}
</style>
<link rel='stylesheet' id='bootstrap-css'
	href='https://www.idmconsulting.it/wp-content/themes/dart/css/bootstrap.min.css?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='font-awesome-css'
	href='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/lib/bower/font-awesome/css/font-awesome.min.css?ver=5.5.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='animate-css'
	href='https://www.idmconsulting.it/wp-content/themes/dart/css/animate.css?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='main-styles-css'
	href='https://www.idmconsulting.it/wp-content/themes/dart/style.css?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='shotcodes_styles-css'
	href='https://www.idmconsulting.it/wp-content/themes/dart/css/shotcodes_styles.css?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='dynamic-styles-css'
	href='https://www.idmconsulting.it/wp-content/themes/dart/css/dynamic-styles.php?ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='Dart-raleway-css'
	href='https://fonts.googleapis.com/css?family=Raleway%3A400%2C100%2C300%2C500%2C600%2C700&#038;ver=4.9.15'
	type='text/css' media='all' />
<link rel='stylesheet' id='js_composer_front-css'
	href='https://www.idmconsulting.it/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=5.5.4'
	type='text/css' media='all' />
<link rel='stylesheet' id='page-transition-animsition-css'
	href='https://www.idmconsulting.it/wp-content/plugins/page-transition/css/animsition.min.css?ver=1.3'
	type='text/css' media='all' />
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/plugins/add-to-any/addtoany.min.js?ver=1.1'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js?ver=5.4.8'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js?ver=5.4.8'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/plugins/page-transition/js/jquery.animsition.min.js?ver=1.3'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/themes/dart/js/bootstrap.js?ver=3.0.1'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/themes/dart/js/smoothscroll.js?ver=4.9.15'></script>
<script type='text/javascript'
	src='https://www.idmconsulting.it/wp-content/plugins/youtube-embed-plus/scripts/ytprefs.min.js?ver=12.2'></script>
<link rel='https://api.w.org/'
	href='https://www.idmconsulting.it/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="https://www.idmconsulting.it/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="https://www.idmconsulting.it/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 4.9.15" />
<link rel='shortlink' href='https://www.idmconsulting.it/' />
<link rel="alternate" type="application/json+oembed"
	href="https://www.idmconsulting.it/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.idmconsulting.it%2F" />
<link rel="alternate" type="text/xml+oembed"
	href="https://www.idmconsulting.it/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.idmconsulting.it%2F&#038;format=xml" />

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
a.navbar-brand, ul.navbar-nav li a:hover, ul.navbar-nav li a:focus, ul.navbar-nav li.active>a,
	ul.navbar-nav>li.current-menu-parent>a, .portfolio-overlay,
	.footer-bottom,	.widget_categories ul li span.count, .footer-widget ul li.cat-item span.count,
	ul.wp-tag-cloud li a:hover, .widget-tab .nav-tabs>li.active>a, .tweet .tweet-time i,
	.feature-wrapper:after, .featured2.fdivider:after, .featured2.fdivider .feature-box:before,
	.feature-content-wrapper:before, .feature-wrapper:after,
	.feature-content-wrapper:after, .pagination>.active>a, .pagination>.active>a:hover,
	.pagination>li>a:hover, h4.panel-title a:not(.collapsed):after,
	.featured-tab .nav-tabs>li.active>a, .tab-default .nav-tabs>li.active>a,
	.contact-list li i, ul.social-icons li, .team-image-wrapper-hover,
	.team-img-wrapper-hover, .service-content i, .plan-price, .plan.featured .plan-name,
	.recent-post .blog-date, .recent-post .date:before, .bx-wrapper .bx-pager.bx-default-pager a:hover,
	.bx-wrapper .bx-pager.bx-default-pager a.active, .heading:after, ul.navbar-nav li.nav-single,
	.site-search, .recent-post .post-body:after, .service-content.fdivider:after,
	.featured2.fdivider:after, .featured2.fdivider .feature-box:before,
	.eemail_button input[type="button"], .product-links ul li a:hover,
	table th, .headcarousel .flex-control-paging li a.flex-active, .plan.featured a.btn.btn-primary,
	.contact-info i, .navbar-toggle {
	background-color: #1d70b7;
}

.plan.featured .plan-name:after {
	border-top-color: #1d70b7;
}

.plan.featured a.btn.btn-primary, .plan.featured a.btn.btn-primary:hover
	{
	border-color: #222;
	border-top: none;
	border-left: none;
	border-right: none
}

.plan.featured a.btn.btn-primary:hover {
	background-color: #333 !important
}

.bx-wrapper .bx-pager.bx-default-pager a:hover, .bx-wrapper .bx-pager.bx-default-pager a.active,
	.woocommerce-pagination ul li span.current {
	background-color: #1d70b7 !important;
}

::-moz-selection {
	background-color: #1d70b7;
}

::selection {
	background-color: #1d70b7;
}

/*.flex-control-paging li a.flex-active, .scrollup:hover*/
{
background:#1d70b7;
background:rgba
(29,112,183,0.9)
}
.star-rating span, .woocommerce .star-rating:before, .woocommerce-page .star-rating:before
	{
	color: #1d70b7 !important
}
/*color*/
#isotope-filter li a.active, #isotope-filter li a:hover,
	.portfolio-overlay-btn a:hover, ul.divider li a:hover, .blog-img-icon a,
	.widget_categories ul li:before, .footer-widget ul li.cat-item:before,
	.post-meta i, a.read-more:hover, .widget_alc_works h4.entry-title a:hover,
	.widget_alc_blogposts h4.entry-title a:hover, .widget-tab h4.entry-title a:hover,
	.pagination li:not(.active) a, .tweet a:hover, a.comment-reply, h4.panel-title a:not(.collapsed),
	ul.divider li:before, ul.circle li:before, ul.social-icons li:hover a,
	.page-team-wrapper .team-content h3.name, .team-wrapper .team-content h3.name,
	.team-image-wrapper .social-icons a:hover, .recent-post .post-body:after,
	.service-box i, .feature-box .feature-icon i, .testimonial-slide .testimonial-content h3.name,
	.testimonial-slide .testimonial-text:before, .testimonial-slide .testimonial-text:after,
	blockquote a, .sidebar .widget_nav_menu li a:hover, .sidebar .widget_nav_menu li.current-menu-item a,
	.social-widget a, .rating i {
	color: #1d70b7;
}

blockquote, .page-title:after, .eemail_textbox input[type="text"]:focus,
	.woocommerce-pagination ul li span.current {
	border-color: #1d70b7 !Important;
}

form .form-control:focus {
	border-color: #1d70b7 !important;
}

.featured-tab .nav-tabs>li.active>a:after {
	border-left-color: #1d70b7;
}

.plan.featured a.btn {
	border-bottom-color: #1d70b7;
}

a:hover, a:focus, a:active, .footer-custom-menu li a:hover {
	color: rgb(23, 89, 146)
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active,
	.btn-primary.active, .open .dropdown-toggle.btn-primary {
	background-color: rgb(23, 89, 146);
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

<!-- STILE BOTTONE CANDIDATURA -->
<style>
.button {
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button2 {
	background-color: #DCF0FF;
	color: black;
	border: 2px solid #428BCA;
	border-radius: 8px;
}

.button2:hover {
	background-color: #428BCA;
	color: white;
	border: 2px solid #DCF0FF;
	border-radius: 8px;
}
</style>

</head>

<body

	class="home page-template page-template-homepage-template page-template-homepage-template-php page page-id-1339 wpb-js-composer js-comp-ver-5.5.4 vc_responsive animsition"
	data-spy="scroll" data-target="#header" data-offset="62">

	<!-- Page Main Wrapper -->

	<div class="body-inner ">

		<!-- Header Container -->
		<jsp:include page="navbar.jsp"></jsp:include>

		<!-- Sezione Centrale della Pagina -->
		<section class="main-wrapper pagecustom-1339">
			<div class="container" style="margin-top: 30px">

				<br>

				<div style="text-align: center">
				<br><br>
					<h1>Login per la parte amministrativa</h1>
					<br>
					<form:form method="POST" action="log" modelAttribute="log">
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-label">username *</label>
								<form:input path="username" type="text"
									class="form-control form-control-sm" required="required"
									placeholder="Inserisci il tuo username" />
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<label class="form-label">Password *</label>
								<form:input path="password" type="text"
									class="form-control form-control-sm" required="required"
									placeholder="Inserisci la password" />
							</div>
						</div>
					
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
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>

</body>

</html>