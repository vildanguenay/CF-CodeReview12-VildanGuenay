<?php
if( !($_SESSION['admins']) ) {
    header("Location: index.php");
    exit;
   }
?>
<!DOCTYPE html>
<html>
<head>
   <title >PHP CRUD  |  Add Location</title>
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
   <legend>Add Location</legend>
   <form  action="actions/a_create.php" method= "post">
       <table cellspacing= "0" cellpadding="0">
            <tr>
               <th>Category</th>
               <td><input  type="text" name="category"  placeholder="category"/></td>
           </tr>
           <tr>
               <th>Name</th>
               <td><input  type="text" name="name"  placeholder="name"/></td>
           </tr>    
           <tr>
               <th>Address</th>
               <td><input  type="text" name= "address" placeholder="address"/></td>
           </tr>
           <tr>
               <th>Phone</th>
               <td><input  type="text" name="phone"  placeholder="phone"/></td>
           </tr>
           <tr>
               <th>Type</th>
               <td><input  type="text" name="type"  placeholder="type"/></td>
           </tr>
           <tr>
               <th>Description</th>
               <td><input type="text"  name="description" placeholder ="description"/></td>
           </tr>
           <tr>
               <th>Image</th>
               <td><input type="text"  name="image" placeholder ="image"/></td>
           </tr>
           <tr>
               <th>Date</th>
               <td><input type="text"  name="date" placeholder ="date"/></td>
           </tr>
           <tr>
               <th>Time</th>
               <td><input type="text"  name="time" placeholder ="time"/></td>
           </tr>
           <tr>
               <td><button type ="submit">Insert Medium</button></td>
               <td><a href= "index.php"><button type="button">Back</button></a></td>
           </tr >
       </table>
   </form>
</fieldset >

</body>
</html>