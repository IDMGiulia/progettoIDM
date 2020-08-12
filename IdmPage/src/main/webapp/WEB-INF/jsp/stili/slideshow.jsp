<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<style>

/* Slideshow container */
.slideshow-container {
	position: relative;
}

/* Slides */
.mySlides {
	display: none;
	padding: 30px;
	text-align: center;
}

/* Next & previous buttons */
.prev, .next {
	cursor: pointer;
	position: relative;
	top: 50%;
	width: auto;
	color: #888;
	font-weight: bold;
	font-size: 20px;
	border-radius: 0 3px 3px 0;
	user-select: none;
}

/* Position the "next button" to the right */
.next {
	position: absolute;
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* Position the "prev button" to the left */
.prev {
	position: absolute;
	left: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
	color: white;
}

/* The dot/bullet/indicator container */
.dot-container {
	text-align: center;
}

/* The dots/bullets/indicators */
.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
}
/* Add a background color to the active dot/circle */
.active, .dot:hover {
	background: transparent;
}

</style>