<?php
require("includes/common.php");

if (isset($_GET['id']) && is_numeric($_GET['id'])) {
    $item_id = $_GET['id'];
    $user_id = $_SESSION['user_id'];

    // Insert the item into the user_item table with status 'Added to cart'
    $query = "INSERT INTO user_item (user_id, item_id, status) VALUES ($user_id, $item_id, 'Added to cart')";
    mysqli_query($con, $query) or die(mysqli_error($con));

    // Redirect to products page
    header('location: products.php');
}
?>