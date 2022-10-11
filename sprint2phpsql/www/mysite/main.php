<?php
$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<h1>Conexión establecida</h1>
<?php
// Lanzar una query
$query = 'SELECT * FROM tJuegos';
$result = mysqli_query($db, $query) or die('Query error');
// Recorrer el resultado
while ($row = mysqli_fetch_array($result)) {
  echo '<table>';
    echo '<td>';
      echo $row['nombre'];
    echo '</td>';
    echo '<td>';
      echo '<img src=" '.$row[2].'" >';
    echo '</td>';
  echo '<br>';
}
mysqli_close($db);
?>
