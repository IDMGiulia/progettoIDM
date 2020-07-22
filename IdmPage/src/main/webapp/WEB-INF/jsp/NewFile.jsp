<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<form method="post" action="http://localhost:8080/GemesioIDM5Web/Risposta">

  <!-- CASELLE DI TESTO -->
  Nome<br>
  <input type="text" placeholder="Nome" name="nome"><br>
  Cognome<br>
  <input type="text" placeholder="Cognome" name="cognome"><br>
  Email<br>
  <input type="text" placeholder="Email" name="email"><br>
  Telefono<br>
  <input type="text" placeholder="Telefono" name="telefono"><br>
  

  <!-- CHECKBOX -->
  Tecnologie conosciute<br>
  <input type="checkbox" name="tecno1" value="java"> Java<br>
  <input type="checkbox" name="tecno2" value="eclipse"> Eclipse<br>
  <input type="checkbox" name="tecno3" value="python"> Python<br>
  <input type="checkbox" name="tecno4" value="office"> Office<br>
  <input type="checkbox" name="tecno5" value="hibernate"> Hibernate<br>
  <input type="checkbox" name="tecno5" value="spring"> Spring<br>


  <!-- TEXTAREA -->
  Altre competenze<br>
  <textarea placeholder="specifica meglio" name="specifiche" rows="5" cols="30"></textarea>
  <br><br>

  <!-- SUBMIT -->
  <input type="submit" name="invia" value="Invia i dati">

</form>
</html>