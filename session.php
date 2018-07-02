<?php
require_once('conn.php');

date_default_timezone_set('America/Guayaquil');
$current_date = date('Y-m-d');
$current_time = date('H:i:s');

// Getting current games
//$games_query=mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos WHERE fecha >= '$current_date' and hora >= '$current_time'",$connection);
$games_query=mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos WHERE fecha >= '$current_date' AND revisado='0'",$connection);
//$games_query=mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos WHERE revisado='0'",$connection);

// Getting bets
$bets_query=mysql_query("select * from apuestas where id_participante='$login_id'");

// Getting LeaderBoard
$leader_query= mysql_query("select nombre,saldo from participantes order by saldo desc");

// Processing game
$processing_query=mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos WHERE revisado= 0",$connection);

// Query cotizacion
// Obtengo el saldo del banco
$total_banco_prev_query = mysql_query("SELECT * FROM banco_central_laplacio WHERE 1");
$total_banco_prev_row = mysql_fetch_array($total_banco_prev_query);

// Saving Bet
$bet_error = "";
$id_partido = $_POST['id_partido'];
$apuesta_equipo_1= $_POST['apuesta_equipo_1'];
$apuesta_equipo_2= $_POST['apuesta_equipo_2'];
$apuesta_check_penales= isset($_POST['checkbox_penales']);
$apuesta_valor= $_POST['apuesta_valor'];
$date = date('Y-m-d');
$time = date('H:i:s');

// Check if not already placed the bet
$valid_query = mysql_query("SELECT * FROM apuestas WHERE id_participante='$login_id' and id_partido='$id_partido'");
$valid_query_row = mysql_num_rows($valid_query);

if (isset($_POST['submit'])){
  // Obtengo el partido
  $partido_query = mysql_query("SELECT * FROM partidos where id_partido='$id_partido'");
  $partido_query_row = mysql_fetch_array($partido_query);
  $fecha_partido = $partido_query_row[3];
  $hora_partido = $partido_query_row[4];

  // Obtengo el saldo del banco
  $total_banco_prev_query = mysql_query("SELECT * FROM banco_central_laplacio WHERE 1");
  $total_banco_prev_row = mysql_fetch_array($total_banco_prev_query);

  if (empty($id_partido) || $apuesta_equipo_1<0 || $apuesta_equipo_2<0 || empty($apuesta_valor)){
    $bet_error = "Algunos campos estan vacios";
  } else {
    if ($valid_query_row > 0) {
      $bet_error = "Ya aposto para este partido ".$diff_fecha;
    } else {
      if ($apuesta_valor <= $login_saldo){
        // Inserto apuesta en tabla de apuestas
        mysql_query("INSERT INTO apuestas (id_participante, id_partido, apuesta_equipo_1, apuesta_equipo_2, apuesta_check_penales, apuesta_valor, apuesta_fecha, apuesta_hora,procesada) VALUES ('$login_id', '$id_partido','$apuesta_equipo_1','$apuesta_equipo_2','$apuesta_check_penales','$apuesta_valor','$date','$time',0)");
        $res = $login_saldo-$apuesta_valor; // Disminuyo el saldo
        mysql_query("UPDATE participantes SET saldo='$res' WHERE id_participante='$login_id'");
        $banco_saldo = $total_banco_prev_row[0]-$apuesta_valor; // Actualizo el saldo del banco
        mysql_query("UPDATE banco_central_laplacio SET total_laplacios='$banco_saldo'");
        // SQL Query To Fetch Complete Information Of User
        $ses_sql=mysql_query("select id_participante,nombre,saldo from participantes where nombre='$user_check'", $connection);
        $row = mysql_fetch_assoc($ses_sql);
        $login_session =$row['nombre'];
        $login_id = $row['id_participante'];
        $login_saldo = $row['saldo'];
        header("location: profile.php");
        $bet_error = "Apuesta guardada correctamente";
      } else {
        $bet_error = "No tiene suficientes laplacios";
      }
    }
  }
}

// Logging out
if(!isset($login_session)){
  mysql_close($connection); // Closing Connection
  header('Location: index.php'); // Redirecting To Home Page
}
?>
