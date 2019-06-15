<?php
require_once('conn.php');

// Funcion para pagar apuesta
function pagar_apuesta($id_participante, $id_apuesta, $valor_pago_apuesta, $saldo_participante, $total_laplacios_banco){
  $current_date = date('Y-m-d');
  $current_time = date('H:i:s');
  $saldo_new = $saldo_participante+$valor_pago_apuesta;
  $mysql_query_string="UPDATE participantes SET saldo='$saldo_new' WHERE id_participante='$id_participante'";
  mysql_query($mysql_query_string); // Actualizo el saldo del participante
  $nuevo_saldo_total_banco = $total_laplacios_banco+$valor_pago_apuesta;
  mysql_query("INSERT INTO transacciones (id_participante, id_apuesta, monto, total_participante, fecha, hora) VALUES ('$id_participante','$id_apuesta','$valor_pago_apuesta','$saldo_new','$current_date','$current_time')");
  mysql_query("UPDATE banco_central_laplacio SET total_laplacios='$nuevo_saldo_total_banco'");
}

function calcular_ganancia_tiempo_reglamentario($resultado_equipo_1,$resultado_equipo_2,$apuesta_equipo_1,$apuesta_equipo_2){
  $factor = 0;
  if ($resultado_equipo_1 == $apuesta_equipo_1 && $resultado_equipo_2==$apuesta_equipo_2){ //Acerto al marcador
    $factor = 5;
  } else {
    $res_diff = $resultado_equipo_1-$resultado_equipo_2;
    $ap_diff = $apuesta_equipo_1-$apuesta_equipo_2;
    if ($res_diff == $ap_diff){ // Acerto a la diferencia
      $factor = 3;
    } else {
      $res_sign = $res_diff < 0 ? -1 : ( $res_diff > 0 ? 1 : 0 );
      $ap_sign = $ap_diff < 0 ? -1 : ( $ap_diff > 0 ? 1 : 0 );
      if ($res_sign == $ap_sign){ // Acerto al ganador
        $factor = 2;
      }
    }
  }
  return $factor;
}

function calcular_cotizacion_laplacio(){
  $total_laplacios_circulando_query = mysql_query("SELECT SUM(saldo) FROM participantes WHERE 1 ");
  $total_laplacios_circulando_row = mysql_fetch_array($total_laplacios_circulando_query);
  $total_laplacios_circulando = $total_laplacios_circulando_row[0];

  // Obtengo el saldo en dolares del banco
  $total_banco_prev_query = mysql_query("SELECT * FROM banco_central_laplacio WHERE 1");
  $total_banco_prev_row = mysql_fetch_array($total_banco_prev_query);
  $total_dolares_banco = $total_banco_prev_row[1];

  $cotizacion = $total_laplacios_circulando/$total_dolares_banco;
  mysql_query("UPDATE banco_central_laplacio SET cotizacion='$cotizacion'");
}

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
  $resultado_check_penales = $partido_query_processing_row[7];

  $apuestas_query_processing = mysql_query("SELECT * FROM apuestas where id_partido='$id_partido_processing'");
  while ($ap = mysql_fetch_array($apuestas_query_processing)) {
    // OBTENGO INFORMACINO DE LA APUESTA
    $id_apuesta = $ap[0];
    $apuesta_resultado_equipo_1 = $ap[3];
    $apuesta_resultado_equipo_2 = $ap[4];
    $apuesta_check_penales = $ap[5];
    $apuesta_valor = $ap[6];

    // Obtengo el participante
    $id_participante = $ap[1];
    $participante_query_processing = mysql_query("SELECT * FROM participantes WHERE id_participante='$id_participante'");
    $participante_query_processing_row = mysql_fetch_array($participante_query_processing);
    $saldo_participante = $participante_query_processing_row[2];

    // Obtengo el saldo del banco
    $total_banco_prev_query = mysql_query("SELECT * FROM banco_central_laplacio WHERE 1");
    $total_banco_prev_row = mysql_fetch_array($total_banco_prev_query);
    $total_laplacios_banco = $total_banco_prev_row[0];

    // Calculo la ganancia en tiempo reglamentario
    $factor_penales = 1;
    $factor_tr = calcular_ganancia_tiempo_reglamentario($resultado_equipo_1_processing,$resultado_equipo_2_processing,$apuesta_resultado_equipo_1,$apuesta_resultado_equipo_2);
    if ($apuesta_check_penales == 1 && $resultado_check_penales == 1) {
      $factor_penales = 1.5;
    }
    $ganancia_participante = $apuesta_valor*$factor_tr*$factor_penales;

    // Pago la apuesta
    if ($ganancia_participante > 0) {
      pagar_apuesta($id_participante, $id_apuesta, $ganancia_participante,$saldo_participante,$total_laplacios_banco);
    }

    // Actualizo el estado de la apuesta
    mysql_query("UPDATE apuestas SET procesada=1 WHERE id_apuesta='$id_apuesta'");
  }

  // Actualizo la cotizacion del laplacio
  calcular_cotizacion_laplacio();

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
      <span><?php echo $mysql_query_string; ?></span>
      <span><?php echo $processing_error; ?></span>
    </form>
  </div>
</body>
</html>
