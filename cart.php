<html>
    <body>
        <a href="index.php" class="back">< BACK</a>
        <div class='title'> Good Food...Good Mood</div>
<?php
session_start();
require_once 'connection.php';
if (!(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1)) {
    header("Location:login.php");
}
else if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2 && isset($_SESSION['cartItems']) && sizeof($_SESSION['cartItems']) != 0) {
    $userId = $_SESSION['ID_USER']; //id buyer
?>
            <form method="post" action="cart.php" class="form">
                <table >
                    <tr>
                        <td colspan='2' align ='center'><a href='cart.php?deleteAll="true"' class="btn">Delete All <br/></a></td>
                    </tr>
                    <?php
                    $dataitems = array(); //id des vendeurs
                    $newCartItems = array();
                        foreach($_SESSION['cartItems'] as $row){
                                if (($row['id_vend'] == end($dataitems)) || (in_array($row['id_vend'], $dataitems))) continue;
                                $delivery = $row['delivery_price'];
                                if(!(in_array($row['id_vend'], $dataitems)) ){
                                    array_push($dataitems, $row['id_vend']);
                                    $query = "SELECT FIRST_NAME ,LAST_NAME FROM user  WHERE ID_USER  = $row[id_vend]";
                                    $res = mysqli_query($con , $query);
                                    $row = mysqli_fetch_row($res);
                                    echo"<tr> <td colspan='2' align='center' class='name'><br/> $row[0] $row[1] &nbsp;&nbsp;<span>Delivery Price : $delivery $ </span></td></tr>";
                                    if(!isset($tabDelivery)){
                                        $tabDelivery =[];
                                    }
                                    array_push($tabDelivery,$delivery);
                                }
                                foreach($_SESSION['cartItems'] as $row){
                                    if($row['id_vend'] == end($dataitems)){
                                        echo "<tr>";
                                        echo "<td class='infos'><a href= 'recipe-page.php?recipeId= $row[recipeId]' class='nom'>" ."" .$row['name'] ."</a><br/>Unit Price : " . $row["unit_price"] . " <br/>Quantity : " . $row["qty"] . "<br/>Price Total : " . $row["price"] ." <br/><a href='cart1.php?recipeId=$row[recipeId]' class='update'> &nbsp &nbsp &nbspUPDATE  &nbsp &nbsp &nbsp</a></td>";
                                        echo "<td align='center'><a href='cart.php?recipeId=$row[recipeId]' class='delete'>&#10006;</a></td>";
                                        echo "</tr>";
                                    }
                                } 
                            }
                    echo "</table>";
                    echo "<br/><br/>";
                    echo "<input type='submit' name='buyAll' value='Buy All' class='btn'/>";
                    echo "</form></body></html>";
} else {
    echo '<div class="no">You didn\'t enter any recipe in cart</div>';
}
?>
<?php
    if (isset($_POST['buyAll']) && sizeof($_SESSION['cartItems']) != 0) {
        $total = 0.0;
        for ($i = 0; $i < sizeof($_SESSION['cartItems']); $i++) {
            $row = $_SESSION['cartItems'][$i];
            $total = $total + $row['price'];
        }
        for($i = 0;$i < sizeof($tabDelivery); $i++){
            $total = $total + $tabDelivery[$i];
        }
        $now = date('Y-m-d');
        $time = strtotime($now) + 24 * 60 * 60;
        $nextDay = date('Y-m-d', $time);
        $query1 = "INSERT INTO orders VALUES (NULL, '$userId' ,'$now', '$nextDay','$total') ";
        $res1 = mysqli_query($con, $query1);
        $orderId = mysqli_insert_id($con);
        for ($i = 0; $i < sizeof($_SESSION['cartItems']); $i++) {
            $row = $_SESSION['cartItems'][$i];
            $query = "INSERT INTO have_order (ID_ORDER,ID_RECIPES,QUANTITY,PRICE,STATUS) VALUES ('$orderId','$row[recipeId]','$row[qty]','$row[price]','order') ";
            $res = mysqli_query($con, $query);
            $query2 = "INSERT INTO notifications (ID_ORDER,ID_RECIPES,ID_USER,DATE_NOTIFICATION,TYPE) VALUES ('$orderId','$row[recipeId]','$row[id_vend]','$now','order') ";
            $res2 = mysqli_query($con,$query2);
            if ($res && $res2) 
                continue;
            else
                break;
        }
        if ($res1 && $i >= sizeof($_SESSION['cartItems'])) {
            $_SESSION['cartItems'] = [];
            header("Location:order.php?id=$orderId");
        }
        echo "</body></html>";
    }
    if(isset($_GET['recipeId'])){
        $recipeIdToRemove = $_GET['recipeId'];
        foreach ($_SESSION['cartItems'] as $row) {
            if ($row['recipeId'] != $recipeIdToRemove) {
                $newCartItems[] = $row;
            }
        }
        $_SESSION['cartItems'] = $newCartItems;
        header("Location:cart.php");
    }
    if(isset($_GET['deleteAll'])){
        $_SESSION['cartItems'] = [];
        header("Location:cart.php");
    }
?>
<head>
    <title>Cart</title>
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
            .title {
                position: absolute;
                left: 420px;
                top: 0px;
                font-size: 50px;
                color: #00026b;
                font-family: "Century Gothic", sans-serif;
            }
            body {
                background: #eee;
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
            }

            .no{
                font-size: 30px;
                color: #00026b;
                text-align: center;
                padding-top: 100px;
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
            .form{
                position: absolute;
                top: 15%;
                right: 32%;
                box-shadow: var(--box-shadow);
                padding: 2rem;
                border-radius: .5rem;
                background:linear-gradient(45deg, #fa7952d7  , transparent);
                text-align: center;
                width: 535px;
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
                text-align: center;
                text-decoration: none;
            }
            .btn:active{
                box-shadow: none;
                transform: translateY(8px);
            }
            input{
                caret-color: #00026b;
            }
            input , progress{
                accent-color:  #00026b;
            }
            .first{
                color: #00026b;
                font-family: "Century Gothic", sans-serif;
                font-size: 25px;
            }
       /*     table{
                
            }*/
            .name{
                color: #00026b;
                font-size: 25px;
                text-decoration: underline;
            }
            .nom{
                color: #00026b;
                font-size: 22px;
            }
            .infos{
                color: #00026b;
                font-size: 20px;
            }
            .update{
                border: solid #fa7952d7 3px;
            }
            .delete{
                font-size: 30px;
                color: #00026b;
            }
    </style>