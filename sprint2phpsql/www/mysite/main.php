<?php
$db = mysqli_connect('localhost', 'root', '1234', 'mysitedb') or die('Fail');
?>
<h1>Conexión establecida</h1>
<?php
// Lanzar una query
$query = 'SELECT * FROM tJuegos';
$result = mysqli_query($db, $query) or die('Query error');
echo '<table>';
// Recorrer el resultado
while ($row = mysqli_fetch_array($result)) {
    echo '<tr>';
      echo $row['nombre'];
    echo '</tr>';
    echo '<tr>';
      echo '<img src=" '.$row[2].'"  width="80" height="120">';
    echo '</tr>';
  echo '<br>';
}
echo '</table>';
mysqli_close($db);
?>
