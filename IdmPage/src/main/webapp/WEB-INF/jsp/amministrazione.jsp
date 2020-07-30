<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Lista di candidati</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>nome</th><th>Cognome</th><th>Email</th><th>Telefono</th><th>Competenze</th><th>sede</th><th>stato candidatura</th></tr>  
   <c:forEach var="can" items="${list}">   
   <tr>  
   <td>${can.id}</td>  
   <td>${can.nome}</td>  
   <td>${can.cognome}</td>  
   <td>${can.email}</td>  
   <td>${can.telefono}</td>  
   <td>${can.competenze}</td>  
   <td>${can.luogoCandidatura}</td> 
   <td>${can.stato}</td>   
   <td><a href="deleteemp/${can.id}">Cancella</a></td> 
	<td><a href="editemp/${can.id}">Modifica</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
