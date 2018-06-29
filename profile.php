<?php
include('session.php');
?>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
<title>BANCO CENTRAL DEL LAPLACIO</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
function enableDisablePenalesTextFields() {
  r1 = document.getElementById('apuesta_equipo_1').value
  r2 = document.getElementById('apuesta_equipo_2').value
  console.log(r1,r2)
  if (r1==r2){
    cb1 = document.getElementById('checkbox_penales').checked;
    document.getElementById('apuesta_penales_equipo_1').disabled = !cb1;
    document.getElementById('apuesta_penales_equipo_2').disabled = !cb1;
  } else {
    $('#checkbox_penales').attr('checked',false);
    $('#apuesta_penales_equipo_1').attr('disabled',true);
    $('#apuesta_penales_equipo_2').attr('disabled',true);
    alert('el marcador no da empate')
  }
}
</script>
</head>
<body>
<div id="profile">
<b id="welcome">Hola : <i><?php echo $login_session;?></i></b><br/>
<b>Tienes : <i><?php echo $login_saldo;?></i> laplacios.</b><br/>
<b>Cotizacion 1 USD : <i><?php echo $total_banco_prev_row[4];?></i> laplacios.</b><br/>
<b><i><?php echo $current_date.' '.$current_time; ?></i>
<b id="logout"><a href="logout.php">Log Out</a></b>
</div>
<div>
  <h2>Enviar Apuesta</h2>
  <form id="form" name="form" method="post" action="">
  <table>
    <tr>
      <td><h3>Partido</h3></td>
      <td>
        <select name="id_partido">
          <?php
          while($game = mysql_fetch_array($games_query)) {
            $partido_name = $game[1] . " - " . $game[2] . " - " . $game[3] . " " . $game[4];
            echo '<option value="'.$game[0].'">'.$partido_name.'</option>';
          }
          echo "</select>";
          ?>
        </select>
      </td>
    </tr>
    <tr>
      <td><h3>Tiempo Reglamentario + Alargues</h3></td>
    </tr>
    <tr>
      <td>Equipo 1</td>
      <td><input id="apuesta_equipo_1" min="0" step="1" type="number" name="apuesta_equipo_1" /></td>
    </tr>
    <tr>
      <td>Equipo 2</td>
      <td><input id="apuesta_equipo_2" min="0" step="1" type="number" name="apuesta_equipo_2" /></td>
    </tr>
    <tr>
      <td><h3>Penales: <input type="checkbox" name="checkbox_penales" id="checkbox_penales" onclick="enableDisablePenalesTextFields();" /></h3></td>
    </tr>
    <tr>
      <td>Equipo 1</td>
      <td><input id="apuesta_penales_equipo_1" min="0" step="1" type="number" name="apuesta_penales_equipo_1" disabled/></td>
    </tr>
    <tr>
      <td>Equipo 2</td>
      <td><input id="apuesta_penales_equipo_2" min="0" step="1" type="number" name="apuesta_penales_equipo_2" disabled/></td>
    </tr>
    <tr>
      <td><h3>Apuesta</h3></td>
      <td><input id="apuesta_valor" min="0" step="1" type="number" name="apuesta_valor" /> laplacios</td>
    </tr>
    <tr>
      <td><input type="submit" name="submit" id="submit" value="Apostar" /></td>
    </tr>
  </table>
  <span><?php echo $bet_error; ?></span>
  </form>
</div>
<div class="">
  <h2>Mis Apuestas</h2>
  <table class="table1">
    <thead>
      <tr>
        <th>FECHA</th>
        <th>HORA</th>
        <th>PARTIDO</th>
        <th>PRONOSTICO</th>
        <th>PRONOSTICO PENALES</th>
        <th>RESULTADO</th>
        <th>RESULTADO PENALES</th>
        <th>APUESTA</th>
        <th>PROCESADA</th>
      </tr>
    </thead>
    <tbody>
    <?php
      while($bet = mysql_fetch_array($bets_query)){
        $g_query = mysql_query("select * from partidos where id_partido='$bet[2]'");
        $g_row = mysql_fetch_array($g_query);
        $match = $g_row[1].'-'.$g_row[2].' '.$g_row[3].' '.$g_row[4];
        $pron = $bet[3].'-'.$bet[4];
        $pronP = $bet[5].'-'.$bet[6];
        $resultado = $g_row[5].'-'.$g_row[6];
        $resultadoP = $g_row[7].'-'.$g_row[8];
        echo '<tr><td>'.$bet[6].'</td>'.'<td>'.$bet[7].'</td>'.'<td>'.$match.'</td>'.'<td>'.$pron.'</td><td>'.$pronP.'</td><td>'.$resultado.'</td><td>'.$resultadoP.'</td><td>'.$bet[5].'</td><td>'.$bet[8].'</td></tr>';
      }
    ?>
    </tbody>
  </table>
</div>
<div class="">
  <h2>Tabla de Clasificación</h2>
  <table class="table1">
    <thead>
      <tr>
        <th>POS</th>
        <th>PARTICIPANTE</th>
        <th>LAPLACIOS</th>
      </tr>
    </thead>
    <tbody>
      <?php
      $indice=1;
      while ($participant = mysql_fetch_array($leader_query)){
        echo '<tr><td>'.$indice.'</td><td>'.$participant[0].'</td><td>'.$participant[1].'</td></tr>';
        $indice = $indice+1;
      }
      ?>
    </tbody>
  </table>
</div>
</body>
