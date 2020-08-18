<%
  String filename = ""+request.getAttribute("cv");
  String filepath = "C:\\candidature_cv\\"; 
  response.setContentType("APPLICATION/OCTET-STREAM"); 
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""); 

  java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);
		  
  int i; 
  while ((i=fileInputStream.read()) != -1) {
    out.write(i); 
  } 
  fileInputStream.close(); 
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="it-IT">
<head></head>
<body>
<a href="https://www.idmconsulting.it/">Ritorna a IDM</a> 
</body>
</html>