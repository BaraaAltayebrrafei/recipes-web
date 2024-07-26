<head>
    <title>Notifications</title>
</head>
<?php
session_start();
if (!(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2)) {
    header('location:index.php');
} else {
    $notificationData = [];
    $haveorderss = [];
    $unorderss = [];
    $userId = $_SESSION['ID_USER'];
    require_once "connection.php";
    $query = "SELECT * FROM notifications WHERE ID_USER = $userId ORDER BY DATE_NOTIFICATION DESC ";
    $res = mysqli_query($con, $query);
    $nbr = mysqli_num_rows($res);
    if ($nbr == 0)
        echo "<div class='no'>No results</div>";
    $dateArray = array();
    echo '<a href="index.php" class="back">< BACK</a>';
    echo '<div class="title"> Good Food...Good Mood</div>';
    echo "<div class='all'>";
    for ($i = 0; $i < $nbr; $i++) {
        $row = mysqli_fetch_assoc($res);
        $notificationId = $row['ID_NOTIFICATION'];
        if (!in_array($notificationId, $notificationData)) {
            array_push($notificationData, $notificationId);
            $userId = $row['ID_USER'];
            if ($row['OPENED'] == 0)
                $open = "false";
            else
                $open = "true";
            $orderId = $row['ID_ORDER'];
            $type = $row['TYPE'];
            $recipeId = $row['ID_RECIPES'];
            $commentId = $row['ID_COMMENT'];
            $follower = $row['ID_FOLLOWER'];
            $date = $row['DATE_NOTIFICATION'];
            if (!(in_array($date, $dateArray))) {
                array_push($dateArray, $date);
                echo "<div class='info'>$date</div>";
            }
            if ($type == 'like') {
                $query2 = "SELECT recipes.NAME FROM likes, recipes WHERE likes.ID_RECIPES = $recipeId AND recipes.ID_RECIPES = likes.ID_RECIPES";
                $res2 = mysqli_query($con, $query2);
                $row2 = mysqli_fetch_assoc($res2);
                echo "<div class='$open'>One more like on your post<a href='recipe-page.php?recipeId=$recipeId'> $row2[NAME]</a>. </div><br/>";
            } elseif ($type == 'comment') {
                $query2 = "SELECT user.FIRST_NAME, user.LAST_NAME, recipes.NAME/*, comment_user.TEXT*/
                                FROM comment_user, user, recipes
                                WHERE comment_user.ID_USER = user.ID_USER
                                AND comment_user.ID_RECIPES = recipes.ID_RECIPES
                                AND comment_user.ID_COMMENT = '$commentId'";
                // AND comment_user.DATE_COMMENT = '$date'";
                $res2 = mysqli_query($con, $query2);
                $nbr2 = mysqli_num_rows($res2);
                for ($j = 0; $j < $nbr2; $j++) {
                    $row2 = mysqli_fetch_assoc($res2);
                    echo "<div class='$open'>$row2[FIRST_NAME] $row2[LAST_NAME] commented on your post <a href='recipe-page.php?recipeId=$recipeId'>$row2[NAME]</a>. </div><br/>";
                }
            } elseif ($type == 'follow') {
                $query2 = "SELECT user.FIRST_NAME, user.LAST_NAME 
                                FROM user, follow
                                WHERE follow.ID_USER_FOLLOWER = user.ID_USER
                                AND follow.ID_USER_FOLLOWEE = $userId
                                AND follow.ID_USER_FOLLOWER = $follower
                                /*AND follow.DATE_FOLLOW = '$date'*/";
                $res2 = mysqli_query($con, $query2);
                $nbr2 = mysqli_num_rows($res2);
                for ($j = 0; $j < $nbr2; $j++) {
                    $row2 = mysqli_fetch_assoc($res2);
                    echo "<div class='$open'>$row2[FIRST_NAME] $row2[LAST_NAME] followed you.</div><br/>";
                }
            } elseif ($type == 'order') {
                $query2 = " SELECT user.FIRST_NAME, user.LAST_NAME, user.ID_ADRESS , orders.DATEORDER, orders.ID_BUYER, have_order.ID_RECIPES as ID_RECIPES, have_order.QUANTITY, have_order.PRICE
                                FROM user, orders, have_order
                                WHERE orders.ID_ORDER = have_order.ID_ORDER
                                AND orders.ID_ORDER = '$orderId'
                                AND orders.DATEORDER = '$date'
                                AND have_order.STATUS = '$type'
                                AND user.ID_USER = orders.ID_BUYER ";
                $res2 = mysqli_query($con, $query2);
                $nbr2 = mysqli_num_rows($res2);
                for ($j = 0; $j < $nbr2; $j++) {
                    $row2 = mysqli_fetch_assoc($res2);
                    if (!in_array($orderId . $row2['ID_RECIPES'], $haveorderss)) {
                        array_push($haveorderss, $orderId . $row2['ID_RECIPES']);
                        $adressId = $row2['ID_ADRESS'];
                        $query1 = "SELECT ID_USER,NAME FROM recipes WHERE ID_RECIPES = $row2[ID_RECIPES] ";
                        $res1 = mysqli_query($con, $query1);
                        $row1 = mysqli_fetch_assoc($res1);
                        $queryAdress = "SELECT 	ADRESS FROM adress WHERE ID_ADRESS = '$adressId' ";
                        $resAdress = mysqli_query($con, $queryAdress);
                        $rowAdress = mysqli_fetch_row($resAdress);
                        $adress = $rowAdress[0];
                        if ($row1['ID_USER'] == $userId) {
                            echo "<div class='$open'>$row2[FIRST_NAME] $row2[LAST_NAME] ordered $row2[QUANTITY] of <a href='recipe-page.php?recipeId=$recipeId' class='a'> $row1[NAME]</a>
                                <br/> ADRESS: $adress <br/>TOTAL AMOUNT: $row2[PRICE] $ without delivery.</div><br/>";
                        }
                    }
                }
            } elseif ($type == 'unorder') {
                $query2 = "SELECT user.FIRST_NAME, user.LAST_NAME, orders.DATEORDER, orders.ID_BUYER, have_order.ID_RECIPES, have_order.QUANTITY,have_order.STATUS
                                FROM user, orders, have_order
                                WHERE orders.ID_ORDER = have_order.ID_ORDER
                                AND orders.ID_ORDER = '$orderId'
                                AND orders.DATEORDER = '$date'
                                AND have_order.STATUS = '$type'
                                AND user.ID_USER = orders.ID_BUYER ";
                $res2 = mysqli_query($con, $query2);
                $nbr2 = mysqli_num_rows($res2);
                for ($j = 0; $j < $nbr2; $j++) {
                    $row2 = mysqli_fetch_assoc($res2);
                    if (!in_array($orderId . $row2['ID_RECIPES'], $unorderss)) {
                        array_push($unorderss, $orderId . $row2['ID_RECIPES']);
                        $query1 = "SELECT ID_USER,NAME FROM recipes WHERE ID_RECIPES = $row2[ID_RECIPES] ";
                        $res1 = mysqli_query($con, $query1);
                        $row1 = mysqli_fetch_assoc($res1);
                        if ($row1['ID_USER'] == $userId) {
                            echo "<div class='$open'>$row2[FIRST_NAME] $row2[LAST_NAME] canceled $row2[QUANTITY] of <a href='recipe-page.php?recipeId=$recipeId' class='a'> $row1[NAME]</a>.</div><br/>";
                        }
                    }    
                }
            }
            echo '<hr/>';
        }
    }
}
$query3 = "SELECT ID_NOTIFICATION,  OPENED FROM notifications WHERE ID_USER = $userId AND OPENED = 0 ";
$res3 = mysqli_query($con, $query3);
$nbr3 = mysqli_num_rows($res3);
for ($i = 0; $i < $nbr3; $i++) {
    $row3 = mysqli_fetch_assoc($res3);
    $notificationId = $row3['ID_NOTIFICATION'];
    $query4 = "UPDATE notifications SET OPENED= 1 WHERE ID_NOTIFICATION = $notificationId ";
    $res4 = mysqli_query($con, $query4);
}
echo "</div>";
?>
<style>
    .no {
        font-size: 30px;
        color: #00026b;
        text-align: center;
        padding-top: 100px;
    }

    a:link.back,
    a:visited.back {
        color: #00026b;
        background: #fa795275;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-family: "Century Gothic", sans-serif;
    }

    a:hover.back,
    a:active.back {
        background: #fa795275;
        font-family: "Century Gothic", sans-serif;
    }

    a.back {
        padding: 14px 20px;
        position: absolute;
        top: 5px;
        left: 5px;
    }

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

    .all {
        position: absolute;
        top: 70px;
        padding-left: 10px;
    }

    .title {
        position: absolute;
        left: 370px;
        top: 0px;
        font-size: 50px;
        color: #00026b;
        font-family: "Century Gothic", sans-serif;
    }

    .info {
        font-size: 25px;
        color: #00026b;
        font-family: "Century Gothic", sans-serif;
    }

    .false {
        color: red;
        text-align: center;
        font-size: 25px;
    }

    .true {
        text-align: center;
        font-size: 25px;
        color: #00026b;
    }

    .a {
        color: #00026b;
        text-decoration: underline;
    }

    table {
        border-collapse: collapse;
        border: solid #00026b 2px;
        position: absolute;
        top: 60px;
        left: 10px;
    }
</style>