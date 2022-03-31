<?php 
session_start();
include("../partials/connect.php");

$total=$_POST['total'];
$phone=$_POST['phone'];

$address=$_POST['address'];
$customerid=$_SESSION['customerid'];

$sql= "INSERT INTO orders(customer_id,address1,phone,total) values('$customerid','$address','$phone','$total')";
$connect->query($sql);

$sql2="select id from orders order by id desc limit 1";
$result=$connect->query($sql2);
$final=$result->fetch_assoc();
$orderid=$final['id'];

foreach ($_SESSION['cart'] as $key => $value){
    $prodid=$value['item_id'];
    $quantity=$value['quantity'];

    $sql3="INSERT INTO orders_details (order_id,product_id,quantity) VALUES ('$orderid','$prodid','$quantity')";
    $connect->query($sql3);
    echo "<script>
alert('The order is placed');
window.location.href='../index.php';
</script>";
}
?>