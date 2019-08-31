<?php

$hostName = "localhost";
$username = "root";
$password = "";
$dbname = "landing_vue_php";

$mysqli = new mysqli($hostName, $username, $password, $dbname);

$mysqli->set_charset("utf8");

switch ($_GET['request']) {

  case 'city':
  $sql = "SELECT * FROM cities";
  break;

default:
  break;

}

$result = $mysqli->query($sql);

$response = [];
while($row = mysqli_fetch_assoc($result)){
   $response[] = array("id"=>$row['id'], "name"=>$row['name']);
}

header('Content-Type: application/json');
echo json_encode($response);
die();