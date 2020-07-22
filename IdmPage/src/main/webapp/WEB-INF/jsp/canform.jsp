<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1><b> Candidati! </b></h1>  
       <form:form method="POST" action="save">    
        <table >    
         <tr>    
          <td>Nome : </td>   
          <td><form:input path="nome"  /></td>  
         </tr>   
         <tr>    
          <td>Cognome : </td>   
          <td><form:input path="cognome"  /></td>  
         </tr>  
         <tr>    
          <td>email : </td>   
          <td><form:input path="email"  /></td>  
         </tr>
         <tr>    
          <td>telefono : </td>   
          <td><form:input path="telefono"  /></td>  
         </tr>
         <tr>    
          <td>competenze :</td>    
          <td><form:textarea path="competenze" rows="5" cols="30" /></td>  
         </tr>   
         <tr>    
             
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    