<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>  
<body>  
<form action="/presentazione">
  <label for="sede">Scegli usa sede:</label>
  <select name="sede" id="sede">
      <option value="M">Milano</option>
      <option value="T">Torino</option>
      <option value="E">Entrambe</option>
  </select>
  <br><br>
  <input type="submit" value="Submit">
</form>
</body>  
</html>  