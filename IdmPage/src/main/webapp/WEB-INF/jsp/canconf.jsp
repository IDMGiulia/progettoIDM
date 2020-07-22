<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>  
<html>  
	<body>  
	<p>La tua registrazione si è conclusa con successo. Controlla i tuoi dati.</p>  
	Nome : ${Candidato.nome} <br>  
	
	<% /*
	Last Name : ${reservation.lastName}  <br>
	Gender: ${reservation.gender}  <br>  
	Meals:   
	<ul>  
	<c:forEach var="meal" items="${reservation.food}">  
	<li>${meal}</li>  
	</c:forEach>  
	</ul>  
	Leaving From : ${reservation.cityFrom} <br>  
	Going To : ${reservation.cityTo} */ %>
	</body>  
</html> 