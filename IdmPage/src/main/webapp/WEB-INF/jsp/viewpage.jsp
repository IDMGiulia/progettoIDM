<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 

<html>  
<body>  
<form action="/IdmPage/visual/" >
  Scegli una sede:
  <select name="sede" id="sede">
      <option value="M">Milano</option>
      <option value="T">Torino</option>
      <option value="E">Entrambe</option>
  </select>
  <br><br>
    Scegli una competenza:
  <select name="competenza" id="competenza">
   <option value=""> </option>
  <c:forEach var="val" items="${webFrameworkList}">
      <option value="${val}">${val}</option>
  </c:forEach>
  </select>
  <br><br>
  Nuovo stato candidatura:
   <select name="stato" id="stato">
      <option value="Nuova">Nuova</option>
      <option value="Selezione in corso">Selezione in corso</option>
      <option value="Disponibile">Disponibile</option>
      <option value="Non disponibile">Non disponibile</option>
      <option value="">Tutti gli stati</option>
  </select>  
   
  <br><br>
  <input type="submit" value="Submit">
</form>
</body>  
</html>  