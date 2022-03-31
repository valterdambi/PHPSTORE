<?php
session_start();

if (isset($_POST['login'])) {
  include("../partials/connect.php");
  $email = $_POST['email'];
  $password = $_POST['password'];
  $sql = "SELECT * from customers where username='$email' AND password1='$password'";
  $results = $connect->query($sql);
  $final = $results->fetch_assoc();

  $_SESSION['email'] = $final['username'];
  $_SESSION['password'] = $final['password1'];

  $_SESSION['customerid'] = $final['id'];

  if ($email = $final['username'] and $password = $final['password1']) {
    header('location: ../cart.php');
  } else {
    echo "<script>
alert('Credentials wrong');
window.location.href='../customerforms.php';
</script>";
  }
}

?>
