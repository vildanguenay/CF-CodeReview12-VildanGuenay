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
    
   $updateQuery = "UPDATE location
            SET category = '$category', name ='$name', address = '$address', phone = '$phone', type='$type', web = '$web', description='$descr', image = '$image', date = '$date', time = '$time' 
            WHERE location_id = '$location_id'";
   if($conn->query($updateQuery) === TRUE) {
       echo  "<p>Successfully Updated</p>";
       echo "<a href='../index.php'><button type='button'>Back To Home</button></a>";
   } else {
        echo "Error while updating record : ". $conn->error;
   }
   $conn->close();
}
?>