<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<style>
/****************Impostazioni pulsante base con effetto hover**************************/
.button {
	color: black;
	padding: 13px 26px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	transition-duration: 0.4s;
	cursor: pointer;	
	border-radius: 8px;
}

.button:hover{
	color: white;
}

/****************PULSANTE BLU CHIARO CHE DIVENTA BLU SCURO CON EFFETTO ARROTONDATO**************************/
.button2 {
	background-color: #DCF0FF;
	border: 2px solid #428BCA;
}

.button2:hover {
	background-color: #428BCA;
	border: 2px solid #DCF0FF;
}

/****************PULSANTE ROSSO CHIARO CHE DIVENTA ROSSO SCURO CON EFFETTO ARROTONDATO**************************/
.button3 {
	background-color: #ffcccc;
	border: 2px solid #e60000;
}

.button3:hover {
	background-color: #e60000;
	border: 2px solid #ffcccc;
}

/****************Pulsante conferma eliminazione in modal (primary base modficato il colore)**************************/
.btn-primary {
	background-color: #ffcccc !important;
	color: black !important;
}

.btn-primary:hover {
	background-color: #e60000 !important;
	color: white !important;
}
</style>