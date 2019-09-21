<?php 
if( !($_SESSION['admins']) ) {
    header("Location: index.php");
    exit;
   }

require 'db_connect.php';
if ($_GET['id']) {
   $id = $_GET['id'];
   $sql =  "SELECT *
            FROM location
            WHERE location_id = {$id}";
   $result = $conn->query($sql);
   $data = $result->fetch_assoc();
   $conn->close();
}
?>
<!DOCTYPE html>
<html>
<head>
   <title>PHP CRUD  |  Add Medium</title>

   <style type= "text/css">
       fieldset {
           margin: auto;
            margin-top: 100px;
           width: 50% ;
       }
       table tr th  {
           padding-top: 20px;
       }
   </style>

</head>
<body>

<fieldset >
   <legend>Update</legend>

   <form action="actions/a_update.php" method="post">
       <table cellspacing= "0" cellpadding="0">
            <tr>
            <!-- display initially defined data in php tags for better overview -->
               <td><input type="hidden" name="id" value="<?php echo $data['location_id']?>"/></td>
           </tr>
            <tr>
               <th>Category</th>
               <td><input type="text" name="category" value="<?php echo $data['category']?>" placeholder="category"/></td>
           </tr>
           <tr>
               <th>Name</th>
               <td><input type="text" name="name" value="<?php echo $data['name']?>" placeholder="name"/></td>
           </tr>    
           <tr>
               <th>Address</th>
               <td><input type="text" name= "address" value="<?php echo $data['address']?>" placeholder="address"/></td>
            </tr>
            <tr>
               <th>Phone</th>
               <td><input type="text" name= "phone" value="<?php echo $data['phone']?>" placeholder="phone"/></td>
           </tr>
           <tr>
               <th>Type</th>
               <td><input type="text" name="type" value="<?php echo $data['type']?>" placeholder="type"/></td>
           </tr>
           <tr>
               <th>Web address</th>
               <td><input type="text" name="web" value="<?php echo $data['web']?>" placeholder="web"/></td>
           </tr>
           <tr>
               <th>Description</th>
               <td><input type="text" name="description" value="<?php echo $data['description']?>" placeholder="description"/></td>
           </tr>
           <tr>
               <th>Image</th>
               <td><input type="text" name="image" value="<?php echo $data['image']?>" placeholder ="image"/></td>
           </tr>
           <tr>
               <th>Date</th>
               <td><input type="text" name="date" value="<?php echo $data['date']?>" placeholder ="date"/></td>
           </tr>
           <tr>
               <th>Time</th>
               <td><input type="text" name="time" value="<?php echo $data['time']?>" placeholder ="time"/></td>
           </tr>
           
           <tr>
               <td><button type ="submit">Update Medium</button></td>
               <td><a href= "index.php"><button type="button">Back</button></a></td>
           </tr>
       </table>
   </form>

</fieldset>

</body>
</html>