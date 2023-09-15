<?php

// camada de conexão
include_once("conexao.php");

$vlglic = $_POST['GLICEMIA'];
$data = $_POST['data'];
$hora = $_POST['hora'];

/* Variáveis dos registros */
$sql = "INSERT INTO controle_dt(GLICOSE,DATA,HORA) VALUES ('$vlglic','$data','$hora')";
//mysqli_query($conexao, $sql ) or die("Erro ao tentar cadastrar registro");

//echo "teste de registro";

//header('Location:../index2.html');

//aqui conexão com o banco
if(mysqli_query($conexao, $sql)) {
    mysqli_close($conexao);
	header('Location:../index.html');
} else {
    mysqli_close($conexao);
    $mensagem = '<p>Erro ao tentar cadastrar registro!</p>';
}

?>
