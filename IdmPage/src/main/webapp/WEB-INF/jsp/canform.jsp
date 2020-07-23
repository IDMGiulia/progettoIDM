<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("download.jpg");

  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 110;
  margin: 40px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}

textarea {
  width: 100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #f8f8f8;
  font-size: 16px;
  resize: none;
}

</style>
</head>
<body>
        <h1><b> Candidati! </b></h1>  
       <form:form method="POST" action="save" bgcolor="lime" >    
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
            <td><form:label path = "favoriteFrameworks">Favorite Web Frameworks</form:label></td>
            <td><form:checkboxes items = "${webFrameworkList}" path = "favoriteFrameworks" /></td>       
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
</body>   