<?php 
require '../db_connect.php';
if ($_POST) {
   $id = $_POST['id'];
   $sql = "DELETE FROM location WHERE location_id = {$id}";
    if($conn->query($sql) === TRUE) {
        //    redirect to index via http-header
      header('Location: http://localhost/CF-CodeReview12-VildanGuenay/home.php');
   } else {
       echo "Error updating record : " . $conn->error;
   }
}
?>