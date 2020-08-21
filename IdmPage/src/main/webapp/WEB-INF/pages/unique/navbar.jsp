<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<head>

<style type="text/css"> /******************global color****************************/

.featured-tab .nav-tabs>li.active>a:after {
	border-left-color: #1d70b7;
}

</style>

<style type="text/css">
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus, .dropdown-menu>li.active>a
	{
	color: #1d70b7 !important;
	?>
}
.top-info {
	background-color: #ffffff;
}

.top-info .topbar-sidebar, .top-info .topbar-sidebar p, .top-info .topbar-sidebar li
	{
	color: #333333
}

.top-info .topbar-sidebar a {
	color: #666666 !important;
}

.top-info .topbar-sidebar a:hover {
	color: #1d70b7 !important
}
nav ul.nav.navbar-nav {
	background: #ffffff;
	background-attachment: fixed;
	background-position: right top;
}

nav ul.nav.navbar-nav>li {
	background: transparent;
}

nav ul.navbar-nav>li>a {
	color: #20b0da;
}

nav ul.navbar-nav>li>a:hover {
	color: #ffffff;
}

nav ul.navbar-nav li.active>a {
	color: #ffffff !important;
}

nav ul.navbar-nav>li>a:hover {
	
}

nav ul.navbar-nav ul.dropdown-menu>li {
	background: #20b0da
}

nav ul.navbar-nav ul.dropdown-menu>li>a:hover {
	color: #006ba0 !important
}

nav ul.navbar-nav ul.dropdown-menu>li>a {
	border-bottom: 1px solid #006ba0;
}
</style>

<style>
/*************************Header*****************/
#header, #inner-header {
	background-color: #ffffff;
	background-position: 0 0;
}
</style>

</head>

