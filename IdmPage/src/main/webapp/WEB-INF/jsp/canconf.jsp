<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>  
<html>  
	<body>  
	<p>La tua registrazione si � conclusa con successo. Controlla i tuoi dati.</p>  
	Nome : ${can.nome} <br>  
	
	</body>  
	</html> 
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
