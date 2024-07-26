<head>
    <title>Order</title>
<style>
    a:link.back, a:visited.back {
                color:  #00026b;    
                background: #fa795275;    
                text-align: center;    
                text-decoration: none;   
                display: inline-block;    
                font-family: "Century Gothic", sans-serif;    
            }
            a:hover.back, a:active.back {
                background:  #fa795275;    
                font-family: "Century Gothic", sans-serif;
            }
            a.back{
                padding: 14px 20px;
            }
            * {
                font-family: "Century Gothic", sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                text-decoration: none;
                outline: none;
                text-transform: capitalize;
                transition: all .2s linear;  
            }
            :root {
                --box-radow: 0 .5rem 1rem rgb(255, 255, 255);
            }
            .title {
                position: absolute;
                left: 370px;
                top: 0px;
                font-size: 50px;
                color: #00026b;
                font-family: "Century Gothic", sans-serif;
            }
            .first{
                font-size: 25px;
                color: #00026b;
                font-family: "Century Gothic", sans-serif;
            }
            .infos{
                color: #00026b;
                font-size: 20px;
            }
            a{
                text-decoration: none;
            }
            a:hover{
                text-decoration: none;
            }
            span{
                color: #00026b;
                text-decoration: underline;
                font-size: 22px;
                text-align: center;
            }
            table{
                border: solid #fa795275 2px;
                border-collapse: collapse;
                text-align: center;
                position: absolute;
                left: 500px;
                top: 200px;
                background-color: #fa795275;
                width: 400px;
            }
            body{
                background-color: #eee;
            }
            .desinf{
                font-size: 25px;
                color: #00026b;
                font-family: "Century Gothic", sans-serif;
                padding-left: 10px;
            }
</style>
</head>
<?php
    session_start();
    if(isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1 && $_SESSION['ID_ROLE'] == 2){
        if(isset($_GET['id'])){
            require_once 'connection.php';
            $orderId = $_GET['id'];
            $userId = $_SESSION['ID_USER'];
            $now = date("Y-m-d");
            $query = "SELECT * FROM orders WHERE ID_ORDER = $orderId ";
            $res = mysqli_query($con,$query);
            $nbr = mysqli_num_rows($res);
            if($nbr != 0){
                $row = mysqli_fetch_assoc($res);
                if($row['ID_BUYER'] == $userId){
                    $dateOrder = $row['DATEORDER'];
                    $dateReturn = $row['DATERETURN'];
                    $priceTotal = $row['PRICE_TOTAL'];
                    $query = "SELECT * FROM have_order WHERE ID_ORDER = $orderId AND STATUS <> 'unorder' ";
                    $res = mysqli_query($con,$query);
                    $nbr = mysqli_num_rows($res);
                    echo '<a href="index.php" class="back">< BACK</a>';
                    echo '<div class="title"> Good Food...Good Mood</div>';
                    echo "<table border='5'>
                        <tr>
                            <td class='first'>Recipes</td>";
                            if($dateOrder == $now){
                                echo "<td class='first'>Unorder</td>";
                            }
                        echo "</tr>";
                    for($i=0;$i<$nbr;$i++){
                        $row = mysqli_fetch_assoc($res);
                        $query1 = "SELECT NAME,UNIT_PRICE, ID_RECIPES FROM recipes WHERE ID_RECIPES = $row[ID_RECIPES] ";
                        $res1 = mysqli_query($con,$query1);
                        $row1 = mysqli_fetch_assoc($res1);
                        echo "<tr>";
                        echo "<td class='infos'><a href='recipe-page.php?recipeId=$row1[ID_RECIPES]' ><span>" . $row1['NAME'] . "<span></a><br/>Unit Price : " . $row1["UNIT_PRICE"] . " <br/>Quantity : " . $row["QUANTITY"] . "<br/>Price Total : " . $row["PRICE"] . "</td>";
                        if($dateOrder == $now){
                            echo "<td> <a href='unorder.php?recipeIdOrder= $row1[ID_RECIPES]&&orderId=$orderId'><span>UNORDER</span></a></td>";
                        }
                        echo "</tr>"; 
                    }
                    echo "</table>";
                    echo "<div class='desinf'> <br/>Your total price is $priceTotal with delivery <br/>";
                    echo "You requested this order in $dateOrder <br/>";
                    echo "You will receive the order tomorrow $dateReturn </div>";
                }
                else header("Location:index.php");
            }
            else header("Location:index.php");
        }
        else header("Location:index.php");

 } else header("Location:index.php");
?>