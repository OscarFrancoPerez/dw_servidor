<?php
$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
$juego_id = $_POST['juego_id'];
$comentario = $_POST['comentario'];
$query = "INSERT INTO tComentarios(comentario, juego_id, usuario_id)
VALUES ('".$comentario."',".$juego_id.",NULL)";
mysqli_query($db, $query) or die('Error');
mysqli_close($db);
?>
