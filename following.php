<html>
    <head>
        <meta charpest="UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="./Resources/styles/salesforce-lightning-design-system.min.css">
        <title>Followings</title>
        <style>
            :root {
                --pink: #fa7952d7;
            }
            .nom{
                text-decoration: none;
                font-family: "Century Gothic", sans-serif;
                color:  #00026b;
                font-size: 25px;
            }
            a:link.back, a:visited.back {
                color:  #00026b;    
                background: #fa795275;    
                text-align: center;    
                text-decoration: none;   
                display: inline-block;    
                font-family: "Century Gothic", sans-serif; 
                font-size: 20px;   
            }
            a:hover.back, a:active.back {
                background:  #fa795275;    
                font-family: "Century Gothic", sans-serif;
            }
            a.back{
                padding: 18px 24px;
            }
            .title{
                position: absolute;
                left: 420px;
                top: 0px;
                font-size: 50px;
                color: #00026b;
                font-family: "Century Gothic", sans-serif;
            }
            .no{
                font-size: 30px;
                color: var(--pink);
                text-align: center;
                padding-top: 30px;
            }
        </style>
    </head>
    <body>
    <?php
    require_once 'connection.php';
    session_start();
    $userId;
    if (!(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1)) {
        header("Location:login.php");
    } else {
        if (isset($_GET['id'])) {
            $userId = $_GET['id'];
            echo "<a href='userpage.php?id=$userId' class='back'>< BACK</a>";
            echo "<div class='title'> Good Food...Good Mood</div>";
            echo "<br/>";
            $query1 = "SELECT ID_USER_FOLLOWEE FROM follow WHERE ID_USER_FOLLOWER= $userId ";
            $res1 = mysqli_query($con, $query1);
            $nbr = mysqli_num_rows($res1);
            for ($i = 0; $i < $nbr; $i++) {
                $row1 = mysqli_fetch_row($res1);
                $query2 = "SELECT FIRST_NAME, LAST_NAME, EMAIL FROM user WHERE ID_USER = $row1[0]";
                $res2 = mysqli_query($con, $query2);
                $row2 = mysqli_fetch_assoc($res2);
                echo "<div> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a class='nom' href='userpage.php?id=$row1[0]'>$row2[FIRST_NAME]&nbsp&nbsp$row2[LAST_NAME] &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp$row2[EMAIL]</a></div>";
                echo "<br/>";
            }
            if($nbr == 0) echo "<div class='no'>no followings</div>";
        }
        else header("Location:index.php");  
    }
    ?>
    </body>
    </html>
