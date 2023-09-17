<!DOCTYPE html>
<html lang="pt-br">
  
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link rel="icon" href="img/etec.png" type="image/png" />  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title> Controle Diabetes </title>
  </head>

  <body>
    <section class="cabecalho">
      <div>
		<a href="https://www.ubbonline.org.br/">Consulte um Profissional</a>
      </div>
    </section>
	
	<div class="actual-form3">
		</br>
		
        <div class="heading">
          <b class="titulo">Medicamentos</b>
        </div>
		<br/>
		<?php include_once("./php/consulta_med.php"); ?>
		</br>  
		  
		  <div class="heading">
          <b class="titulo">Paciente</b>
        </div>
		<br/>
		<?php include_once("./php/consulta_pac.php"); ?>
		</br> 
	
		</br>
		</br>
		<a href="index2.html"> Registros Paciente/Medicamentos </a>
      </div>
	  
	  <div class="actual-form4">
		</br>
		  <div class="heading">
          <b class="titulo">Controle Diabetes</b>
		  </div>
		  </br>
		  </br>
		  </br>
		  </br>
		  </br>
		  </br>
		  </br>
		  </br>	
		<a href="index3.html">Registrar Glisemia</a>	
		  
      </div>
	  
	  
  </body>

</html>