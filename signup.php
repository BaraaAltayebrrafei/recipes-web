<html>
<meta charpest="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="./Resources/styles/salesforce-lightning-design-system.min.css">
<title>Sign Up</title>
<head>
  <style>
    * {
      /*font-family: sans-serif;*/
      font-family: "Century Gothic", sans-serif;
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      text-decoration: none;
      outline: none;
      border: none;
      text-transform: capitalize;
      transition: all .2s linear;
    }
    :root {
      --box-radow: 0 .5rem 1rem rgba(0, 0, 0, .1);
    }

    .btn {
      margin-top: 1rem;
      display: inline-block;
      padding: .8rem 3rem;
      font-size: 1.2rem;
      border-radius: .5rem;
      border: 2px solid #fa795275;
      color: #00026b;
      cursor: pointer;
      background: #fa795275;
      box-shadow: 0 8px #fa7952d7;
      /*font-family: "Century Gothic", sans-serif;*/
    }
    .btn:active{
      box-shadow: none;
      transform: translateY(8px);
    }

    .signup-form {
      position: absolute;
      top: 0%;
      right: 33%;
      width: 30rem;
      box-shadow: var(--box-shadow);
      padding: 2rem;
      border-radius: .5rem;
      background: linear-gradient(45deg, #fa7952d7  , transparent);
      text-align: center;
    }

    .signup-form h3 {
      font-size: 2.2rem;
      text-transform: uppercase;
      color:#00026b;
      /*font-family: "Century Gothic", sans-serif;*/
      
    }

    .signup-form .box {
      margin: .7rem 0;
      background: #fa795275;
      border-radius: .5rem;
      padding: 1rem;
      font-size: 1.2rem;
      color: #00026b;
      text-transform: none;
      width: 100%;
    }
    input{
      caret-color: #00026b;
    }
    input , progress{
      accent-color:#00026b;
    }
    .box::placeholder{
      color:  #00026b7a;
      /*font-family: "Century Gothic", sans-serif;*/
    }

    .signup-form p {
      font-size: 1rem;
      padding: .5rem 0;
      color:  #00026b;
      /*font-family: "Century Gothic", sans-serif;*/
    }

    .signup-form p a {
      color: #00026b;
      text-decoration: underline;
    }

    .fbtn {
      background-color: transparent;
      border: none;
      float: left;
      margin-left: 100px;
      border-radius: 4px;
      width: 60px;
    }

    .ggbtn {
      background-color: transparent;
      border: none;
      float: left;
      margin-left: 100px;
      border-radius: 4px;
      width: 60px;
    }

    .img {
      width: 35px;
      height: auto;
      padding: 2px;
    }
    
   
    ::-webkit-scrollbar{
        width: 10px;
    }
    ::-webkit-scrollbar-track{
        background: transparent;
    }
    ::-webkit-scrollbar-thumb{
        background: #fa7952d7;
    }
    ::-webkit-scrollbar-thumb:hover{
        background: #fa795275;
    }
    .error{
      color:  #ff0000;
      font-size: 20px;
      /*font-family: "Century Gothic", sans-serif;*/
    }
  </style>
</head>

<body>
  <?php
  require_once 'connection.php';
  $failed1 = false;
  $failed2 = false;
  if (isset($_POST['fname']) && $_POST['fname'] != "" && isset($_POST['lname']) && $_POST['lname'] != "" && isset($_POST['email']) && $_POST['email'] != "" && isset($_POST['pass']) && $_POST['pass'] != "" && isset($_POST['confirm']) && $_POST['confirm'] != "" && isset($_POST['adress']) && $_POST['adress'] != "") {
    if ($_POST['pass'] == $_POST['confirm']) {
      $fname = $_POST['fname'];
      $lname = $_POST['lname'];
      $email = $_POST['email'];
      $pass = $_POST['pass'];
      $adress = $_POST['adress'];
      $query = "SELECT * FROM adress WHERE adress = '$adress' ";
      $res = mysqli_query($con,$query);
      $row = mysqli_fetch_assoc($res);
      $id_adress = $row['ID_ADRESS'];
      $query = "SELECT email FROM user WHERE email='" . $email . "'";
      $res = mysqli_query($con, $query);
      $nbrows = mysqli_num_rows($res);
      if ($nbrows == 0) {
        $query2 = "INSERT INTO user VALUES (NULL,'$id_adress',2,'$fname','$lname','$email','$pass')";
        $res2 = mysqli_query($con, $query2);
        if ($res2) {
          header("Location: login.php");
        }
      } 
      else {
        $failed1 = true;
      }
    } 
    else {
      $failed2 = true;
    }
  }
  ?>
  <form class="signup-form" action="signup.php" method="POST">
    <h3>Signup now</h3>

    <?php
    if ($failed1) {
      echo '<div class="error">Account Already Exists</div>';
    }
    if ($failed2) {
      echo '<div class="error">Failed To Sign Up</div>';
    }
    ?>

    <input type="text" name="fname" placeholder="First name" class="box" required />
    <input type="text" name="lname" placeholder="Last name" class="box" required />
    <input type="email" name="email" placeholder="Your Email" class="box" required />
    <input type="password" name="pass" placeholder="Password" class="box" required />
    <input type="password" name="confirm" placeholder="Confirm Password" class="box" required />
    <select name="adress" class="box" required>
      <?php 
        $query = "SELECT adress FROM ADRESS ";
        $res = mysqli_query($con,$query);
        $nbr = mysqli_num_rows($res);
        for($i = 0; $i<$nbr ; $i++){
          $row = mysqli_fetch_assoc($res);
          echo "<option>$row[adress]</option>";
        }
      ?>
    </select>
    <input type="reset" value="Clear" class="btn" />
    <input type="submit" value="Submit" class="btn" />
    <br /><br />
    <p>already have an account? <a href="login.php"> login here</a></p>
    <br /><br />
    <a class="fbtn" title="Sign up with Facebook" href="https://en-gb.facebook.com/">
      <img src="img/fb.png" class="img" />
    </a>
    <a class="ggbtn" title="Sign up with Google" href="https://accounts.google.com/">
      <img src="img/google.png" class="img" />
    </a>
  </form>
</body>

</html>