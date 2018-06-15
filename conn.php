<?php
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$connection = mysql_connect("localhost", "laplacios2018", "");
// Selecting Database
$db = mysql_select_db("FIFA2018", $connection);
session_start();// Starting Session
// Storing Session
$user_check=$_SESSION['login_user'];
// SQL Query To Fetch Complete Information Of User
$ses_sql=mysql_query("select id_participante,nombre,saldo from participantes where nombre='$user_check'", $connection);
$row = mysql_fetch_assoc($ses_sql);
$login_session =$row['nombre'];
$login_id = $row['id_participante'];
$login_saldo = $row['saldo'];
?>
