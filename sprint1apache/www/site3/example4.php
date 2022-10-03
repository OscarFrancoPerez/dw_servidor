<html>
	<body>
	<h1>Jubilación</h1>

	<?php
		function edad_en_5_años($edad){
			$total =$edad + 5;
			return $total;
		}
		function mensaje($edad){
			if(edad_en_5_años($edad) > 65){
				return "En 5 años tendrás edad de jubilación";
			}else{
				return "Disfruta de tu tiempo";
			}
		}
	?>
		<table>
			<tr>
				<th>Edad</th>
				<th>Info</th>
			</tr>
			<?php
				$lista = array(23,60,62,45,56);
				foreach($lista as $valor){
					echo "<tr>";
					echo "<td>".$valor."</td>";
					echo "<td>".mensaje($valor)."</td>";
					echo "</tr>";
				}
			?>
		</table>
	</body>
</html>
