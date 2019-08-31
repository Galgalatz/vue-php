<?php

$res = ['error' => false];

if(!isset($_POST['name']) || !isset($_POST['phone']) || !isset($_POST['email']) || !isset($_POST['agree'])){

  $res['error'] = true;
  $res['status'] = 0;
  $res['message'] = 'קרתה תקלה, אנא מלא פרטים בשנית';

  header('Content-Type: application/json');
  echo json_encode($res);
  die();

}

  $link = new mysqli('localhost', 'root', '', 'landing_vue_php');
  $link->set_charset("utf8");

  if($link->connect_error){

    $res['error'] = true;
    $res['message'] = 'לא ניתן להתחבר';

    header('Content-Type: application/json');
    echo json_encode($res);
    die();
  }


  $agree = $_POST['agree'] == 'true' ? 1 : 0;
  $divur = $_POST['divur'] == 'false' ? 0 : 1;
  $name = $_POST['name'];
  $email = $_POST['email'];
  $phone = $_POST['phone'];
  $city = $_POST['city'];

  $query = "INSERT INTO leads VALUES(null, '$name', '$email', '$phone', '$city', '$agree', '$divur', NOW())";
  $result = $link->query($query);

  if(!$result){

    try {    
      throw new Exception("MySQL error $link->error <br> Query:<br> $query", $link->errno);    
  } catch(Exception $e ) {
    $res['error'] = true;
    $res['status'] = 1;
    $res['message'] = "Error No: ".$e->getCode(). " - ". $e->getMessage() . "<br >" . $e->getTraceAsString();

    header('Content-Type: application/json');
    echo json_encode($res);
    die();


    //send mail with error msg:
    // $res['message'] = "Error No: ".$e->getCode(). " - ". $e->getMessage() . "<br >" . $e->getTraceAsString();

  }
}
