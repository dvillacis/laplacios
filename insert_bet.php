<?php
require_once('conn.php');
$id_partido = $_POST['id_partido'];
$apuesta_equipo_1= $_POST['apuesta_equipo_1'];
$apuesta_equipo_2= $_POST['apuesta_equipo_2'];
$apuesta_valor= $_POST['apuesta_valor'];
$date = date('Y-m-d');
$time = date('h:i:s');

// Check if not already placed the bet
$valid_query = mysql_query("SELECT * FROM apuestas WHERE id_participante='$login_id' AND id_partido='$id_partido' ");
$valid_query_row = mysql_num_rows($valid_query);
if ($valid_query_row == 0) {
  mysql_query("INSERT INTO apuestas (id_participante, id_partido, apuesta_equipo_1, apuesta_equipo_2, apuesta_valor, apuesta_fecha, apuesta_hora) VALUES ('$login_id', '$id_partido','$apuesta_equipo_1','$apuesta_equipo_2','$apuesta_valor','$date','$time')");
  $bet_error = "Apuesta guardada correctamente";
} else {
  $bet_error = "Ya aposto para este partido";
}
header("location:profile.php?action");
mysql_close($connection);

?>
