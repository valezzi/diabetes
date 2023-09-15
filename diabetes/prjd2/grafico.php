<?php

// Avisa onde se encontra a biblioteca PHPlot.

require_once 'phplot-5.0.6/phplot.php';

//Define um objeto graf1.

$graf1 = new PHPlot();

//Define os valores do gráfico em um array com o nome "dados".

$dados = array(

array('a',3),

array('b',5),

array('c',7),

array('d',8),

array('e',2),

array('f',6),

array('g',7) );

//Acrescenta os dados no gráfico.

$graf1->SetDataValues($dados);

//Desabilita as descrições de cada eixo.

$graf1->SetXTickLabelPos('none');

$graf1->SetXTickPos('none');

//Mostra o gráfico

$graf1->DrawGraph();

?>