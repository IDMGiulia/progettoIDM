<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Lista di candidati</h1>  
<a href="selezione">selezione dei candidati</a>
<br>
<br>
<br>
<table>  
<tr><th>Id</th><th>nome</th><th>Cognome</th><th>Email</th><th>Telefono</th><th>Competenze</th><th>sede</th>
<th>stato candidatura</th><th>Note</th><th>Livello istruzione</th><th>luogo</th><th>percorso</th></tr>  
   <c:forEach var="can" items="${list}">   
   <tr>  
   <td>${can.canId}</td>  
   <td>${can.competenza}</td>  
   </tr>  
   </c:forEach>  
   </table>  
     
   <br/>  
