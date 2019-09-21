<?php
ob_start();
session_start();
require 'db_connect.php';
// if session is not set this will redirect to login page
print_r($_SESSION);
if( !isset($_SESSION['users']) ) {
 header("Location: index.php");
 exit;
}
// select logged-in users details
$res=mysqli_query($conn, "SELECT * FROM users WHERE user_id=".$_SESSION['users']);
$userRow=mysqli_fetch_array($res, MYSQLI_ASSOC);
?>
<!DOCTYPE html>
<html>
<head >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Welcome - <?php echo $userRow['name'];?></title>
</head>
<body >
        <div class="card-header bg-info text-white d-flex"> 
           <h4>Welcome <?php echo $userRow['name'];?>!</h4>
           <a  href="logout.php?logout" class="text-white ml-auto">Sign Out</a>
        </div>

           <div class=row>
    <?php
        $sql = "SELECT * FROM location";
        $result = $conn->query($sql);
        if($result->num_rows > 0) {
          // get result rows as an associative array
            while($lib = $result->fetch_assoc()) {
                echo "<div class='col-md-3 card'>
                        <img src=".$lib['image']." width='400px' height='366px' alt='...'>
                        <div class='card-body'>
                          <h5 class='card-title'>".$lib['name']."</h5>
                          <h6 class='card-title'>".$lib['address']."</h6>
                          <p class='card-text'>".$lib['phone']."</p>
                          <h6 class='card-title'>".$lib['date']."</h6>
                          <h6 class='card-title'>".$lib['time']."</h6>
                        </div>
                        <ul class='list-group list-group-flush'>
                          <li class='list-group-item'>".$lib['web']."</li>
                          <li class='list-group-item'>".$lib['description']."</li>
                        </ul>
                      </div>";
                      if ($_SESSION['admins']) {
                      echo  "<div class='card-body'>
                              <form action='delete.php' method='GET'>
              <!-- //   save id of clicked medium and send via btn click to db -->
                                <input type='hidden' name='id' value='".$lib['location_id']."' />
                                <button type='submit'>delete</button>
                              </form>
                              <form action='update.php' method='GET'>
                                <input type='hidden' name='id' value='".$lib['location_id']."' />
                                <button type='submit'>update</button>
                              </form>
                            </div>";
                      }
            }
        } else  {
            echo "<tr>
                  <td colspan='5'>
                    <center>No Data Available</center>
                  </td>
                </tr>";
          }
    ?>
    <br>
    </div>
        <div class="text-center">
            <button><a href = "create.php" class="">Add Medium Here...</a></button>
        </div>
           
</body>
</html>
<?php ob_end_flush(); ?>