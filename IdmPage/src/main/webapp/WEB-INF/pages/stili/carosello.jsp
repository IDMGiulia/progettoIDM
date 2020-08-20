<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<style>

/*EVITA IL SALTO TRA UNA FOTO E L'ALTRA*/
.carousel-fade .carousel-inner .item {
	opacity: 0;
	transition-property: opacity;
	transition: opacity ease-out .7s;
}
/*FA VEDERE IL CAROSELLO*/
.carousel-fade .carousel-inner .active {
	opacity: 1;
}
/*EVITA IL SALTO TRA UNA FOTO E L'ALTRA*/
.carousel-fade .carousel-inner .active.left, .carousel-fade .carousel-inner .active.right
	{
	left: 0;
	opacity: 0;
	z-index: 1;
}
/*EVITA IL BIANCO TRA UNA FOTO E L'ALTRA*/
.carousel-fade .carousel-inner .next.left, .carousel-fade .carousel-inner .prev.right
	{
	opacity: 1;
}

.carousel-inner img {
	width: 100%;
	height: 100%;
	border-radius: 8px;
}

.carousel-1 {
	height: 100%;
	-webkit-background-size: cover;
	background-size: cover;
}

.carousel-2 {
	height: 100%;
	-webkit-background-size: cover;
	background-size: cover;
}
</style>