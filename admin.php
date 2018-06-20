<?php
require_once('conn.php');
// Processing game
$processing_query=mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos WHERE revisado= 0",$connection);

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
      $saldo_total_laplacios = $total_banco_prev_row[0] + $ap[5]*5;
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
        $saldo_total_laplacios = $total_banco_prev_row[0] + $ap[5]*3;
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
          $saldo_total_laplacios = $total_banco_prev_row[0] + $ap[5]*2;
          mysql_query("INSERT INTO transacciones (id_participante, id_apuesta, monto, total_participante, fecha, hora) VALUES ('$ap[1]','$ap[0]','$saldo_incr','$saldo_new','$current_date','$current_time')");
          mysql_query("UPDATE banco_central_laplacio SET total_laplacios='$saldo_total_laplacios'");
          $cotizacion_new = $saldo_total_laplacios/$total_banco_prev_row[1];
          mysql_query("UPDATE banco_central_laplacio SET cotizacion='$cotizacion_new'");
        } else {
          // NO acerto
          $reserva_banco_total = $total_banco_prev_row[2] + $ap[5];
          mysql_query("UPDATE banco_central_laplacio SET reserva='$reserva_banco_total'");
          //$cotizacion_new = ($total_banco_prev_row[0]-$reserva_banco_total)/$total_banco_prev_row[1];
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
?>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
<title>BANCO CENTRAL DEL LAPLACIO</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
  <div class="">
    <h2>Procesar Laplacios (ADMIN)</h2>
    <form id="form" name="form" method="post" action="">
      <table>
        <tr>
          <td>Partido</td>
          <td>
            <select name="id_partido_processing">
              <?php
              while($proc = mysql_fetch_array($processing_query)) {
                $proc_name = $proc[1] . " - " . $proc[2] . " - " . $proc[3] . " " . $proc[4];
                echo '<option value="'.$proc[0].'">'.$proc_name.'</option>';
              }
              echo "</select>";
              ?>
            </select>
          </td>
        </tr>
        <tr>
          <td><input type="submit" name="submit2" id="submit" value="Calcular" /></td>
        </tr>
      </table>
      <span><?php echo $processing_error; ?></span>
    </form>
  </div>
</body>
</html>
