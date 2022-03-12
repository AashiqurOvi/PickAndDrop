<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name ="viewport" content=" width= device-width">
    <title>EZ Life  | Sign Up </title>
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
              <li> <a href="index.html">Home </a> </li>
              <li> <a href="login.php">Log in</li>
              <li class="current"> <a href="signup.php">Sign up</li>
              <li> <a href="about.php">About </a> </li>
            </ul>
          </nav>
          </div>
    </header>

    <section id = "showcase_signup" >
          <div class = "signup-box">
          <h2 >Sign-Up as S.P. </h2>
          <form class="quote" action="sign02.php" method="POST">
            <div class="textbox">
            <br>
              <input type="text" placeholder="Name" name="SP_name">
            </div>
            <div class="textbox">
              <input type="email" placeholder="Email" name="SP_email">
            </div>
            <div class="textbox">
            <input type="password" placeholder="Password" name="SP_pass">
            </div>
            <div class="textbox">
            <input type="text" placeholder="Phone No." name="SP_phone">
            </div>
            <div class="textbox">
            <input type="text" placeholder="NID" name="SP_nid">
            </div>
            <div>
              <h3>Choose Working Fields </h3>
            <label> Electrician </label>
            <input type="Radio" name ="SP_work" value ="Electrician">
            <label> Carpenter </label>
            <input type="Radio" name ="SP_work" value ="Carpenter">
            <label> Plumber </label>
            <input type="Radio" name ="SP_work" value ="Plumber">
            </div>
            <div class="textbox">
            <input type="text" placeholder="Minimum Cost" name="SP_min">
            </div>
            <div class="textbox">
            <input type="text" placeholder="Maximum Cost" name="SP_max">
            </div>
            <div class="textbox">
            <input type="text" placeholder="House No, Block, Road, Area, Dhaka" name="SP_address">
            </div> <br>
            <button class="button_1" type="submit">Submit</button>
          </form>
          </div>

  </section>

    <footer>
      <p>EZ Life Co. &copy; 2019</p>
    </footer>
  </body>
</html>
