<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   


 
        <form method="post" action="paginaupload.php">
		<input type="file" name="curriculum">
		<br>
		<input type="submit" value="Invia">
		</form>
  
        <h1>Modifica il candidato</h1>  
       <form:form method="POST" action="/IdmPage/editsave">    
        <table >    
        <tr>  
        <td></td>    
         <td><form:hidden  path="id" /></td> 
         <td><form:hidden  path="livello" /></td> 
         <td><form:hidden  path="paeseDiploma" /></td> 
         <td><form:hidden  path="percorso" /></td>  
         </tr> 
         <tr>    
          <td>Nome : </td>   
          <td><form:input path="nome"  /></td>  
         </tr>    
         <tr>    
          <td>Cognome :</td>    
          <td><form:input path="cognome" /></td>  
         </tr>   
         <tr>    
          <td>Telefono :</td>    
          <td><form:input path="telefono" /></td>  
         </tr>  
         <tr>    
          <td>Email :</td>    
          <td><form:input path="email" /></td>  
         </tr> 
         <tr>    
          <td>Competenze :</td>    
          <td><form:textarea path="competenze" rows="5" cols="30" /></td>  
         </tr> 
         
         <tr>    
         <td> Luogo candidatura: </td>    
             <td><form:select path="luogoCandidatura">  
             <form:option value="M" label="M"/>
	        <form:option value="T" label="T"/>  
	        <form:option value="E" label="E"/>  
	        </form:select>  </td>
	        </tr> 
	        
          <tr>
         <td> Nuovo stato candidatura: </td>    
             <td><form:select path="stato">  
             <form:option value="Nuova" label="Nuova"/>
	        <form:option value="Selezione in corso" label="Selezione in corso"/>  
	        <form:option value="Disponibile" label="Disponibile"/>  
	        <form:option value="Non disponibile" label="Non disponibile"/>  
	        </form:select>  </td>
	        </tr> 
	        
	      <tr>    
          <td>Note sul candidato :</td>    
          <td>	<form:textarea path="note" rows="5" cols="30" /></td>  
         </tr> 
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Aggiorna" /></td>    
         </tr>    
        </table>    
       </form:form> 