<?php


$link = new mysqli('localhost', 'root', '', 'landing_vue_php');

if($link->connect_error){
  die('לא ניתן להתחבר לדאטה בייס');
}

$link->set_charset("utf8");
$res = ['error' => false];

$action = 'read';


if(isset($_GET['action'])){
  $action = $_GET['action']; 
}

// GET LEADS
if($action === 'read'){
  $result = $link->query("SELECT * FROM leads");

  $users = [];

  while($row = $result->fetch_assoc()){
    //insert all leads to array users
    $users[] = $row;
  }

  $res['users'] = $users;
}

// CREATE NEW LEAD
if($action === 'create'){

  $name = $_POST['name'];
  $email = $_POST['email'];
  $phone = $_POST['phone'];
  $city = $_POST['city'];

  $result = $link->query("INSERT INTO leads (name, email, phone, city, agree , divur, date) VALUES('$name', '$email', '$phone', '$city', '1', '1', NOW())") or die(mysqli_error($link));

  $result ?  $res['message'] = 'משתמש נוסף בהצלחה!' : $res = ['error' => true, 'message' => 'שגיאה בהוספת משתמש'];
  
}

// UPDATE EXIST LEAD
if($action === 'update'){

  $id = $_POST['id'];
  $name = $_POST['name'];
  $email = $_POST['email'];
  $phone = $_POST['phone'];
  $city = $_POST['city'];

  $result = $link->query("UPDATE leads SET name = '$name', email = '$email', phone = '$phone', city ='$city', date = NOW() WHERE id = $id");

  $result ?  $res['message'] = 'משתמש עודכן בהצלחה!' : $res = ['error' => true, 'message' => 'שגיאה בעדכון משתמש'];
  
}


// DELETE LEAD

if($action === 'delete'){

  $id = $_POST['id'];

  $result = $link->query("DELETE FROM leads WHERE id = $id");

  $result ?  $res['message'] = 'משתמש נמחק בהצלחה!' : $res = ['error' => true, 'message' => 'שגיאה במחיקת משתמש'];
  
}




$link->close();
header('Content-type: application/json');
echo json_encode($res);
die();