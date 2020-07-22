<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  </style>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>Accademy IDM</h1>
  <h2>Crea il tuo futuro insieme a noi!</h2>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Candidati</a>
      </li>   
    </ul>
  </div>  
</nav>

<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h2>Sedi Formative</h2>
      <div class="fakeimg">Immagine Torino</div>
      <p>le sedi possibili sono Torino o Milano</p>
      <h3>Precedenti edizioni</h3>
      <p>Lorem ipsum dolor sit ame.</p>
      <ul class="nav nav-pills flex-column">
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2>Cos'è l'Accademy?</h2>
      <div class="fakeimg">Fake Image</div>
      <p>L&#39;Academy è ideata con l&#39;obiettivo di introdurre metodologie qualificate e riconosciute dal mercato in un
sistema di formazione e training adeguato alla flessibilità del mondo ICT.
Con i nostri corsi avrai modo di formarti per divenire un “JUNIOR JAVA FULL STACK” ovvero consulente in
ambito Java. Oltre alle conoscenze teoriche legate all’argomento Java, imparerai il comportamento da
tenere presso la società cliente, principalmente realtà di System Integrator, la gestione ed organizzazione di
progetti, le metodologie di sviluppo e organizzazione delle attività, la valutazione dei tempi di una attività,
le figure coinvolte in un progetto IT e la gestione delle relazioni all’interno del gruppo di lavoro.
I nostri corsi, della durata di 40 h/60 h teoriche vengono realizzati di presenza in aula, ed alternano
momenti di formazione didattica frontale a momenti di formazione esperienziale. In questo modo potrai
mettere in pratica quanto appreso durante la lezione attraverso esercizi pratici e il confronto con il docente
ed i tuoi colleghi.
Se sei una persona curiosa, dinamica e l’universo Java è la tua passione, l’Academy IDM Consulting è quello
che fa per te!</p>
      <br>
      <h2>TITLE HEADING</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg">Fake Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div>
  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Footer</p>
</div>

</body>
</html>