<?php 
require '../db_connect.php';
if ($_POST) {
    $location_id = $_POST['id'];  
    $category = $_POST['category'];
    $name = $_POST['name'];
    $address = $_POST['address'];
    $type = $_POST['type'];
    $descr = $_POST['description'];
    $date = $_POST['date'];
    $phone = $_POST['phone'];
    $web = $_POST['web'];
    $time = $_POST['time'];
    $image = $_POST['image'];
//    save input inside authorQuery
   $locationQuery = "INSERT INTO location (category, name, address, phone, type, web, description, image, date, time) VALUES ('$category', '$name', '$address', '$phone', '$type', '$web', '$descr', '$image', '$date', '$time')";
   if ($conn->query($locationQuery) === FALSE) {
        echo  "<p>Inserting new location failed!</p>";
    }
    //    redirect to index via http-header
    header('Location: http://localhost/CF-CodeReview12-VildanGuenay/home.php');
}
?>