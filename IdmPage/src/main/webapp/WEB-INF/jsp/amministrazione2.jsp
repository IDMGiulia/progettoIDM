<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Lista di candidati</h1>  
<table border="2" width="70%" cellpadding="2">  
<<<<<<< HEAD
<tr><th>Id</th><th>nome</th><th>Cognome</th><th>Email</th><th>Telefono</th><th>Competenze</th></tr>  
=======
<tr><th>Id</th><th>nome</th><th>Cognome</th><th>Email</th><th>Telefono</th><th>Competenze</th><th>sede</th></tr>  
>>>>>>> 8234cab1c6ed55bf6fb771912d3eceaebe431cfe
   <c:forEach var="can" items="${list}">   
   <tr>  
   <td>${can.id}</td>  
   <td>${can.nome}</td>  
   <td>${can.cognome}</td>  
   <td>${can.email}</td>  
   <td>${can.telefono}</td>  
   <td>${can.competenze}</td>  
<<<<<<< HEAD
  <%--  <%-- <td><a href="editemp/${emp.id}">Edit</a></td>  
   <td><a href="deleteemp/${emp.id}">Delete</a></td>  --%>  --%>
=======
   <td>${can.luogoCandidatura}</td>  
   <td><a href="deleteemp/${can.id}">Delete</a></td> 
	 <%-- <td><a href="editemp/${emp.id}">Edit</a></td>  
    --%>
>>>>>>> 8234cab1c6ed55bf6fb771912d3eceaebe431cfe
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
<<<<<<< HEAD
<!--    <a href="empform">Add New Employee</a>  -->
=======
>>>>>>> 8234cab1c6ed55bf6fb771912d3eceaebe431cfe