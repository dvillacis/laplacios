<html>
<title>Mundial 2018 App</title>
<h1>Mundial 2018 App</h1>
<script type="text/javascript">
function validateForm()
{ var un=document.form1.username.value;
  var pd=document.form1.psd.value;
  if(un=="" && pd!="")
  {
  document.getElementById("errorMessage").innerHTML="Please enter username";return false;	}
  if(un!="" && pd=="")
  {	   document.getElementById("errorMessage").innerHTML="Please enter password"; return false;	}
  if(un=="" && pd=="")
	  {	 document.getElementById("errorMessage").innerHTML="Please enter username & password";return false;	}
	}
</script>
<body>

<form id="form2" name="form2" method="post" action="insert.php">
<table>
  <tr>
    <td>Usuario</td>
    <td>
      <select name="id_participante">
        <?php
        require_once('conn.php');
        $fetch_participante = mysql_query("SELECT DISTINCT id_participante, nombre FROM participantes");
        while($throw_participante = mysql_fetch_array($fetch_participante)) {
        echo '<option value="'.$throw_participante[0].'">'.$throw_participante[1].'</option>';
        }
        echo "</select>";
        ?>
      </select>
    </td>
  </tr>
  <tr>
    <td>Partido</td>
    <td>
      <select name="id_partido">
        <?php
        require_once('conn.php');
        $fetch_name = mysql_query("SELECT DISTINCT id_partido,equipo_1,equipo_2,fecha,hora FROM partidos");
        while($throw_name = mysql_fetch_array($fetch_name)) {
          $partido_name = $throw_name[1] . " - " . $throw_name[2] . " - " . $throw_name[3] . ":" . $throw_name[4];
          echo '<option value="'.$throw_name[0].'">'.$partido_name.'</option>';
        }
        echo "</select>";
        ?>
      </select>
    </td>
  </tr>
  <tr>
    <td>Equipo 1</td>
    <td><input id="number" type="number" name="apuesta_equipo_1" /></td>
  </tr>
  <tr>
    <td>Equipo 2</td>
    <td><input id="number" type="number" name="apuesta_equipo_2" /></td>
  </tr>
  <tr>
    <td>Apuesta</td>
    <td><input id="number" type="number" name="apuesta_valor" /> laplacios</td>
  </tr>
  <tr>
    <td><input type="submit" name="submit" id="submit" value="Submit" /></td>
  </tr>
</table>
</form>
<p id="errorMessage" style="color:#C00; font-style:italic;"></p>



</body>
</html>
