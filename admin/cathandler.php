<?php
include ("../partials/connect.php");
$category=$_POST['category'];

$sql="INSERT INTO categories (namec) VALUES ('$category')";
$connect->query($sql);
header("location: categories.php");
?>