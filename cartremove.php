<?php
session_start();

if (isset($_POST['remove'])){
    foreach ($_SESSION['cart'] as $key=>$value){
        if ($value['item_name']==$_POST['item_name']){
            unset($_SESSION['cart'][$key]);
            echo "<script>
alert('Product removed');
window.location.href='cart.php';
</script>";
        }
    }
}


?>