<header id="header" class="navbar-fixed-top main-nav" role="banner">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Logo start -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="https://www.idmconsulting.it"> <img
						src="img/logo.png"
						alt="" class="img-responsive" />

					</a>
				</div>
				<!--/ Logo end -->
				<nav class="collapse navbar-collapse clearfix" role="navigation">
					<!-- menu nella barra in alto -->
					<ul id="main-menu" class="nav navbar-nav navbar-right">
						<li id="menu-item-1175"
							class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1175 dropdown"><a
							href="#" class="dropdown-toggle" data-toggle="dropdown"
							data-target="#chi-siamo">Chi Siamo<i class="fa fa-caret-down"></i></a>
							<ul class="dropdown-menu">
								<li id="menu-item-1191"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1191"><a
									href="https://www.idmconsulting.it/chi-siamo/mission/"
									class="page-scroll" data-target="#mission">Mission</a></li>
								<li id="menu-item-1190"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1190"><a
									href="https://www.idmconsulting.it/chi-siamo/case-studies/"
									class="page-scroll" data-target="#case-studies">Case
										Studies</a></li>
								<li id="menu-item-1189"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1189"><a
									href="https://www.idmconsulting.it/chi-siamo/partners/"
									class="page-scroll" data-target="#partners">Partners</a></li>
								<li id="menu-item-1445"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1445"><a
									href="contatti"
									class="page-scroll" data-target="#contatti">Contatti</a></li>
							</ul></li>
						<li id="menu-item-1163"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1163 dropdown"><a
							href="https://www.idmconsulting.it/soluzioni/"
							class="dropdown-toggle" data-toggle="dropdown"
							data-target="#soluzioni">Soluzioni<i class="fa fa-caret-down"></i></a>
							<ul class="dropdown-menu">
								<li id="menu-item-1169"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1169"><a
									href="https://www.idmconsulting.it/soluzioni/enterprise-content-management/"
									class="page-scroll"
									data-target="#enterprise-content-management">Enterprise
										Content Management</a></li>
								<li id="menu-item-1165"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1165"><a
									href="https://www.idmconsulting.it/soluzioni/business-process-management/"
									class="page-scroll" data-target="#business-process-management">Business
										Process Management</a></li>
								<li id="menu-item-1168"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1168"><a
									href="https://www.idmconsulting.it/soluzioni/collaboration/"
									class="page-scroll" data-target="#collaboration">Collaboration</a></li>
								<li id="menu-item-1167"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1167"><a
									href="https://www.idmconsulting.it/soluzioni/corporate-portal/"
									class="page-scroll" data-target="#corporate-portal">Corporate
										Portal</a></li>
								<li id="menu-item-1859"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1859"><a
									href="https://www.idmconsulting.it/soluzioni/system-management/"
									class="page-scroll" data-target="#system-management">System
										Management</a></li>
								<li id="menu-item-1166"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1166"><a
									href="https://www.idmconsulting.it/soluzioni/business-intelligence/"
									class="page-scroll" data-target="#business-intelligence">Business
										Intelligence</a></li>
							</ul></li>
						<li id="menu-item-1170"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1170 dropdown"><a
							href="https://www.idmconsulting.it/software/"
							class="dropdown-toggle" data-toggle="dropdown"
							data-target="#software">Software<i class="fa fa-caret-down"></i></a>
							<ul class="dropdown-menu">
								<li id="menu-item-1599"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1599"><a
									href="https://www.idmconsulting.it/software/winder/"
									class="page-scroll" data-target="#winder">WINDER</a></li>
								<li id="menu-item-1606"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1606"><a
									href="https://www.idmconsulting.it/software/ibm/"
									class="page-scroll" data-target="#ibm">IBM</a></li>
								<li id="menu-item-1601"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1601"><a
									href="https://www.idmconsulting.it/software/kofax/"
									class="page-scroll" data-target="#kofax">KOFAX</a></li>
								<li id="menu-item-1605"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1605"><a
									href="https://www.idmconsulting.it/software/cvision/"
									class="page-scroll" data-target="#cvision">CVISION</a></li>
								<li id="menu-item-2469"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2469"><a
									href="https://www.idmconsulting.it/software/panda/"
									class="page-scroll" data-target="#panda">PANDA</a></li>
								<li id="menu-item-1600"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1600"><a
									href="https://www.idmconsulting.it/software/infocert/"
									class="page-scroll" data-target="#infocert">INFOCERT</a></li>
								<li id="menu-item-1602"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1602"><a
									href="https://www.idmconsulting.it/software/vmware/"
									class="page-scroll" data-target="#vmware">VMWARE</a></li>
							</ul></li>
						<li id="menu-item-2160"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2160 dropdown"><a
							href="https://www.idmconsulting.it/servizi/"
							class="dropdown-toggle" data-toggle="dropdown"
							data-target="#servizi">Servizi<i class="fa fa-caret-down"></i></a>
							<ul class="dropdown-menu">
								<li id="menu-item-1401"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1401"><a
									href="https://www.idmconsulting.it/progetti/"
									class="page-scroll" data-target="#progetti">Progetti</a></li>
								<li id="menu-item-1398"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1398"><a
									href="https://www.idmconsulting.it/consulenza/"
									class="page-scroll" data-target="#consulenza">Consulenza</a></li>
								<li id="menu-item-1399"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1399"><a
									href="https://www.idmconsulting.it/formazione/"
									class="page-scroll" data-target="#formazione">Formazione</a></li>
								<li id="menu-item-1399"
					                  class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1399"><a
					                  href="presentazione"
					                  class="page-scroll">Academy IDM</a></li>
								<li id="menu-item-1400"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1400"><a
									href="https://www.idmconsulting.it/assistenza/"
									class="page-scroll" data-target="#assistenza">Assistenza</a></li>
								<li id="menu-item-1173"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1173"><a
									href="https://www.idmconsulting.it/supporto/"
									class="page-scroll" data-target="#supporto">Supporto</a></li>
							</ul></li>
						<li id="menu-item-1317"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1317"><a
							href="https://www.idmconsulting.it/news/" class="page-scroll"
							data-target="#news">News</a></li>
						<li id="menu-item-2161"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2161"><a
							href="joinus"
							class="page-scroll" data-target="#lavora-con-noi">Lavora con
								noi</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>