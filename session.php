<?php
require_once('conn.php');

date_default_timezone_set('America/Guayaquil');
$current_date = date('Y-m-d');
$current_time = date('h:i:s');

// Getting current games
$games_query=mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos WHERE fecha >= '$current_date' and hora >= '$current_time'",$connection);
//$games_query=mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos",$connection);

// Getting bets
$bets_query=mysql_query("select * from apuestas where id_participante='$login_id'");

// Getting LeaderBoard
$leader_query= mysql_query("select nombre,saldo from participantes order by saldo desc");

// Processing game
$processing_query=mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos WHERE revisado= 0",$connection);


// Saving Bet
$bet_error = "";
$id_partido = $_POST['id_partido'];
$apuesta_equipo_1= $_POST['apuesta_equipo_1'];
$apuesta_equipo_2= $_POST['apuesta_equipo_2'];
$apuesta_valor= $_POST['apuesta_valor'];
$date = date('Y-m-d');
$time = date('h:i:s');

// Check if not already placed the bet
$valid_query = mysql_query("SELECT * FROM apuestas WHERE id_participante='$login_id' and id_partido='$id_partido'");
$valid_query_row = mysql_num_rows($valid_query);

if (isset($_POST['submit'])){
  // Obtengo el partido
  $partido_query = mysql_query("SELECT * FROM partidos where id_partido='$id_partido'");
  $partido_query_row = mysql_fetch_array($partido_query_processing);
  $fecha_partido = $partido_query_row[3];
  $hora_partido = $partido_query_row[4];
  if (empty($id_partido) || $apuesta_equipo_1<0 || $apuesta_equipo_2<0 || empty($apuesta_valor)){
    $bet_error = "Algunos campos estan vacios";
  } else {
    if ($valid_query_row > 0) {
      $bet_error = "Ya aposto para este partido";
    } else {
      if ($apuesta_valor <= $login_saldo){
        mysql_query("INSERT INTO apuestas (id_participante, id_partido, apuesta_equipo_1, apuesta_equipo_2, apuesta_valor, apuesta_fecha, apuesta_hora,procesada) VALUES ('$login_id', '$id_partido','$apuesta_equipo_1','$apuesta_equipo_2','$apuesta_valor','$date','$time',0)");
        $res = $login_saldo-$apuesta_valor;
        mysql_query("UPDATE participantes SET saldo='$res' WHERE id_participante='$login_id'");
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

// Processing Laplacios
if (isset($_POST['submit2'])){
  $id_partido_processing = $_POST['id_partido_processing'];

  // Obtengo el partido
  $partido_query_processing = mysql_query("SELECT * FROM partidos where id_partido='$id_partido_processing'");
  $partido_query_processing_row = mysql_fetch_array($partido_query_processing);
  $resultado_equipo_1_processing = $partido_query_processing_row[5];
  $resultado_equipo_2_processing = $partido_query_processing_row[6];

  $apuestas_query_processing = mysql_query("SELECT * FROM apuestas where id_partido='$id_partido_processing'");
  while ($ap = mysql_fetch_array($apuestas_query_processing)) {
    // Obtengo el participante
    $participante_query_processing = mysql_query("SELECT * FROM participantes WHERE id_participante='$ap[1]'");
    $participante_query_processing_row = mysql_fetch_array($participante_query_processing);

    // Obtengo el saldo del banco
    $total_banco_prev_query = mysql_query("SELECT * FROM banco_central_laplacio WHERE 1");
    $total_banco_prev_row = mysql_fetch_array($total_banco_prev_query);

    // Verifico si le acerto exactamente
    if ($ap[3] == $resultado_equipo_1_processing && $ap[4] == $resultado_equipo_2_processing) {
      $saldo_new = $participante_query_processing_row[2]+$ap[5]*5;
      mysql_query("UPDATE participantes SET saldo='$saldo_new' WHERE id_participante='$ap[1]'");
      $saldo_incr = $ap[5]*4;
      $saldo_total_laplacios = $total_banco_prev_row[0] + $saldo_incr;
      mysql_query("INSERT INTO transacciones (id_participante, id_apuesta, monto, total_participante, fecha, hora) VALUES ('$ap[1]','$ap[0]','$saldo_incr','$saldo_new','$current_date','$current_time')");
      mysql_query("UPDATE banco_central_laplacio SET total_laplacios='$saldo_total_laplacios'");
      $cotizacion_new = $saldo_total_laplacios/$total_banco_prev_row[1];
      mysql_query("UPDATE banco_central_laplacio SET cotizacion='$cotizacion_new'");
    } else {
      // Verifico si acerto la diferencia
      $res_diff = $resultado_equipo_1_processing-$resultado_equipo_2_processing;
      $ap_diff = $ap[3]-$ap[4];
      if ($res_diff == $ap_diff){
        $saldo_new = $participante_query_processing_row[2]+$ap[5]*3;
        mysql_query("UPDATE participantes SET saldo='$saldo_new' WHERE id_participante='$ap[1]'");
        $saldo_incr = $ap[5]*2;
        $saldo_total_laplacios = $total_banco_prev_row[0] + $saldo_incr;
        mysql_query("INSERT INTO transacciones (id_participante, id_apuesta, monto, total_participante, fecha, hora) VALUES ('$ap[1]','$ap[0]','$saldo_incr','$saldo_new','$current_date','$current_time')");
        mysql_query("UPDATE banco_central_laplacio SET total_laplacios='$saldo_total_laplacios'");
        $cotizacion_new = $saldo_total_laplacios/$total_banco_prev_row[1];
        mysql_query("UPDATE banco_central_laplacio SET cotizacion='$cotizacion_new'");
      } else {
        // Verifico si solo acerto al ganador
        $res_sign = $res_diff < 0 ? -1 : ( $res_diff > 0 ? 1 : 0 );
        $ap_sign = $ap_diff < 0 ? -1 : ( $ap_diff > 0 ? 1 : 0 );
        if ($res_sign == $ap_sign){
          $saldo_new = $participante_query_processing_row[2]+$ap[5]*2;
          mysql_query("UPDATE participantes SET saldo='$saldo_new' WHERE id_participante='$ap[1]'");
          $saldo_incr = $ap[5];
          $saldo_total_laplacios = $total_banco_prev_row[0] + $saldo_incr;
          mysql_query("INSERT INTO transacciones (id_participante, id_apuesta, monto, total_participante, fecha, hora) VALUES ('$ap[1]','$ap[0]','$saldo_incr','$saldo_new','$current_date','$current_time')");
          mysql_query("UPDATE banco_central_laplacio SET total_laplacios='$saldo_total_laplacios'");
          $cotizacion_new = $saldo_total_laplacios/$total_banco_prev_row[1];
          mysql_query("UPDATE banco_central_laplacio SET cotizacion='$cotizacion_new'");
        }
      }
    }

    // Actualizo el estado de la apuesta
    mysql_query("UPDATE apuestas SET procesada=1 WHERE id_apuesta='$ap[0]'");
  }
  // Actualizo el estado del partido
  mysql_query("UPDATE partidos SET revisado=1 WHERE id_partido='$partido_query_processing_row[0]'");
  $processing_error = "Procesadas las apuestas del partido".$partido_query_processing_row[1]." - ".$partido_query_processing_row[2]." - ".$partido_query_processing_row[3]. " ".$partido_query_processing_row[4]." correctamente";
  header("location: profile.php");
}


// Logging out
if(!isset($login_session)){
  mysql_close($connection); // Closing Connection
  header('Location: index.php'); // Redirecting To Home Page
}
?>
