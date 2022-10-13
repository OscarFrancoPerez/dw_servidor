<html>
  <head>
  <link rel="stylesheet" href="/css/detail.css"/>
  <?php
    $db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
  ?>
  </head>
<body style="text-align: center;">
<?php
if (!isset($_GET['id'])) {
die('No se ha especificado un juego');
}
$juego_id = $_GET['id'];
$query = 'SELECT * FROM tJuegos WHERE id='.$juego_id;
$result = mysqli_query($db, $query) or die('Query error');
$only_row = mysqli_fetch_array($result);
echo '<table style="text-align: center;">';
  echo '<td colspan="2" style="background-color: #7677E8;">'.$only_row['nombre'].'</td>';
    echo '<tr>';
      echo '<td>';
      echo '<img src="'.$only_row['url_imagen'].'" width="160" height="240">';
      echo '</td>';
    echo '</tr>';
    echo '<tr>';
      echo '<td>';
        echo '<h2>'.$only_row['publicación'].'</h2>';
      echo '</td>';
    echo '</tr>';
echo '</table>';
?>
<h3>Comentarios:</h3>
<ul>
<?php
$query2 = 'SELECT * FROM tComentarios WHERE juego_id='.$juego_id;
$result2 = mysqli_query($db, $query2) or die('Query error');
while ($row = mysqli_fetch_array($result2)) {
echo '<li>'.$row['comentario'].'</li>';
}
mysqli_close($db);
?>
</ul>
</body>
</html>
