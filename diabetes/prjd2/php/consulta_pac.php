<?php
	
	// Criando tabela e cabeçalho de dados:
	
	// Conectando ao banco de dados:
	$conexao = mysqli_connect('localhost','root','','diabetes') or die('Erro ao conectar ao servidor');
	//include_once("conexao.php");
	
	

	//realiza a intrução sql
	$sql = "select `PACIENTE`,`IDADE`,`PESO`,`ALTURA`,`SEXO` from `paciente`";

	$resultado = mysqli_query($conexao,$sql) or die("Erro ao retornar dados");
	

	// Obtendo os dados por meio de um loop while
	while ($reg = mysqli_fetch_array($resultado))
	{
		$paciente = $reg['PACIENTE'];
		$idade = $reg['IDADE'];
		$peso = $reg['PESO'];
		$altura = $reg['ALTURA'];
		$sexo = $reg['SEXO'];
		
		echo "<dt class='list-group'>";
		echo "<dd class='list-group-item list-group-item-primary'>".$paciente."</dd>";
		echo "<dd class='list-group-item list-group-item-secondary'>".$idade."</dd>";
		echo "<dd class='list-group-item list-group-item-primary'>".$peso."</dd>";
		echo "<dd class='list-group-item list-group-item-secondary'>".$altura."</dd>";
		echo "<dd class='list-group-item list-group-item-primary'>".$sexo."</dd>";
		echo "</dt>";
	}
	
	mysqli_close($conexao);

?>