<html>
<meta charpest="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="./Resources/styles/salesforce-lightning-design-system.min.css">
<title>Log In</title>
<head>
  <style>
    * {
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
      --box-radow: 0 .5rem 1rem rgb(255, 255, 255);
    }

    .btn {
      margin-top: 1rem;
      display: inline-block;
      padding: .8rem 3rem;
      font-size: 1.7rem;
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

    .login-form {
      position: absolute;
      top: 15%;
      right: 33%;
      width: 30rem;
      box-shadow: var(--box-shadow);
      padding: 2rem;
      border-radius: .5rem;
      background:linear-gradient(45deg, #fa7952d7  , transparent);
      text-align: center;
    }

    .login-form h3 {
      font-size: 2.5rem;
      text-transform: uppercase;
      color: #00026b;
      /*font-family: "Century Gothic", sans-serif;*/
    }

    .login-form .box {
      margin: .7rem 0;
      background:  #fa795275;
      border-radius: .5rem;
      padding: 1rem;
      font-size: 1.6rem;
      color:   #00026b;
      text-transform: none;
      width: 100%;
    }
    input{
      caret-color: #00026b;
    }
    input , progress{
      accent-color:  #00026b;
    }
    .box::placeholder{
      color: #00026b7a;
      /*font-family: "Century Gothic", sans-serif;*/
    }

    .login-form p {
      font-size: 1.2rem;
      padding: .5rem 0;
      color:  #00026b;
      /*font-family: "Century Gothic", sans-serif;*/
    }

    .login-form p a {
      color: #00026b;
      text-decoration: underline;
    }
    .title{
      text-align: center;
      font-size: 50px;
      color: #00026b;
      /*font-family: "Century Gothic", sans-serif;*/
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
  $failed = false;
  if (isset($_POST['email']) && $_POST['email'] != "" && isset($_POST['pass']) && $_POST['pass'] != "") {
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $query = 'SELECT * FROM user WHERE email="' . $email . '" AND password="' . $pass . '"';
    $res = mysqli_query($con, $query);
    $nbrows = mysqli_num_rows($res);
    if ($nbrows == 0) {
      $failed = true;
    }
    if ($nbrows != 0) {
      $row = mysqli_fetch_assoc($res);
      session_start();
      $_SESSION['islogin'] = 1;
      $_SESSION['FNAME']=$row['FIRST_NAME'];
      $_SESSION['EMAIL'] = $email;
      $_SESSION['ID_USER'] = $row['ID_USER'];
      $_SESSION['ID_ROLE'] = $row['ID_ROLE'];
      $_SESSION['ID_ADRESS'] = $row['ID_ADRESS'];
      header("Location:index.php");
    }
  }
  ?>
  <div class='title'> Good Food...Good Mood</div>
  <form class="login-form" action="login.php" method="post">
    <h3>login now</h3>

    <?php
    if ($failed) {
      echo '<div class="error">Email or Password Wrong</div>';
    }
    ?>
    <input type="email" name="email" placeholder="Your Email" class="box" required />
    <input type="password" name="pass" placeholder="Password" class="box" required />
    <input type="submit" name="submitBtn" value="Login" class="btn" />
    <br /><br />
    <p>don't have an account? <a href="signup.php"> signup here</a></p>
  </form>
</body>

</html>