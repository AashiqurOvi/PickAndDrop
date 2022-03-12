<?php
include("connect.php");
session_start();

$query = "SELECT * FROM serviceprovider WHERE SP_work = 'Plumber'" ;
$data =  mysqli_query($conn, $query);
$rows = mysqli_num_rows($data);
#$result = mysqli_fetch_assoc($data);

if ($rows>0) {
  # code...
  
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name ="viewport" content=" width= device-width">
    <title>ACME web design  | Services </title>
    <link rel="stylesheet" href ="./css/style.css">

  </head>
  <body>
    <header>
      <div class ="container">
        <div id ="branding ">
          <h1><span class="highlight">EZ</span> Life Project</h1>
          </div>
          <nav id ="navigation">
            <ul>
              <li> <a href="user_home.php">Home </a> </li>
              <li class="current"> <a href="services.php">Services</a>  </li>
              <li><a href="user_profile.php">Profile</li>
              <li><a href="signup.php">Log Out</li>
              <li> <a href= "user_about.php">About</a> </li>
            </ul>
          </nav>
          </div>
    </header>

    <section id="showcase">
    <div class ="container">
        <h2>List of Plumbers Available</h2>
     <div>
          <table class="table" border="1">
            <tr>
              <th>Name</th>
              <th>Phone No</th>
              <th>Location</th>
              <th>Minimum Cost</th>
              <th>Maximum Cost</th>
              <th>Send Job Request</th>
            </tr>
            <?php
          while ($result = mysqli_fetch_assoc($data)) {
              # code...
             

            echo "<tbody>
                <td>". $result['SP_name']. "</td>
                <td>". $result['SP_phone']. "</td>
                <td>". $result['SP_address']. "</td>
                <td>". $result['SP_min']. "</td>
                <td>". $result['SP_max']. "</td>
                <td><a href= 'hire.php'><button class='button_1' onclick=''>Hire</button></a></td>
                

           </tbody>";
         }
      }
            else {
            echo "Currently No Plumber is available";
            }
          ?>
          </table>
      </div>
    </div>
  </section>



    <footer>
      <p>EZ life Co. &copy; 2019</p>
    </footer>
  </body>
</html>
