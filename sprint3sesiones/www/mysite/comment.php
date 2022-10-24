<?php
$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');

session_start();
$user_id_a_insertar = 'NULL';

if (!empty($_SESSION['user_id'])) {
  $user_id_a_insertar = $_SESSION['user_id'];
}
$juego_id = $_POST['juego_id'];
$comentario = $_POST['comentario'];
$query = "INSERT INTO tComentarios(comentario, juego_id, usuario_id, fecha)
VALUES ('".$comentario."',".$juego_id.",$user_id_a_insertar, NOW())";
mysqli_query($db, $query) or die('Error');
mysqli_close($db);
?>
