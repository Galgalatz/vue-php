<?php

session_start();

$res = ['error' => false];

if(!isset($_POST['name']) || !isset($_POST['password'])){

  $res['error'] = true;
  $res['message'] = 'לא הצליח להתחבר';
  die();

}else{
  $_SESSION['name'] = $_POST['name'];
  $_SESSION['password'] = $_POST['password'];
  $res['message'] = 'ברוך שובך!';
}


header('Content-Type: application/json');
echo json_encode($res);
die();