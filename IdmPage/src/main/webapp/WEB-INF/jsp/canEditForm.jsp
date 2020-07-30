<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    
  
        <h1>Modifica il candidato</h1>  
       <form:form method="POST" action="/IdmPage/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td>  
         <td><form:hidden  path="nome" /></td>  
         <td><form:hidden  path="cognome" /></td>  
         <td><form:hidden  path="telefono" /></td>  
         <td><form:hidden  path="email" /></td>  
         <td><form:hidden  path="competenze" /></td>  
         <td><form:hidden  path="luogoCandidatura" /></td>  
         </tr> 
         <tr> 
         <td>   
         Nuovo stato candidatura:<form:select path="stato">  
	        <form:option value="Selezione in corso" label="Selezione in corso"/>  
	        <form:option value="Disponibile" label="Disponibile"/>  
	        <form:option value="Non disponibile" label="Non disponibile"/>  
	        </form:select>  </td>
	        </tr> 
    <%--      <tr>    
          <td>Salary :</td>    
          <td><form:input path="salary" /></td>  
         </tr>   
         <tr>    
          <td>Designation :</td>    
          <td><form:input path="designation" /></td>  
         </tr>   --%> 
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Aggiorna" /></td>    
         </tr>    
        </table>    
       </form:form> 