<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
  
<html>
<style>  
.error{color:red}  
</style>  
        <h1><b> Candidati! </b></h1>  
       <form:form method="POST" action="save">    
        <table >    
         <tr>    
          <td>Nome : </td>   
          <td><form:input path="nome"  /></td> 
          <form:errors path="nome" cssClass="error"/>  
         </tr>   
         <tr>    
          <td>Cognome : </td>   
          <td><form:input path="cognome"  /></td>  
          <form:errors path="cognome" cssClass="error"/> 
         </tr>  
         <tr>    
          <td>email : </td>   
          <td><form:input path="email"  /></td>  
           <form:errors path="email" cssClass="error"/> 
         </tr>
         <tr>    
          <td>telefono : </td>   
          <td><form:input path="telefono"  /></td>  
           <form:errors path="email" cssClass="error"/> 
         </tr>
         <tr>
              <td><form:label path = "comp">Principale Competenze</form:label></td>
              <td><form:checkboxes items = "${webFrameworkList}" path = "comp" /></td>       
         </tr> 
         
         <tr>    
          <td>altre competenze: inserirle separate da virgola</td>    
          <td><form:textarea path="competenze" rows="5" cols="30" /></td>  
         </tr>   
         <tr>    
             
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form> 
